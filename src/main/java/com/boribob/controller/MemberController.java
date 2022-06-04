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

@WebServlet("*.mem")
public class MemberController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);	
	}
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println("요청uri: "+uri);
		
		MemberDAO dao = new MemberDAO();
		try {
			if(uri.equals("/loginProc.mem")) {
				String id=request.getParameter("id");
				String password = request.getParameter("password");
				MemberDTO dto = dao.isLoginOk(id, password);
				if(dto !=null) {
					System.out.println("로그인성공");
					request.setAttribute("rs", true);
					HttpSession session = request.getSession();
					session.setAttribute("loginSession", dto);
				}else {
					System.out.println("로그인실패");
					request.setAttribute("rs", false);
				}request.getRequestDispatcher("/index.jsp").forward(request, response);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}

	}
}