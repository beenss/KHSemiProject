package com.boribob.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.boribob.dto.ReviewDTO;

public class ReviewDAO {
	private BasicDataSource bds;
	public ReviewDAO() {
		try {
			Context iCtx = new InitialContext(); 
			Context envCtx = (Context)iCtx.lookup("java:comp/env");
			bds = (BasicDataSource)envCtx.lookup("jdbc/bds"); 
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	
	}
	//게시물에 번호 부여하기
	public int getNewSeq() throws Exception{
		String sql = "select seq_review.nextval from dual";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			int seqReview = rs.getInt(1);
			return seqReview;			
		}
	}


	//리뷰 삭제
	public int delete(int seq_review) throws Exception {
		String sql = "delete from tbl_review where seq_review = ?";
		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setInt(1, seq_review);
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}

	//리뷰 수정
	public int modify(ReviewDTO dto) throws Exception {
		String sql = "update tbl_review set riview_title=?, review_content=? where seq_review=?";
		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setString(2, dto.getReviewTitle());
			pstmt.setString(3, dto.getReviewContent());
			pstmt.setInt(1, dto.getSeqReview());
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}

	//리뷰 전체 확인
	public ArrayList<ReviewDTO> selectAll() throws Exception {
		String sql = "SELECT * FROM tbl_review";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			ResultSet rs = pstmt.executeQuery();

			ArrayList<ReviewDTO> ReviewList = new ArrayList<>();

			while (rs.next()) {
				int seqReview = rs.getInt("seq_review");
				int productCode = rs.getInt("product_code");
				String id = rs.getString("id");
				String reviewTitle = rs.getString("review_title");
				String reviewContent = rs.getString("review_content");
				String reviewDate = dateToString(rs.getDate("review_date"));

				ReviewList.add(new ReviewDTO(seqReview, productCode, id, reviewTitle, reviewContent, reviewDate));

			}
			return ReviewList;

		}

	}
	//작성된 글을 테이블에 넣기 
	public int insert(ReviewDTO dto) throws Exception{
		String sql = "insert into tbl_review values(seq_review.nextval,0,?,?,?,sysdate)";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getReviewTitle());
			pstmt.setString(3, dto.getReviewContent());

			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
	//상세보기 페이지를 시퀀스 넘버 기준으로 
	public ReviewDTO selectBySeq(int seqReview) throws Exception{
		String sql = "SELECT * FROM TBL_review WHERE seq_review = ?";

		try(Connection con = bds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);){

			pstmt.setInt(1, seqReview);
			ResultSet rs = pstmt.executeQuery();

			if(rs.next()) {
				String reviewTitle = rs.getString("reviewTitle");
				String reviewContent = rs.getString("reviewContent");
				String id = rs.getString("id");
				int productCode = rs.getInt("productCode");
				String reviewDate = dateToString(rs.getDate("reviewDate"));
				ReviewDTO dto = new ReviewDTO(seqReview, productCode, id, reviewTitle, reviewContent, reviewDate);
				return dto;
			}
			return null;
		}
	}
	//date > string 
	public String dateToString(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
		return sdf.format(date);
	}
	
}