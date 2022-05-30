package com.boribob.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.apache.commons.dbcp2.BasicDataSource;

import order.orderDTO.DeliveryDTO;
import order.orderDTO.OrderDTO;
import order.orderDTO.PaymentDTO;

public class PaymentDAO {
	
	private BasicDataSource bds = new BasicDataSource();

	public PaymentDAO() {
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
	
	
	public int insertPayment(PaymentDTO dto) {   // 결제 정보 입력 
		String sql = "insert into tbl_payment values(?,?,?,?,?,?)";
		try (Connection con = getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setInt(1, dto.getOrderNo()); // 주문번호 foreign key 
			pstmt.setString(2, dto.getPaySuccess()); // -> 수취인 결제성공 여부
			pstmt.setString(3, dto.getPayId()); // ->결제 고유 id
			pstmt.setString(4, dto.getPayTradeId()); // -> 상점 거래 id
			pstmt.setInt(5, dto.getPayAmount()); // -> 결제 금액
			pstmt.setString(6, dto.getPayApproval()); // -> 카드승인번호
			
			int rs = pstmt.executeUpdate();

			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;

	}
	
	
	public ArrayList<PaymentDTO> findbyOrderName(int orderNo) { //주문자명으로 검색하기 
		String sql = "select * from tbl_payment where order_no = ?";
		try (Connection con = getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
		pstmt.setInt(1, orderNo);
		
		ResultSet rs  = pstmt.executeQuery();
		ArrayList<PaymentDTO> findPayment = new ArrayList<PaymentDTO>();
		
		while(rs.next()) {
			int order_no = rs.getInt("order_no");
			String paySuccess = rs.getString("pay_success");
			String payId = rs.getString("pay_id");
			String payTradeId = rs.getString("pay_tradeid");
			int payAmount = rs.getInt("pay_amount");
			String payApproval = rs.getString("pay_approval");
			 
			findPayment.add(new PaymentDTO(order_no,paySuccess,payId,payTradeId,payAmount,payApproval));
		}
		return findPayment;
		
		
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	

	public int updatePayment(PaymentDTO dto) {  // 주문번호로 결제정보 수정  
		String sql = "update tbl_payment set pay_success = ?, pay_id = ?,pay_tradeid = ?,pay_amount = ? ,pay_approval = ? where order_no = ? ";
		try (Connection con = getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			
			pstmt.setString(1, dto.getPaySuccess()); // -> 결제 성공 여부 
			pstmt.setString(2, dto.getPayId()); // -> 결제 id 
			pstmt.setString(3, dto.getPayTradeId()); // -> 상점거래id 
			pstmt.setInt(4, dto.getPayAmount()); // -> 결제금액 
			pstmt.setString(5, dto.getPayApproval()); // ->승인정보 
			pstmt.setInt(6, dto.getOrderNo()); // 주문번호 

			int rs = pstmt.executeUpdate();

			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;

	}
		
}
