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
			pstmt.setString(4, dto.getRoadAddress());
			pstmt.setString(5, dto.getPost());
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
				String roadAddress = rs.getString("roadAddress");
				String post = rs.getString("post");
				String detailAddress = rs.getString("detailAddress");
				String phone = rs.getString("phone");
				memberList.add(new MemberDTO(id,password,name,roadAddress,post,detailAddress,phone));
				
			}return memberList;
		}
	}
	public int update(MemberDTO dto)throws Exception{
<<<<<<< HEAD
		String sql = "update tbl_member set password=?, name=?, roadAddress=?, post=?, detailAddress=?, phone=?";
=======
		String sql = "update tbl_member set password=?, name=?, roadAddress=?, post=?, detailAddress=?, phone=? where id=?";
>>>>>>> 4591b859410ffd30a4ec9d7de07347551dc81a02
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setString(1, dto.getPassword());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getRoadAddress());
			pstmt.setString(4, dto.getPost());
			pstmt.setString(5, dto.getDetailAddress());
			pstmt.setString(6, dto.getPhone());
<<<<<<< HEAD
			
=======
			pstmt.setString(7, dto.getId());
>>>>>>> 4591b859410ffd30a4ec9d7de07347551dc81a02
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
	
//	public boolean selectById(String id, String password)throws Exception{
//		String sql = "select count(*) from tbl_member where id = ? and password =?";
//		try(Connection con = bds.getConnection(); 
//				PreparedStatement pstmt = con.prepareStatement(sql)){
//			
//			pstmt.setString(1, id);
//			pstmt.setString(2, password);
//			
//			ResultSet rs = pstmt.executeQuery();
//			rs.next();
//			int result = rs.getInt(1); // 로그인 성공시 1 / 로그인 실패시 0
//			if(result == 1) {
//				return true;
//			}else {
//				return false;
//			}
//		}
//	}
	
	public MemberDTO selectById(String id)throws Exception{
		String sql = "select * from tbl_member where id = ?";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				String password = rs.getString(2);
				String name = rs.getString(3);
				String roadAddress = rs.getString(4);
				String post = rs.getString(5);
				String detailAddress = rs.getString(6);
				String phone = rs.getString(7);
				
<<<<<<< HEAD
				MemberDTO dto = new MemberDTO(id, password, name, post, roadAddress, detailAddress, phone);
=======
				MemberDTO dto = new MemberDTO(id, password, name, roadAddress, post, detailAddress, phone);
>>>>>>> 4591b859410ffd30a4ec9d7de07347551dc81a02
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
				String post = rs.getString("post");
				String roadAddress = rs.getString("road_address");
				String detailAddress = rs.getString("detail_address");
				String phone = rs.getString("phone");
<<<<<<< HEAD
				return new MemberDTO(id, null, name, post, roadAddress, detailAddress, phone);
=======
				return new MemberDTO(id,null,name,post,roadAddress,detailAddress,phone);
>>>>>>> 4591b859410ffd30a4ec9d7de07347551dc81a02
			}else {
				return null;
			}
		}
<<<<<<< HEAD
	}
	
	
						

	
	
=======
	}*/
>>>>>>> 4591b859410ffd30a4ec9d7de07347551dc81a02
}

