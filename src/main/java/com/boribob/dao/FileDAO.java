package com.boribob.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.boribob.dto.FileDTO;

public class FileDAO {
	private BasicDataSource bds;
	
	public FileDAO() {
		try {
			Context iCtx = new InitialContext();
			Context envCtx = (Context)iCtx.lookup("java:comp/env");
			bds = (BasicDataSource)envCtx.lookup("jdbc/bds");
		}catch(Exception e) {
			e.printStackTrace();
		}		
	}
	
	public int insert(FileDTO dto) throws Exception{
		String sql = "insert into tbl_file values(seq_file.nextval,?,?,?)";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setInt(1, dto.getSeqReview());
			pstmt.setString(2, dto.getOriName());
			pstmt.setString(3, dto.getSysName());
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
	
	public FileDTO selectBySeqReview (int seqReview) throws Exception {
		String sql = "select * from tbl_file where seq_review = ?";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setInt(1, seqReview);
			
			ResultSet rs = pstmt.executeQuery();
			FileDTO dto = new FileDTO();
			if (rs.next()) {
				int seqFile = rs.getInt("seq_file");
				String oriName = rs.getString("ori_name");
				String sysName = rs.getString("sys_name");
				
				dto = new FileDTO(seqFile, seqReview, oriName, sysName);
			}
			return dto;
		}
	}
}
