package com.boribob.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import com.boribob.dto.MemberDTO;

public class AdminDAO {
	private BasicDataSource bds;
	public AdminDAO() {
			try {
				Context iCtx = new InitialContext(); 
				Context envCtx = (Context)iCtx.lookup("java:comp/env");
				bds = (BasicDataSource)envCtx.lookup("jdbc/bds"); 
			
			}catch(Exception e) {
				e.printStackTrace();
			}
		
		}
	
	public ArrayList<MemberDTO> findSubMem()throws Exception{
		String sql = "select * from tbl_member WHERE id IN (SELECT id FROM tbl_subscribe)";
		try (Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			ResultSet rs = pstmt.executeQuery();
			ArrayList<MemberDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				String id = rs.getString("id");
	            String password = rs.getString("password");
	            String name = rs.getString("name");
	            String post = rs.getString("post");
	            String roadAddress = rs.getString("road_address");            
	            String detailAddress = rs.getString("detail_address");
	            String phone = rs.getString("phone");
	            list.add(new MemberDTO(id,password,name,post,roadAddress,detailAddress,phone));
			}return list;
		}
	}
	
		public ArrayList<MemberDTO> findNOtSubMem()throws Exception{
			String sql = "select * from tbl_member WHERE id NOT IN (SELECT id FROM tbl_subscribe)";
			try (Connection con = bds.getConnection(); 
				PreparedStatement pstmt = con.prepareStatement(sql);){
				ResultSet rs = pstmt.executeQuery();
				ArrayList<MemberDTO> list = new ArrayList<>();
				
				while(rs.next()) {
					String id = rs.getString("id");
		            String password = rs.getString("password");
		            String name = rs.getString("name");
		            String post = rs.getString("post");
		            String roadAddress = rs.getString("road_address");            
		            String detailAddress = rs.getString("detail_address");
		            String phone = rs.getString("phone");
		            list.add(new MemberDTO(id,password,name,post,roadAddress,detailAddress,phone));
				}return list;
			}	
	}
		public ArrayList<MemberDTO> selectById(String id)throws Exception{
			String sql = "select * from tbl_member where id = ?";
			try(Connection con = bds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);){
				pstmt.setString(1, id);
				ResultSet rs = pstmt.executeQuery();
				ArrayList<MemberDTO> list = new ArrayList<>();
				
				while(rs.next()) {
					id = rs.getString("id");
		            String password = rs.getString("password");
		            String name = rs.getString("name");
		            String post = rs.getString("post");
		            String roadAddress = rs.getString("road_address");            
		            String detailAddress = rs.getString("detail_address");
		            String phone = rs.getString("phone");
		            list.add(new MemberDTO(id,password,name,post,roadAddress,detailAddress,phone));
				}return list;
			}
		}
}
