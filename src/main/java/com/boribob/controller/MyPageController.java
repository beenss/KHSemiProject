
package com.boribob.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.boribob.dao.MemberDAO;
import com.boribob.dao.PetDAO;
import com.boribob.dao.ProductDAO;
import com.boribob.dao.SubscribeDAO;
import com.boribob.dto.MemberDTO;
import com.boribob.dto.PetDTO;
import com.boribob.dto.ProductDTO;
import com.boribob.dto.SubscribeDTO;
import com.boribob.utils.EncryptionUtils;

@WebServlet("*.my")
public class MyPageController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doAction(request, response);
	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		request.setCharacterEncoding("utf-8");
		System.out.println("uri : " + uri);

		if (uri.equals("/mypage.my")) { // 마이페이지의 첫페이지는 항상 나의 구독페이지

			HttpSession session = request.getSession();
			MemberDTO dto = (MemberDTO) session.getAttribute("loginSession");
			String id = dto.getId();
			
			
			SubscribeDAO dao = new SubscribeDAO();
			ProductDAO pDao = new ProductDAO();
			PetDAO petDao = new PetDAO(); 
			
			try{
				  SubscribeDTO subscribe =  dao.selectSubscribesById(id);  
				 
				  
				  if(dao.isSubscribedId(id)) { 
					   int productCode = subscribe.getProductCode();  // 구독 상품의 상품코드로 해당 상품의 정보 뽑아오기
					   ProductDTO pDto = pDao.selectByCode(productCode);
					   PetDTO petDto = petDao.selectPetinfoById(id); 
					   System.out.println(petDto.toString());
					   
					  request.setAttribute("subscribe", subscribe); // 구독 중이라면 SubscribeDTO세팅
					  request.setAttribute("product",pDto);  // 해당 구독 상품의 ProductDTO 세팅
					  request.setAttribute("member", dto);
					  request.setAttribute("pet", petDto);
					  
				   } else { 
					   
					   request.setAttribute("member", dto);
					   request.setAttribute("subscribe", null);	// 구독하고 있지 않다면 null 값 세팅
				   
				   }
				
			}catch(Exception e) {e.printStackTrace();
			}

			request.getRequestDispatcher("/mypage/mySubscribe.jsp").forward(request, response);

		} else if (uri.equals("/withdrawal.my")) { // 회원탈퇴 jsp로 이동

			HttpSession session = request.getSession();
			MemberDTO dto = (MemberDTO)session.getAttribute("loginSession");
			String id = dto.getId();
			request.setAttribute("dto", dto);
			request.getRequestDispatcher("/mypage/withdrawal.jsp").forward(request, response);

		} else if (uri.equals("/withdrawalProc.my")) { // 회원탈퇴  전 비밀번호 확인
			// 비밀번호 입력받기
			String withdrawPw = request.getParameter("withdrawPw");
			System.out.println(withdrawPw);
			
			MemberDAO dao = new MemberDAO();
			
			try {
				withdrawPw = EncryptionUtils.getSHA512(withdrawPw);

				HttpSession session = request.getSession();
				MemberDTO dto = (MemberDTO)session.getAttribute("loginSession");
				String id = dto.getId();
				
				MemberDTO mDto = dao.selectById(id);
				 
				
				
				if (withdrawPw.equals(mDto.getPassword())) { // 비밀번호 비교

					response.getWriter().append("ok");
				} else {
					response.getWriter().append("no");
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (uri.equals("/withdrawalProcReal.my")) { // 회원탈퇴 요청

			// 탈퇴 여부 넘겨받기 -> confirm에서 확인 버튼을 눌렀다면 "yes"값 넘겨 받기
			String confirm = request.getParameter("confirm");
			System.out.println(confirm);
			MemberDAO dao = new MemberDAO();

			try {

				HttpSession session = request.getSession();
				MemberDTO dto = (MemberDTO) session.getAttribute("loginSession");

				if (confirm.equals("yes")) {

					int rs = dao.delete(dto.getId());
					if (rs > 0) {
						System.out.println("데이터삭제 성공");
						
						session.invalidate();
						
					} else {
						System.out.println("데이터삭제 실패");
					}
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if(uri.equals("/update.my")) { // 회원정보 수정 jsp로 이동
			
			HttpSession session = request.getSession();
			MemberDTO dto = (MemberDTO) session.getAttribute("loginSession");
			String id = dto.getId();
			MemberDAO dao = new MemberDAO();
			
			
			try {
				String phone1 = dao.phone1(id);
				String phone2 = dao.phone2(id);
				
				request.setAttribute("dto", dto);
				request.setAttribute("phone1", phone1);
				request.setAttribute("phone2", phone2);
				
			}catch(Exception e){e.printStackTrace();
			}
			
			request.getRequestDispatcher("/mypage/memberUpdate.jsp").forward(request, response);
	
		}else if(uri.equals("/updateProc.my")) { // 회원정보 수정
			HttpSession session = request.getSession();
			MemberDTO dto = (MemberDTO) session.getAttribute("loginSession");
			String id = dto.getId();
			String password = request.getParameter("password");
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			String post = request.getParameter("post");
			String roadAddr = request.getParameter("roadAddress");
			String detailAddr = request.getParameter("detailAddress");
			
			MemberDAO dao= new MemberDAO();
			
			
			
			try {

				password = EncryptionUtils.getSHA512(password);
				MemberDTO mDto = new MemberDTO(id, password, name, post, roadAddr, detailAddr, phone);
				int rs = dao.update(mDto);
				if(rs>0) {
						request.getSession().setAttribute("loginSession", mDto);			
					System.out.println("회원 정보수정 성공");
					response.sendRedirect("/mypage.my"); // 회원정보 수정완료 후 마이페이지 메인으로 이동
				}
				
			}catch(Exception e) {e.printStackTrace();
			}

		}	
		else if(uri.equals("/orderList.my")) {  // 주문 내역 확인하기
			
			response.sendRedirect("/list.order");
		}


	}

}


















