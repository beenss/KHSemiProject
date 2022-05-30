package com.boribob.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.boribob.dto.CertificationDTO;

public class CertificationDAO {
	private BasicDataSource bds;
	
	public CertificationDAO() {
			try {
				Context iCtx = new InitialContext(); 
				Context envCtx = (Context)iCtx.lookup("java:comp/env");
				bds = (BasicDataSource)envCtx.lookup("jdbc/bds"); 
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	
	public int insert (CertificationDTO dto)throws Exception{
		String sql = "insert into tbl_certification values(?,?) ";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getIdHash());

			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
	
	public ArrayList<CertificationDTO> selectAll()throws Exception{
		String sql = "select * from tbl_certification";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			ResultSet rs = pstmt.executeQuery();
			ArrayList<CertificationDTO> certificationList = new ArrayList<>();

			while(rs.next()) {
				String id = rs.getString("id");
				String idHash = rs.getString("idHash");
				
				certificationList.add(new CertificationDTO(id,idHash));

			}return certificationList;
		}
	}
	
	public int update(CertificationDTO dto)throws Exception{
		String sql = "update tbl_certification set id=?, idHash=?";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getIdHash());

			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
	
	public int delete(CertificationDTO dto)throws Exception{
		String sql = "delete from tbl_certification set id=?, idHash=?";
		try(Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getIdHash());

			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
}
