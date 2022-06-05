package com.boribob.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.commons.dbcp2.BasicDataSource;

import com.boribob.dto.OrderDTO;

public class OrderDAO {

	private BasicDataSource bds; 

	
	
	public OrderDAO() {
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
	
	public int insertOrder(OrderDTO dto)throws Exception {  // 주문정보 등록 
		String sql = "insert into tbl_order values(order_seq.nextval,?,?,?,?,?,?)";
		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			// order_no -> 시퀀스
			pstmt.setInt(1, dto.getSeqSubscribe()); // -> 구독번호
			pstmt.setString(2, dto.getOrderName());// -> 수취인 이름
			pstmt.setString(3, dto.getOrderPhone()); // -> 수취인 연락처
			pstmt.setString(4, dto.getOrderAddress()); // -> 수취인 주소
			pstmt.setString(5, dto.getOrderMsg()); // -> 수취인 주문메시지
			pstmt.setString(6, dto.getPostMsg()); // -> 수취인 배송메시지


			int rs = pstmt.executeUpdate();

			return rs;
		}
		

	}
		
	
	
	public ArrayList<OrderDTO> findbyOrderName(String orderName)throws Exception { //주문자명으로 검색하기 
		String sql = "select * from tbl_order where order_name = ?";
		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
		pstmt.setString(1, orderName);
		
		ResultSet rs  = pstmt.executeQuery();
		ArrayList<OrderDTO> findOrder = new ArrayList<OrderDTO>();
		
		while(rs.next()) {
			int order_no = rs.getInt("order_no");
			int seq_subscribe = rs.getInt("seq_subscribe");
			String order_name = rs.getString("order_name");
			String order_phone = rs.getString("order_phone");
			String order_address = rs.getString("order_address");
			String order_msg = rs.getString("order_msg");
			String post_msg = rs.getString("post_msg");
			 
			findOrder.add(new OrderDTO(order_no,seq_subscribe,order_name,order_phone,order_address,order_msg,post_msg));
		}
		return findOrder;
		
		
			
		}
	}
	
	public ArrayList<OrderDTO> findbySubscirbeNo(int subscribeNo)throws Exception { //구독번호로 검색하기 
		String sql = "select * from tbl_order where seq_subscribe = ?";
		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
		pstmt.setInt(1, subscribeNo);
		
		ResultSet rs  = pstmt.executeQuery();
		ArrayList<OrderDTO> findOrder = new ArrayList<OrderDTO>();
		
		while(rs.next()) {
			int order_no = rs.getInt("order_no");
			int seq_subscribe = rs.getInt("seq_subscribe");
			String order_name = rs.getString("order_name");
			String order_phone = rs.getString("order_phone");
			String order_address = rs.getString("order_address");
			String order_msg = rs.getString("order_msg");
			String post_msg = rs.getString("post_msg");
			 
			findOrder.add(new OrderDTO(order_no,seq_subscribe,order_name,order_phone,order_address,order_msg,post_msg));
		}
		return findOrder;
		
		
			
		}
	}
	

	public int updateOrder(OrderDTO dto)throws Exception {  // 주문정보 등록 
		String sql = "update tbl_order set order_phone = ?, order_Address = ?,order_msg = ?,post_msg = ? where order_no = ? ";
		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, dto.getOrderPhone()); // -> 수취인 연락처
			pstmt.setString(2, dto.getOrderAddress()); // -> 수취인 주소
			pstmt.setString(3, dto.getOrderMsg()); // -> 수취인 주문메시지
			pstmt.setString(4, dto.getPostMsg()); // -> 수취인 배송메시지
			pstmt.setInt(5, dto.getOrderNo()); // -> 주문 번호

			int rs = pstmt.executeUpdate();

			return rs;
		} 

	}
		
	
	
	
	
	


}
