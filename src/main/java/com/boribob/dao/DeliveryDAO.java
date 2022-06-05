package com.boribob.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.commons.dbcp2.BasicDataSource;

import com.boribob.dto.DeliveryDTO;

public class DeliveryDAO {
<<<<<<< HEAD
	private BasicDataSource bds = new BasicDataSource();
=======

	
	private BasicDataSource bds;
>>>>>>> d6672ac0bb586e6d33ad88cc2c0f6a5a7230e6a1

	public DeliveryDAO() {
		try {
			Context iCtx = new InitialContext(); 
			Context envCtx = (Context)iCtx.lookup("java:comp/env");
			bds = (BasicDataSource)envCtx.lookup("jdbc/bds"); 
		
		}catch(Exception e) {
			e.printStackTrace();
		}

	}

	public Connection getConnection() throws Exception {
		return bds.getConnection();
	}
	
<<<<<<< HEAD
	public int insertOrder(DeliveryDTO dto) {  // 주문정보 등록 
=======
	public int insertOrder(DeliveryDTO dto)throws Exception {  // 주문정보 등록 
>>>>>>> d6672ac0bb586e6d33ad88cc2c0f6a5a7230e6a1
		String sql = "insert into tbl_delivery values(?,?)";
		try (Connection con =  bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			// order_no -> 시퀀스
			pstmt.setInt(1, dto.getDelivery_no()); // -> 배송번호 
			pstmt.setString(2, dto.getDeliveryStatus());// -> 배송상태 
		


			int rs = pstmt.executeUpdate();

			return rs;
		} 

	}
	

	public ArrayList<DeliveryDTO> findbyDeliveryNo(int deliverNo)throws Exception { //배달번호로 검색하기 
		String sql = "select * from tbl_delivery where delivery_no = ?";
		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
		pstmt.setInt(1, deliverNo);
		
		ResultSet rs  = pstmt.executeQuery();
		ArrayList<DeliveryDTO> findDelivery = new ArrayList<DeliveryDTO>();
		
		while(rs.next()) {
			int delivery_no = rs.getInt("delivery_no");
			
			String delivery_status = rs.getString("delivery_status");
			
			 
			findDelivery.add(new DeliveryDTO(delivery_no,delivery_status));
		}
		return findDelivery;
		
		
			
		}
	}
	
	public int updateOrder(DeliveryDTO dto)throws Exception {  // 배달정보 수정 
		String sql = "update tbl_delivery set delivery_status = ?";
		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, dto.getDeliveryStatus()); // -> 배달 상태 
			

			int rs = pstmt.executeUpdate();

			return rs;
		} 

	}
	
	
}
