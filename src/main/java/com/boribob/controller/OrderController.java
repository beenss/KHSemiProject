package com.boribob.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.boribob.dao.MemberDAO;
import com.boribob.dao.OrderDAO;
import com.boribob.dao.PetDAO;
import com.boribob.dao.StatisticsDAO;
import com.boribob.dao.SubscribeDAO;
import com.boribob.dto.MemberDTO;
import com.boribob.dto.OrderDTO;
import com.boribob.dto.PetDTO;
import com.boribob.dto.StatisticsDTO;
import com.boribob.dto.SubscribeDTO;




@WebServlet("*.order")
public class OrderController extends HttpServlet {
	OrderDAO orderDAO = new OrderDAO();
	

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();

		request.setCharacterEncoding("utf-8");

		// 로그인 검증 로그인이 되었으면 아래 페이지로 이동
		if (uri.equals("/form.order")) { // 1. 주문정보 입력페이지로 이동

			HttpSession session = request.getSession();
			String memberId = ((MemberDTO)session.getAttribute("loginSession")).getId();
			// 세션값으로 회원id를 받고 회원 id로 회원정보랑 구독 정보를 OrderInfoDTO에 담아서 뷰에 뿌려주기

//			String memberId = "bori@gmail.com";// 세션으로 받아오는 아이디 -> 임시회원 아이디

			try {
				MemberDAO memberDAO = new MemberDAO();
				MemberDTO memberDTO = memberDAO.selectById(memberId);

				// test용 임시 객체
//				PetDTO petDto = new PetDTO("id2", "보리", 1, 10, 5, "왕", "cat");
//				request.setAttribute("petDto", petDto);

//				SubscribeDTO subscribeDto = new SubscribeDTO("21", 1, null, 6);
//				request.setAttribute("subscribeDto", subscribeDto);

				request.setAttribute("memberDTO", memberDTO);
			} catch (Exception e) {

				e.printStackTrace();
			}

			request.getRequestDispatcher("/order/orderForm.jsp").forward(request, response);

		} else if (uri.equals("/insert.order")) { // 2.주문정보 저장
			HttpSession session = request.getSession();
			response.setContentType("application/x-json; charset=UTF-8");
			request.setCharacterEncoding("utf-8");

			String memberId = "bori@gmail.com";

			try { // 주문정보 입력
				MemberDAO memberDAO = new MemberDAO();
				MemberDTO memberDTO = memberDAO.selectById(memberId);
				// 주문정보

				String id = memberDTO.getId();
				String orderName = request.getParameter("orderName"); // 수취인 이름
				String orderPhone = request.getParameter("orderPhone"); // 수취인 연락처
				String orderPost = request.getParameter("orderPost"); // 수취인 우편번호
				String orderRoadAddress = request.getParameter("orderRoadAddress"); // 수취인 도로명 주소
				String orderDetailAddress = request.getParameter("orderDetailAddress"); // 수취인 상세주소
				String orderMsg = request.getParameter("orderMsg"); // 주문 메시지
				String postMsg = request.getParameter("postMsg"); // 배송메시지
				int productCode = Integer.parseInt(request.getParameter("productCode")); // 상품코드
				String subscribeStart = null;
				int subscribeTerm = Integer.parseInt(request.getParameter("subscribeTerm")); // 구독기간
				int price = Integer.parseInt(request.getParameter("totalPrice")); // 가격
				

				// 결제정보
				String paySuccess = request.getParameter("paySuccess"); // 결제성공여부
				String payId = request.getParameter("payId"); // 고유 아이디
				String payTradeId = request.getParameter("payTradeId"); // 상점 거래 Id
				String payAmount = request.getParameter("payAmount"); // 결제 금액
				String payApproval = request.getParameter("payApproval"); // 카드승인 번호

				String deliveryStatus = "배송준비중";
				String expectedArrival = "배송준비중";
				String deliveryCount = "1회차";
				
				//
				String petName = request.getParameter("petName");
				int petAge = Integer.parseInt(request.getParameter("petAge"));
				int petAllergy = Integer.parseInt(request.getParameter("petAllergy"));
				int petWeight = Integer.parseInt(request.getParameter("petWeight"));
				String petKind = request.getParameter("petKind");
				String petType = request.getParameter("petType");
				
				if (paySuccess.equals("ok")) {
					OrderDTO orderDTO = new OrderDTO(id, orderName, orderPhone, orderPost, orderRoadAddress,
							orderDetailAddress, orderMsg, postMsg, productCode, null, subscribeTerm, price,
							paySuccess, payId, payTradeId, payAmount, payApproval, deliveryStatus, expectedArrival,
							deliveryCount);

					PetDTO petDTO = new PetDTO("id10", petName, petAge, petAllergy, petWeight, petKind, petType);

					SubscribeDTO subscribeDTO = new SubscribeDTO("id10", productCode, null, subscribeTerm);

					StatisticsDTO statisticsDTO = new StatisticsDTO(productName(productCode), id, price, subscribeTerm,
							Integer.parseInt(payAmount));

					OrderDAO orderDao = new OrderDAO();  // 주문정보 저장 
					int rsOrderInsert = orderDao.insertOrder(orderDTO);  

					StatisticsDAO statisticsDAO = new StatisticsDAO();  // 통계정보 저장 
					int rsSalesInsert = statisticsDAO.insertSales(statisticsDTO);

					SubscribeDAO subscribeDAO = new SubscribeDAO();  // 구독정보 저장  
					subscribeDAO.insert(subscribeDTO);

					PetDAO petDAO = new PetDAO();

					int petRs = petDAO.insert(petDTO);
					System.out.println(petRs);

					response.sendRedirect("/complete.order");
				} else {
					System.out.println("결제 실패");
					response.sendRedirect("/");
				}

			} catch (Exception e) {
				System.out.println("무었인가 오류다 ");
				e.printStackTrace();
				response.sendRedirect("/");
			}

		} else if (uri.equals("/complete.order")) {// 4.주문 완료 페이지

			request.getRequestDispatcher("/order/orderComplete.jsp").forward(request, response);

		} else if (uri.equals("/list.order")) {// 주문 리스트
			HttpSession session = request.getSession();

			try {
				String memberId = "bori@gmail.com";
				ArrayList<OrderDTO> orderList = orderDAO.findListById(memberId);

				request.setAttribute("orderList", orderList);
				request.getRequestDispatcher("/order/orderListV1.jsp").forward(request, response);

			} catch (Exception e) {

				e.printStackTrace();
			}

		} else if (uri.equals("/detail.order")) {
			Integer orderId = Integer.parseInt(request.getParameter("orderId"));

			OrderDTO detailDTO;
			try {
				detailDTO = orderDAO.findByOrderId(orderId);
				request.setAttribute("detailDTO", detailDTO);
				request.getRequestDispatcher("/order/orderDetailV1.jsp").forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

	}

	public String productName(int productCode) {
		if (productCode == 1) {
			return "boriBab";
		} else if (productCode == 2) {
			return "babiBab";
		} else {
			return "non";
		}

	}
}
