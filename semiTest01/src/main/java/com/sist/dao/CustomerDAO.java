package com.sist.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.sist.db.ConnectionProvider;

public class CustomerDAO {

	public String findId_p(String cust_name, String cust_phone) {
		String cust_id="";
		String sql = "select cust_id from customer where cust_name=? and cust_phone=?";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cust_name);
			pstmt.setString(2, cust_phone);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				cust_id = rs.getString(1); //sql문의 결과에서 첫번째 레코드
			}
			
			ConnectionProvider.close(conn, pstmt, rs);
			
		}catch (Exception e) {
			System.out.println("예외발생:"+e.getMessage());
		}
		
		return cust_id;
	}
	
	
	public String findId_m(String cust_name, String cust_email) {
		String cust_id="";
		String sql = "select cust_id from customer where cust_name=? and cust_email=?";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cust_name);
			pstmt.setString(2, cust_email);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				cust_id = rs.getString(1); //sql문의 결과에서 첫번째 레코드
			}
			
			ConnectionProvider.close(conn, pstmt);
		}catch (Exception e) {
			System.out.println("예외발생:"+e.getMessage());
		}
		return cust_id;
	}
	
	public String findPwd_p(String cust_id, String cust_phone) {
		String cust_pwd="";
		String sql = "select cust_pwd from customer where cust_id=? and cust_phone=?";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cust_id);
			pstmt.setString(2, cust_phone);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				cust_pwd = rs.getString(1); //sql문의 결과에서 첫번째 레코드
			}
			
			ConnectionProvider.close(conn, pstmt);
		}catch (Exception e) {
			System.out.println("예외발생:"+e.getMessage());
		}
		return cust_pwd;
	}
	
	public String findPwd_m(String cust_id, String cust_email) {
		String cust_pwd="";
		String sql = "select cust_pwd from customer where cust_id=? and cust_email=?";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cust_id);
			pstmt.setString(2, cust_email);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				cust_pwd = rs.getString(1); //sql문의 결과에서 첫번째 레코드
			}
			
			ConnectionProvider.close(conn, pstmt);
		}catch (Exception e) {
			System.out.println("예외발생:"+e.getMessage());
		}
		return cust_pwd;
	}
}
