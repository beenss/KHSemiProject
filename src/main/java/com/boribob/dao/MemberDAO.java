package com.boribob.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.boribob.dto.MemberDTO;

public class MemberDAO {
	private BasicDataSource bds;
	public MemberDAO() {
			try {
				Context iCtx = new InitialContext(); 
				Context envCtx = (Context)iCtx.lookup("java:comp/env");
				bds = (BasicDataSource)envCtx.lookup("jdbc/bds"); 
			
			}catch(Exception e) {
				e.printStackTrace();
			}
		
		}
	
	public int insert (MemberDTO dto)throws Exception{
		String sql = "insert into tbl_member values(?,?,?,?,?,?,?,seq_subscribe.nextval) ";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getRoadAddress());
			pstmt.setString(5, dto.getPost());
			pstmt.setString(6, dto.getDetailAddress());
			pstmt.setString(7, dto.getPhone());
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
	public ArrayList<MemberDTO> selectAll()throws Exception{
		String sql = "select * from tbl_memebr";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			ResultSet rs = pstmt.executeQuery();
			ArrayList<MemberDTO> memberList = new ArrayList<>();
			
			while(rs.next()) {
				String id = rs.getString("id");
				String password = rs.getString("password");
				String name = rs.getString("name");
				String roadAddress = rs.getString("roadAddress");
				String post = rs.getString("post");
				String detailAddress = rs.getString("detailAddress");
				String phone = rs.getString("phone");
				int seqSubscribe = rs.getInt("seq_subscribe");
				memberList.add(new MemberDTO(id,password,name,roadAddress,post,detailAddress,phone,seqSubscribe));
				
			}return memberList;
		}
	}
	public int update(MemberDTO dto)throws Exception{
		String sql = "update tbl_member set id=?, password=?, name=?, roadAddress=?, post=?, detailAddress=?, phone=? where seq_subscribe=?";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getRoadAddress());
			pstmt.setString(5, dto.getPost());
			pstmt.setString(6, dto.getDetailAddress());
			pstmt.setString(7, dto.getPhone());
			pstmt.setInt(8, dto.getSeqSubscribe());
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
	public int delete(int seq_subscribe)throws Exception{
		String sql = "delete from tbl_member where seq_subscribe=?";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setInt(1, seq_subscribe);
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
}