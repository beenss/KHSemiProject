package com.boribob.controller;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.boribob.dao.MemberDAO;
import com.boribob.dto.MemberDTO;
import com.boribob.utils.EncryptionUtils;
import com.boribob.utils.Gmail;

@WebServlet("*.mem") 
public class MemberController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 고객이 요청한 uri
		String uri = request.getRequestURI();
		System.out.println("요청 uri : " + uri);
		
		if(uri.equals("/member.mem")) { //회원가입 페이지 요청
			response.sendRedirect("/member/member.jsp");
		}else if(uri.equals("/idCheckPopup.mem")) { //이메일 중복확인 뜨는 팝업 페이지 요청
			request.setAttribute("idx", "idcheck");
			System.out.print("idcheck");
//			response.sendRedirect("/member/popup.jsp");
			request.getRequestDispatcher("/member/popup.jsp").forward(request, response);
		}else if(uri.equals("/checkId.mem")) { // 이메일 중복확인 요청
			String id = request.getParameter("id");
			System.out.println("id : " + id);
			
			MemberDAO dao = new MemberDAO();
			try {
				MemberDTO rs = dao.selectById(id);
				System.out.println("rs : " + rs);
				
				if(rs==null) { //사용가능 이메일
					request.setAttribute("rs", "ok");
				}else { //중복된 이메일
					request.setAttribute("rs", "no");
				}
				request.setAttribute("id", id);
				request.getRequestDispatcher("/member/popup.jsp").forward(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(uri.equals("/certificationEmail.mem")) {
			
			System.out.print("certificationEmail");
			String crtCode = sendEmail();
			System.out.print("crtCode : "+ crtCode);
			request.setAttribute("crtCode", crtCode);
			request.getRequestDispatcher("/member/popup.jsp").forward(request, response);
			
		}else if(uri.equals("/postCodePopup.mem")) { // 우편번호 찾기 누르면 뜨는 팝업 페이지
			request.setAttribute("idx", "post");
			System.out.print("post");
		
			
			request.getRequestDispatcher("/member/popup.jsp").forward(request, response);
			
			
		}else if(uri.equals("/login.mem")) { // 회원가입 요청
			
			
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			String name = request.getParameter("name");
			String roadAddress = request.getParameter("roadAddress");
			String post = request.getParameter("post");
			String detailAddress = request.getParameter("detailAddress");
			String phone = request.getParameter("phone");
			
			System.out.println(id+" : "+password+" : "+name+" : "+roadAddress
					+" : "+post+" : "+detailAddress+" : "+phone);
			
			MemberDAO dao = new MemberDAO();
			try {
				System.out.println("하기전 : " +password);
				password = EncryptionUtils.getSHA512(password);
				
				System.out.println("하고 난 후 : " +password);
				MemberDTO rs = dao.selectById(id);
				if(rs==null) {
					response.sendRedirect("/login/login.jsp");
				}
			}catch(Exception e) {
				e.printStackTrace();
			}		
		}else if(uri.equals("/login.mem")) { //로그인 요청
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			System.out.println(id + " : " + password);
			
		MemberDAO dao = new MemberDAO();
		
		  try {
				if(dao.selectById(id, password)) { //로그인 성공
					System.out.println("로그인 성공");
					request.setAttribute("rs", true);
	//response.sendRedirect(" 메인페이지 경로 ");
					// session 저장소 > login 정보 저장
					HttpSession session = request.getSession();
					session.setAttribute("loginSession", id);  
		 
		
		
		/*수빈씨랑 상의중
		try {
			inputpassword = EncryptionUtils.getSHA512(password);
			System.out.println(password);
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
		*/			
					
					
					
				}else { //로그인 실패
					System.out.println("로그인 실패");
					request.setAttribute("rs", false);
				}
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

	
	
	
	public String sendEmail() { //MemberDTO userVO
		//String host = "smtp.gmail.com";
		String user = "damnyou1994@gmail.com"; // 발신자 메일
		String password = "go1070915@@";        // 발신자 패스워드
		
		
		Properties prop = new Properties();

		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", 465);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true"); 
		prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");

		System.out.println("complete props set");
		
		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
				}
			}
		);

		// 인증번호 난수 6자리 설정
		String randomNumber = "123457";
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));

			// 메일 대상
			message.addRecipient(Message.RecipientType.TO, new InternetAddress("sungpar1994@naver.com"));
			// 메일 대상 (다수)
			InternetAddress[] addArray = new InternetAddress[3];
			addArray[0] = new InternetAddress("damnyou1994@nate.com");
			addArray[1] = new InternetAddress("sungpar1994@naver.com");
			addArray[2] = new InternetAddress("1994gsm@hanmail.net");
			// 메일 제목
			message.setSubject("안녕하세요. Boribob입니다.");

			// 메일 내용
			message.setText("귀하의 이메일 인증번호는 " + randomNumber + " 입니다.\n인증번호를 복사하여 입력해주세요.");

			// send the message
			Transport.send(message);
			System.out.println("Success Message Send");

		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		return randomNumber;
	}
	
	
}
   