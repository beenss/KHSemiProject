package com.boribob.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.apache.commons.dbcp2.BasicDataSource;

import order.orderDTO.DeliveryDTO;
import order.orderDTO.OrderDTO;

public class DeliveryDAO {

	
	private BasicDataSource bds = new BasicDataSource();

	public DeliveryDAO() {
		String url = "jdbc:oracle:thin:@54.180.114.149:1521/xe";
		String username = "kh";
		String password = "kh";
		bds.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		bds.setUrl(url);
		bds.setUsername(username);
		bds.setPassword(password);
		bds.setInitialSize(30);

	}

	public Connection getConnection() throws Exception {
		return bds.getConnection();
	}
	
	
	
	public int insertOrder(DeliveryDTO dto) {  // 주문정보 등록 
		String sql = "insert into tbl_delivery values(?,?)";
		try (Connection con = getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			// order_no -> 시퀀스
			pstmt.setInt(1, dto.getDelivery_no()); // -> 배송번호 
			pstmt.setString(2, dto.getDeliveryStatus());// -> 배송상태 
		


			int rs = pstmt.executeUpdate();

			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;

	}
	

	public ArrayList<DeliveryDTO> findbyDeliveryNo(int deliverNo) { //배달번호로 검색하기 
		String sql = "select * from tbl_delivery where delivery_no = ?";
		try (Connection con = getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
		pstmt.setInt(1, deliverNo);
		
		ResultSet rs  = pstmt.executeQuery();
		ArrayList<DeliveryDTO> findDelivery = new ArrayList<DeliveryDTO>();
		
		while(rs.next()) {
			int delivery_no = rs.getInt("delivery_no");
			
			String delivery_status = rs.getString("delivery_status");
			
			 
			findDelivery.add(new DeliveryDTO(delivery_no,delivery_status));
		}
		return findDelivery;
		
		
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public int updateOrder(DeliveryDTO dto) {  // 배달정보 수정 
		String sql = "update tbl_delivery set delivery_status = ?";
		try (Connection con = getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, dto.getDeliveryStatus()); // -> 배달 상태 
			

			int rs = pstmt.executeUpdate();

			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;

	}
	
	
}
