package com.boribob.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.boribob.dao.MemberDAO;
import com.boribob.dto.MemberDTO;
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

			response.sendRedirect("/mypage/mySubscribe.jsp");

		} else if (uri.equals("/withdrawal.my")) { // 회원탈퇴 jsp로 이동

			response.sendRedirect("/mypage/withdrawal.jsp");

		} else if (uri.equals("/withdrawalProc.my")) { // 회원탈퇴  전 비밀번호 확인
			// 비밀번호 입력받기
			String withdrawPw = request.getParameter("withdrawPw");
			System.out.println(withdrawPw);

			try {
				withdrawPw = EncryptionUtils.getSHA512(withdrawPw);

				HttpSession session = request.getSession();
				MemberDTO dto = (MemberDTO) session.getAttribute("loginSession");
				if (withdrawPw.equals(dto.getPassword())) { // 비밀번호 비교

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
			request.setAttribute("dto", dto);
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
				
				int rs = dao.update(new MemberDTO(id,password, name, post,roadAddr, detailAddr, phone));
				if(rs>0) {
					System.out.println("회원 정보수정 성공");
					response.sendRedirect("/mypage.my"); // 회원정보 수정완료 후 마이페이지 메인으로 이동
				}
				
			}catch(Exception e) {e.printStackTrace();
			}

		} 

	}

}


















