package com.boribob.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.commons.dbcp2.BasicDataSource;

import com.boribob.dto.BlacklistDTO;
import com.boribob.dto.InquiryDTO;

public class BlacklistDAO {
	private BasicDataSource bds;
	public BlacklistDAO() {
			try {
				Context iCtx = new InitialContext(); 
				Context envCtx = (Context)iCtx.lookup("java:comp/env");
				bds = (BasicDataSource)envCtx.lookup("jdbc/bds"); 
			
			}catch(Exception e) {
				e.printStackTrace();
			}
		
		}
	public int insert (BlacklistDTO dto)throws Exception{//데이터삽입
	      String sql = "insert into tbl_balcklist values(?,?,?) ";
	      try(Connection con = bds.getConnection(); 
	         PreparedStatement pstmt = con.prepareStatement(sql);){
	         pstmt.setString(1, dto.getId());
	         pstmt.setString(2, dto.getBlacklistDate());
	         pstmt.setString(3, dto.getBlacklistReason());
	         
	         int rs = pstmt.executeUpdate();
	         return rs;
	      }
	   }
	
	public ArrayList<BlacklistDTO> selectAll()throws Exception{
		String sql = "select * from tbl_blacklist";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			ResultSet rs = pstmt.executeQuery();
			ArrayList<BlacklistDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				String id = rs.getString("id");
				String blacklistDate = rs.getString("blacklist_date");
				String blacklistReason = rs.getString("blacklist_reason");
				list.add(new BlacklistDTO(id,blacklistDate,blacklistReason));
				
			}return list;
		}
	}
}
