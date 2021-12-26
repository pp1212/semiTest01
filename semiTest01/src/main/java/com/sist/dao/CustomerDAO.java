package com.sist.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.sist.db.ConnectionProvider;
import com.sist.vo.CustomerVO;

public class CustomerDAO {
	public int insertCustomer(CustomerVO customer_vo) {
		int re = -1;
		String sql = "insert into customer(cust_id,cust_pwd,cust_name,gender_code,cust_phone,cust_email,cust_addr) "
				+ "values(?, ?, ?, ?, ?, ?, ?)";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, customer_vo.getCust_id());
			pstmt.setString(2, customer_vo.getCust_pwd());
			pstmt.setString(3, customer_vo.getCust_name());
			pstmt.setInt(4, customer_vo.getGender_code());
			pstmt.setString(5, customer_vo.getCust_phone());
			pstmt.setString(6, customer_vo.getCust_email());
			pstmt.setString(7, customer_vo.getCust_addr());
			re = pstmt.executeUpdate();
			ConnectionProvider.close(conn, pstmt);
		} catch (Exception e) {
			System.out.println("예외발생:"+e.getMessage());
		}
		return re;
	}
	
	public int doubleCheckId(String cust_id) {
		int result = -1;
		String sql = "select count(*) from customer where cust_id=?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cust_id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
			ConnectionProvider.close(conn, pstmt, rs);
		} catch (Exception e) {
			System.out.println("예외발생:"+e.getMessage());
		}
		return result;
	}

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
