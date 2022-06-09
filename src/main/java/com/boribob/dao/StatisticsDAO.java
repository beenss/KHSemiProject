package com.boribob.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.boribob.dto.StatisticsDTO;



public class StatisticsDAO {
	
	private BasicDataSource bds;

	public StatisticsDAO() {
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
	
	public int insertSales(StatisticsDTO dto) throws Exception { // 주문정보 등록
		String sql = "insert into tbl_statistics values(statistics_seq.nextval,?,?,?,?,?)";
		try (Connection con = getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, dto.getProduct_name()); 
			pstmt.setString(2, dto.getMember_id()); 
			pstmt.setInt(3, dto.getPrice()); 
			pstmt.setInt(4, dto.getSubscribeTerm()); 
			pstmt.setInt(5, dto.getPay_amount()); 
		
			int rs = pstmt.executeUpdate();
		
			return rs;
		}

	}
}
