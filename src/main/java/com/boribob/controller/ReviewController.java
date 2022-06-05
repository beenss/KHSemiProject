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

import com.boribob.dao.FileDAO;
import com.boribob.dao.ReviewDAO;
import com.boribob.dto.FileDTO;
import com.boribob.dto.MemberDTO;
import com.boribob.dto.ReviewDTO;
import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("*.bo")
public class ReviewController extends HttpServlet {
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
		System.out.println("요청 uri : " + uri);
		request.setCharacterEncoding("utf-8");

		if (uri.equals("/review.bo")) {
			response.sendRedirect("/review/review.jsp");

		} else if (uri.equals("/write.bo")) {
			response.sendRedirect("/review/write.jsp");
		} else if (uri.equals("/writeProc.bo")) {
			// 아이디 제목과 내용 뽑아내기 세션 만들어지면 그때 사용
			// MemberDTO dto = (MemberDTO)request.getSession().getAttribute("logonSession");
			// String id = dto.getId();
			String reviewtitle = request.getParameter("reviewtitle");
			String reviewcontent = request.getParameter("reviewcontent");

			System.out.println(reviewtitle + reviewcontent);

			ReviewDAO dao = new ReviewDAO();

			try {
				int re = dao.insert(new ReviewDTO(0, 0, id, reviewTitle, reviewContent, null));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		if (uri.equals("/detailView.bo")) { // 상세보기페이지 요청
			int seqReview = Integer.parseInt(request.getParameter("seqReview"));
			ReviewDAO ReviewDAO = new ReviewDAO();
			try {
				// 상세보기 페이지를 뿌려주기 위한 작업
				ReviewDTO dto = ReviewDAO.selectBySeq(seqReview);
				request.setAttribute("dto", dto);

			} catch (Exception e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("/board/detailView.jsp").forward(request, response);
		} else if (uri.equals("/modify.bo")) {// 수정 페이지 요청
			int seqReview = Integer.parseInt(request.getParameter("seqReview"));

			ReviewDAO dao = new ReviewDAO();
			try {
				ReviewDTO dto = dao.selectBySeq(seqReview);
				request.setAttribute("dto", dto);
			} catch (Exception e) {
				e.printStackTrace();
			}

			// 수정하기
			request.getRequestDispatcher("/review/modify.jsp").forward(request, response);
		} else if (uri.equals("/modifyProc.bo")) {
			int seqReview = Integer.parseInt(request.getParameter("seqReview"));
			String revietitle = request.getParameter("reviewtitle");
			String reviewcontent = request.getParameter("reviewcontent");

			ReviewDAO dao = new ReviewDAO();
			try {
				int rs = dao.modify(new ReviewDTO(reviewTitle, reviewContent));
				if (rs > 0) {
					// 페이지 상세보기로 다시 이동
					response.sendRedirect("/detailView.bo");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (uri.equals("/deleteProc.bo")) {// 삭제 요청
			int seqReview = Integer.parseInt(request.getParameter("seqReview"));
			System.out.println("seqReview :" + seqReview);

			ReviewDAO dao = new ReviewDAO();
			// 게시물 번호로 삭제
			try {
				int rs = dao.delete(seqReview);
				if (rs > 0) {
					// 삭제 후 리뷰게시판으로 첫번째로 이동
					response.sendRedirect("/review.bo");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
	}
}