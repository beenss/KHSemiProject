package com.boribob.controller;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.boribob.dao.AdminDAO;
import com.boribob.dao.BlacklistDAO;
import com.boribob.dao.FileDAO;
import com.boribob.dao.InquiryDAO;
import com.boribob.dao.MemberDAO;
import com.boribob.dao.OrderDAO;
import com.boribob.dao.ProductDAO;
import com.boribob.dao.ReviewDAO;
import com.boribob.dto.BlacklistDTO;
import com.boribob.dto.InquiryDTO;
import com.boribob.dto.MemberDTO;
import com.boribob.dto.OrderDTO;
import com.boribob.dto.ProductDTO;
import com.boribob.dto.ReviewDTO;
import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("*.admin")
public class AdminController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		
		if(uri.equals("/login.admin")) { //로그인 요청
			String managerId = request.getParameter("managerId");
			String managerPw = request.getParameter("managerPw");
			System.out.println(managerId+managerPw);
			
		AdminDAO dao = new AdminDAO();
		  try {
		         if(dao.isLoginOk(managerId, managerPw)) {
		            System.out.println("로그인성공");
		            request.setAttribute("rs", true);
					HttpSession session = request.getSession();
					session.setAttribute("adminSession", managerId);
					request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
		         }else {
		        	 System.out.println("로그인실패");
					 request.setAttribute("rs", false);
					 request.getRequestDispatcher("/admin/adminLogin.jsp").forward(request, response);
		         }
		         
			}catch(Exception e) {
				e.printStackTrace();
			}
		}	
		else if(uri.equals("/member.admin")) { //member 리스트 불러오기
			MemberDAO dao =new MemberDAO();
			try {
				ArrayList<MemberDTO> list = dao.selectAll();
				request.setAttribute("list",list);
			}catch(Exception e){
				e.printStackTrace();
			}request.getRequestDispatcher("/admin/adminMember.jsp").forward(request, response);			
		}else if(uri.equals("/allMember.admin")) {
			MemberDAO dao =new MemberDAO();
			try {
				ArrayList<MemberDTO> list = dao.selectAll();
				Gson gson = new Gson();
				String result = gson.toJson(list);
				System.out.println(result);
				response.getWriter().append(result);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(uri.equals("/findMember.admin")) {
			AdminDAO admindao =new AdminDAO();
			try {
				String id = request.getParameter("id");
				ArrayList<MemberDTO> list = admindao.selectById(id);
				Gson gson = new Gson();
				String result = gson.toJson(list);
				System.out.println(result);
				response.getWriter().append(result);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(uri.equals("/subMember.admin")) {
			AdminDAO admindao = new AdminDAO();
			try {
				ArrayList<MemberDTO> list = admindao.findSubMem();
				Gson gson = new Gson();
				String result = gson.toJson(list);
				System.out.println(result);
				response.getWriter().append(result);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(uri.equals("/notSubMember.admin")) {
			AdminDAO admindao = new AdminDAO();
			try {
				ArrayList<MemberDTO> list = admindao.findNOtSubMem();
				Gson gson = new Gson();
				String result = gson.toJson(list);
				System.out.println(result);
				response.getWriter().append(result);
			}catch(Exception e) {
				e.printStackTrace();
			}
		
		}
		// 상품
		else if(uri.equals("/productList.admin")) { //product 관리  // 홈페이지의 전체 상품 조회
				
			ProductDAO dao = new ProductDAO();
				try {
					ArrayList<ProductDTO> productList = dao.selectAll(); // 전체 상품에 대한 내용을 productList로 받아온다.
					request.setAttribute("productList", productList); // 전체 상품 값 셋팅

				} catch (Exception e) {
					e.printStackTrace();
				}
				request.getRequestDispatcher("/admin/adminProductList.jsp").forward(request, response); 																							
	
			
		}else if(uri.equals("/productInsert.admin")) {  // 상품 입력 페이지로 이동
			
			response.sendRedirect("/admin/adminProductInsert.jsp");
			
		}else if(uri.equals("/productInsertProc.admin")) {	//상품 등록
			String filePath = request.getServletContext().getRealPath("files"); // 데이터가 저장될 서버의 경로
			System.out.println(filePath);
			File dir = new File(filePath);

			if (!dir.exists()) {    // 폴더가 없을 경우를 대비
				dir.mkdirs();
			}
			int maxSize = 1024 * 1024 * 10;

			try {
				MultipartRequest multi = new MultipartRequest(request, filePath, maxSize, "utf-8",new DefaultFileRenamePolicy());
				int productCode = Integer.parseInt(multi.getParameter("productCode"));  
				String productName = multi.getParameter("productName");
				int productPrice = Integer.parseInt(multi.getParameter("productPrice"));  
				String productContent = multi.getParameter("productContent");
				String productImg = "images"+ "/" + multi.getFilesystemName("productImg");
				
				ProductDAO dao = new ProductDAO();
				try {
					int rs = dao.insert(new ProductDTO(productCode,productName,productPrice,productContent,productImg));
					if(rs>0) {  // 만약에 상품 등록에 성공하면 관리자 페이지에 얼럿 띄워주기
						System.out.println("데이터 삭제 완료");
						response.sendRedirect("/productList.admin");
						
					}else{
						System.out.println("데이터 삭제 실패");
						response.sendRedirect("/productUpdate.admin");
					}
					
				}catch(Exception e) {e.printStackTrace();
				} 
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		
		}else if(uri.equals("/productUpdate.admin")) { // 상품 수정페이지로 이동
			
			response.sendRedirect("/admin/adminProductUpdate.jsp");
			
		}else if(uri.equals("/productUpdateProc.admin")) { // 상품 수정
			
			String filePath = request.getServletContext().getRealPath("files"); // 데이터가 저장될 서버의 경로
			System.out.println(filePath);
			File dir = new File(filePath);

			if (!dir.exists()) {    // 폴더가 없을 경우를 대비
				dir.mkdirs();
			}
			int maxSize = 1024 * 1024 * 10;

			try {
				MultipartRequest multi = new MultipartRequest(request, filePath, maxSize, "utf-8");
				int productCode = Integer.parseInt(multi.getParameter("productCode"));  
				String productName = multi.getParameter("productName");
				int productPrice = Integer.parseInt(multi.getParameter("productPrice"));  
				String productContent = multi.getParameter("productContent");
				String productImg = "images"+File.separator+multi.getFilesystemName("productImg");
				
				ProductDAO dao = new ProductDAO();
				try {
					int rs = dao.update(new ProductDTO(productCode,productName,productPrice,productContent,productImg));
					 // 만약에 상품 수정에 성공하면 관리자 페이지에 얼럿 띄워주기
						if(rs>0) {
							System.out.println("데이터 수정 완료");
							response.sendRedirect("/productList.admin");
						}else {
							System.out.println("데이터 수정 실패");
							response.sendRedirect("/productUpdate.admin");
						}
	
				}catch(Exception e) {e.printStackTrace();
				} 
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		
			
		}else if(uri.equals("/productDelete.admin")) { // 상품 삭제요청
			
			int productCode = Integer.parseInt( request.getParameter("productCodeDelete"));
			System.out.println(productCode);
			
			ProductDAO dao = new ProductDAO();
			
			try {
				int rs = dao.delete(productCode);
				if(rs>0) {
					System.out.println("데이터 삭제 성공");			
					response.getWriter().append("ok");
				}else {
					response.getWriter().append("fail");
				}
				
			}catch(Exception e) {e.printStackTrace();
			}
			
		}

		else if(uri.equals("/modifyOrder.admin")) { //배송정보 수정 
			System.out.println("/???");		
			Integer orderId =Integer.parseInt(request.getParameter("orderId"));
			String deliveryStatus = request.getParameter("deliveryStatus");
			String expectedArrival = request.getParameter("expectedArrival");
			String deliveryCount =  request.getParameter("deliveryCount");
			OrderDAO orderDAO = new OrderDAO();
			try {
				orderDAO.modifyOrder(orderId, deliveryStatus, expectedArrival, deliveryCount);
				System.out.println("수정완");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("return");
			response.sendRedirect("/admin/orderList.jsp");
		}else if(uri.equals("/orderList.admin")) {
			
			
			try {
				OrderDAO orderDAO = new OrderDAO();
				ArrayList<OrderDTO> orderList  = orderDAO.findAllList();
				
				request.setAttribute("orderList", orderList);
				request.getRequestDispatcher("/admin/orderList.jsp").forward(request, response);
			} catch (Exception e) {
				// 
				e.printStackTrace();
			}
		}else if(uri.equals("/orderDetail.admin")) {
			Integer orderId =Integer.parseInt(request.getParameter("orderId"));
			OrderDAO orderDAO = new OrderDAO();
			try {
				OrderDTO orderDTO = orderDAO.findByOrderId(orderId);
				request.setAttribute("orderDTO", orderDTO);
				request.getRequestDispatcher("/admin/orderDetail.jsp").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
			
		}else if(uri.equals("/review.admin")) { //review 관리
			int currentPage = Integer.parseInt(request.getParameter("currentPage"));
			ReviewDAO dao = new ReviewDAO();
			try {
				HashMap map = dao.getPage(currentPage);
				System.out.println(map.get("startNavi"));
				System.out.println(map.get("endNavi"));
				System.out.println(map.get("makePrev"));
				System.out.println(map.get("makeNext"));

				// 전체목록 불러오기
				System.out.println(currentPage);
				ArrayList<ReviewDTO> list = dao.selectAll(currentPage * 10 - 9, currentPage * 10);
				request.setAttribute("list", list);
				request.setAttribute("map", map);
				request.setAttribute("currentPage",currentPage);
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("/admin/adminReview.jsp").forward(request, response);
		}else if(uri.equals("/reviewDelete.admin")) {
			ReviewDAO dao = new ReviewDAO();
			int seqReview = Integer.parseInt(request.getParameter("seqReview"));
			int page = Integer.parseInt(request.getParameter("page"));
			System.out.println(seqReview);
			System.out.println(page);
			try {
				int rs = dao.delete(seqReview);
				if(rs>0) {
					response.sendRedirect("/review.admin?currentPage="+page);
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		}else if(uri.equals("/reviewDetail.admin")) {
			int seqReview = Integer.parseInt(request.getParameter("seqReview"));
			System.out.println("seqReview : " + seqReview);
			ReviewDAO ReviewDAO = new ReviewDAO();
			FileDAO fileDao = new FileDAO();
			try {
				ReviewDTO dto = ReviewDAO.selectBySeq(seqReview);
				String oriName = (fileDao.selectBySeqReview(seqReview)).getOriName();
				request.setAttribute("oriName", oriName);
				request.setAttribute("dto", dto);
				Gson gson = new Gson();
				String rs = gson.toJson(dto);
				System.out.println(rs);
				response.setCharacterEncoding("utf-8");
				response.getWriter().append(rs);

			} catch (Exception e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("/admin/adminReviewDetail.jsp").forward(request, response);

		}else if(uri.equals("/inquiry.admin")){
			InquiryDAO dao = new InquiryDAO();
			int currentPage = Integer.parseInt(request.getParameter("currentPage"));
			try {
				//페이징
				HashMap map = dao.getPage(currentPage);
				System.out.println(map.get("startNavi"));
				System.out.println(map.get("endNavi"));
				System.out.println(map.get("makePrev"));
				System.out.println(map.get("makeNext"));
				
				//전체목록 불러오기
				System.out.println(currentPage);
				ArrayList<InquiryDTO> list = dao.selectAll(currentPage*10-9, currentPage*10);
				request.setAttribute("list",list);
				request.setAttribute("map", map);
				request.setAttribute("currentPage",currentPage);
			}catch(Exception e){
				e.printStackTrace();
			}request.getRequestDispatcher("/admin/adminInquiry.jsp").forward(request, response);
		}else if(uri.equals("/inquiryDelete.admin")) {
			InquiryDAO dao = new InquiryDAO();
			int seqInquiry = Integer.parseInt(request.getParameter("seqInquiry"));
			int page = Integer.parseInt(request.getParameter("page"));
			System.out.println(seqInquiry);
			System.out.println(page);
			try {
				int rs = dao.delete(seqInquiry);
				if(rs>0) {
					response.sendRedirect("/inquiry.admin?currentPage="+page);
				}
			}catch(Exception e){
				e.printStackTrace();
			}
			
		}else if(uri.equals("/inquiryDetail.admin")) {
			int seqInquiry = Integer.parseInt(request.getParameter("seqInquiry"));
			System.out.println(seqInquiry);
			InquiryDAO dao= new InquiryDAO();
			try {
				InquiryDTO dto = dao.selectBySeq(seqInquiry);
				request.setAttribute("dto", dto);
			}catch(Exception e){
				e.printStackTrace();
			}
			request.getRequestDispatcher("admin/adminInquiryDetail.jsp").forward(request, response);
		}else if(uri.equals("/inquiryAnswer.admin")) {
			InquiryDAO dao = new InquiryDAO();
			int currentPage = Integer.parseInt(request.getParameter("currentPage"));
			try {
				//페이징
				HashMap map = dao.getPage(currentPage);
				System.out.println(map.get("startNavi"));
				System.out.println(map.get("endNavi"));
				System.out.println(map.get("makePrev"));
				System.out.println(map.get("makeNext"));
				
				//전체목록 불러오기
				System.out.println(currentPage);
				ArrayList<InquiryDTO> list = dao.selectNotAnswer(currentPage*10-9, currentPage*10);
				request.setAttribute("list",list);
				request.setAttribute("map", map);
				request.setAttribute("currentPage",currentPage);
			}catch(Exception e){
				e.printStackTrace();
			}request.getRequestDispatcher("/admin/adminInquiryAnswer.jsp").forward(request, response);
		}else if(uri.equals("/inquiryAnswerDetail.admin")) {
			int seqInquiry = Integer.parseInt(request.getParameter("seqInquiry"));
			System.out.println(seqInquiry);
			InquiryDAO dao= new InquiryDAO();
			try {
				InquiryDTO dto = dao.selectBySeq(seqInquiry);
				request.setAttribute("dto", dto);
			}catch(Exception e){
				e.printStackTrace();
			}
			request.getRequestDispatcher("admin/adminInquiryAnswerInput.jsp").forward(request, response);
		}else if(uri.equals("/inquiryAnswerProc.admin")) {
			int seqInquiry = Integer.parseInt(request.getParameter("seqInquiry"));
			String inquiryAnswer = request.getParameter("inquiryAnswer");
			InquiryDAO dao = new InquiryDAO();
			try {
				int rs = dao.updateAnswer(inquiryAnswer, seqInquiry);
				if(rs>0) {
					response.sendRedirect("/inquiryAnswer.admin?currentPage=1");
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		} else if (uri.equals("/deliveryList.admin")) { // 배송정보 리스트
			try {
				OrderDAO orderDAO = new OrderDAO();
				ArrayList<OrderDTO> deliveryList = orderDAO.findAllList();

				request.setAttribute("deliveryList", deliveryList);
				request.getRequestDispatcher("/admin/deliveryList.jsp").forward(request, response);
			} catch (Exception e) {
				//
				e.printStackTrace();
			}

		} else if (uri.equals("/deliveryManagement.admin")) { // 배송 상세 페이지
			request.setCharacterEncoding("utf-8");

			Integer orderId = Integer.parseInt(request.getParameter("orderId"));
			OrderDAO orderDAO = new OrderDAO();
			try {
				OrderDTO deliveryDetail = orderDAO.findByOrderId(orderId);
				request.setAttribute("deliveryDetail", deliveryDetail);
				request.getRequestDispatcher("/admin/deliveryManagement.jsp").forward(request, response);
			} catch (Exception e) {

				e.printStackTrace();
			}

		} else if (uri.equals("/modifyDelivery.admin")) {
			request.setCharacterEncoding("utf-8");
			Integer orderId = Integer.parseInt(request.getParameter("orderId"));// 주문번호
			String deliveryStatus = request.getParameter("deliveryStatus"); // 배송상태
			String deliveryCount = request.getParameter("deliveryCount"); // 배송회차
			String expectedArrival = request.getParameter("expectedArrival"); // 도착 예정일

			OrderDAO orderDAO = new OrderDAO();
			try {
				int modifyRs = orderDAO.modifyOrder(orderId, deliveryStatus, expectedArrival, deliveryCount);
				if (modifyRs > 0) {
					response.sendRedirect("/deliveryList.admin");
				} else {
					response.sendRedirect("/modifyDelivery.admin");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} else if (uri.equals("/orderList.admin")) { // 주문 리스트

			try {
				OrderDAO orderDAO = new OrderDAO();
				ArrayList<OrderDTO> orderList = orderDAO.findAllList();

				request.setAttribute("orderList", orderList);
				request.getRequestDispatcher("/admin/orderListV2.jsp").forward(request, response);
			} catch (Exception e) {
				//
				e.printStackTrace();
			}
		} else if (uri.equals("/orderDetail.admin")) {
			Integer orderId = Integer.parseInt(request.getParameter("orderId"));
			OrderDAO orderDAO = new OrderDAO();
			
			try {
				OrderDTO orderDTO = orderDAO.findByOrderId(orderId);
				request.setAttribute("orderDTO", orderDTO);
				request.getRequestDispatcher("/admin/orderDetailV2.jsp").forward(request, response);
			} catch (Exception e) {

				e.printStackTrace();
			}
		}else if(uri.equals("/blacklist.admin")) {
			BlacklistDAO dao =new BlacklistDAO();
			try {
				ArrayList<BlacklistDTO> list = dao.selectAll();
				request.setAttribute("list",list);
			}catch(Exception e){
				e.printStackTrace();
			}request.getRequestDispatcher("/admin/blacklist.jsp").forward(request, response);	
		
		}else if(uri.equals("/blacklistProc.admin")) {
			String id = request.getParameter("id");
			String blacklistReason = request.getParameter("blacklistReason");
			System.out.println(id+blacklistReason);
			MemberDAO dao = new MemberDAO();
			BlacklistDAO bldao = new BlacklistDAO();
			try {
				MemberDTO dto = dao.selectById(id);
				BlacklistDTO bldto = bldao.selectById(id);
				if(dto==null || bldto!=null) {
					System.out.println("실패");
					request.setAttribute("rs", false);
				}else {
					bldao.insert(new BlacklistDTO(id,null,blacklistReason));
					request.setAttribute("rs", true);
				}
			}catch(Exception e){
				e.printStackTrace();
			}request.getRequestDispatcher("/admin/blacklistAdd.jsp").forward(request, response);
		}else if(uri.equals("/blacklistDelete.admin")) {
			String id = request.getParameter("id");
			System.out.println(id);
			BlacklistDAO dao = new BlacklistDAO();
			try {
				int rs = dao.delete(id);
				if(rs>0) {
					response.sendRedirect("/blacklist.admin");
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		else if(uri.equals("/logout.admin")) {
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect("/admin/adminLogin.jsp");
		}

	}
}

