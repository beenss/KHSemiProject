package com.boribob.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.boribob.dto.PetDTO;

public class PetDAO {
	private BasicDataSource bds;

	public PetDAO() {
		try {
			Context iCtx = new InitialContext();
			Context envCtx = (Context) iCtx.lookup("java:comp/env");
			bds = (BasicDataSource) envCtx.lookup("jdbc/bds");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Connection getConnection() throws Exception {
		return bds.getConnection();
	}
	
	public int insert(PetDTO dto) throws Exception {
		String sql = "insert into tbl_pet values (?, ?, ?, ?, ?, ?, ?)";
		try(Connection con = this.getConnection();
			PreparedStatement pstmt = con.prepareCall(sql)) {
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPetName());
			pstmt.setInt(3, dto.getPetAge());
			pstmt.setInt(4, dto.getPetAllergy());
			pstmt.setInt(5, dto.getPetWeight());
			pstmt.setString(6, dto.getPetKind());
			pstmt.setString(7, dto.getPetType());
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
}
