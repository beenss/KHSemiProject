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
		String sql = "insert into tbl_member values(?,?,?,?,?,?,?) ";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getPost());
			pstmt.setString(5, dto.getRoadAddress());
			pstmt.setString(6, dto.getDetailAddress());
			pstmt.setString(7, dto.getPhone());
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
	public ArrayList<MemberDTO> selectAll()throws Exception{
		String sql = "select * from tbl_member";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			ResultSet rs = pstmt.executeQuery();
			ArrayList<MemberDTO> memberList = new ArrayList<>();
			
			while(rs.next()) {
				String id = rs.getString("id");
				String password = rs.getString("password");
				String name = rs.getString("name");
				String post = rs.getString("post");
				String roadAddress = rs.getString("road_address");				
				String detailAddress = rs.getString("detail_address");
				String phone = rs.getString("phone");
				memberList.add(new MemberDTO(id,password,name,post,roadAddress,detailAddress,phone));
				
			}return memberList;
		}
	}
	public int update(MemberDTO dto)throws Exception{

		String sql = "update tbl_member set password=?, name=?, post=?, road_address=?, detail_address=?, phone=? where id = ?";

		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setString(1, dto.getPassword());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getPost());
			pstmt.setString(4, dto.getRoadAddress());
			pstmt.setString(5, dto.getDetailAddress());
			pstmt.setString(6, dto.getPhone());
			pstmt.setString(7, dto.getId());

			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
	public int delete(String id)throws Exception{
		String sql = "delete from tbl_member where id=?";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setString(1, id);
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
	
	public MemberDTO selectById(String id)throws Exception{
		String sql = "select * from tbl_member where id = ?";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				String password = rs.getString(2);
				String name = rs.getString(3);
				String post = rs.getString(4);
				String roadAddress = rs.getString(5);				
				String detailAddress = rs.getString(6);
				String phone = rs.getString(7);
				

				MemberDTO dto = new MemberDTO(id, password, name, post, roadAddress, detailAddress, phone);


				return dto;				
				
			}return null;
		}
	}
	
	public MemberDTO isLoginOk(String id, String password)throws Exception{
		String sql = "select * from tbl_member where id = ? and password = ?";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {//로그인 성공 이라면
				String name = rs.getString("name");
				String post = rs.getString("post");
				String roadAddress = rs.getString("road_address");
				String detailAddress = rs.getString("detail_address");
				String phone = rs.getString("phone");

				return new MemberDTO(id, null, name, post, roadAddress, detailAddress, phone);

			}else {
				return null;
			}
		}

	}
	

	// 회원의 핸드폰번호 조회
		public MemberDTO selectByPhone(String phone1)throws Exception{
			String sql = "select * from tbl_member where phone = ?";
			try(Connection con = bds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);){
				pstmt.setString(1, phone1);
				
				ResultSet rs = pstmt.executeQuery();
				if(rs.next()) {
					String id = rs.getString(1);
					String password = rs.getString(2);
					String name = rs.getString(3);
					String post = rs.getString(4);
					String roadAddress = rs.getString(5);
					String detailAddress = rs.getString(6);
					String phone = rs.getString(7);
					

					MemberDTO dto = new MemberDTO(id, password, name, post, roadAddress, detailAddress, phone);


					return dto;				
					
				}return null;
			}
		}
		
		// 회원의 핸드폰 번호 4~7번째
		public String phone1(String id)throws Exception{
			String sql = "select substr(phone,4,4) from tbl_member where id = ?";
			try(Connection con = bds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);){
				pstmt.setString(1, id);
				
				ResultSet rs = pstmt.executeQuery();
				if(rs.next()) {
					
					String phone = rs.getString(1);
					return phone;
					
				}return null;
			}
		}
		

		// 회원의 핸드폰 번호 8~11번째
		public String phone2(String id)throws Exception{
			String sql = "select substr(phone,8,8) from tbl_member where id = ?";
			try(Connection con = bds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);){
				pstmt.setString(1, id);
				
				ResultSet rs = pstmt.executeQuery();
				if(rs.next()) {
					
					String phone = rs.getString(1);
					return phone;
					
				}return null;
			}
		}
		

}


