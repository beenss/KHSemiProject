package com.boribob.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.boribob.dto.InquiryDTO;

public class InquiryDAO {
	private BasicDataSource bds;
	public InquiryDAO() {
			try {
				Context iCtx = new InitialContext(); 
				Context envCtx = (Context)iCtx.lookup("java:comp/env");
				bds = (BasicDataSource)envCtx.lookup("jdbc/bds"); 
			
			}catch(Exception e) {
				e.printStackTrace();
			}
		
		}
	
	public int insert (InquiryDTO dto)throws Exception{//데이터삽입
		String sql = "insert into tbl_inquiry values(seq_inquiry.nextval,?,?,?,sysdate)";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getInquiryTitle());
			pstmt.setString(3, dto.getInquiryContent());
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
	public ArrayList<InquiryDTO> selectAll()throws Exception{//전체목록 보여주기
		String sql = "select * from tbl_inquiry";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			ResultSet rs = pstmt.executeQuery();
			ArrayList<InquiryDTO> inquiryList = new ArrayList<>();
			
			while(rs.next()) {
				int seqInquiry = rs.getInt("seq_inquiry");
				String id = rs.getString("id");
				String inquiryTitle = rs.getString("inquiry_title");
				String inquiryContent = rs.getString("inquiry_content");
				String inquiryDate = dateToString(rs.getDate("inquiry_date"));
				String inquiryAnswer = rs.getString("inquiry_answer");
				inquiryList.add(new InquiryDTO(seqInquiry,id,inquiryTitle,inquiryContent,inquiryDate,inquiryAnswer));
				
			}return inquiryList;
		}
	}
	public int update(InquiryDTO dto)throws Exception{//수정
		String sql = "update tbl_inquiry set inquiry_title=?, inquiry_content=? where seq_inquiry=?";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setString(1, dto.getInquiryTitle());
			pstmt.setString(2, dto.getInquiryContent());
			pstmt.setInt(3, dto.getSeqInquiry());
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
	public int delete(int seq_inquiry)throws Exception{//삭제
		String sql = "delete from tbl_inquiry where seq_inquiry=?";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setInt(1, seq_inquiry);
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
	public String dateToString(Date date) {//date를 String으로 변환하는 메서드
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
		return sdf.format(date);
	}

}
