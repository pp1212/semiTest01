package com.sist.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.sist.db.ConnectionProvider;
import com.sist.vo.FashionVO;
import com.sist.vo.LocationVO;

public class FashionDAO {
	
	public FashionVO codi(int fashion_no) {
		FashionVO f = null;
		String sql = "select top_no, bottoms_no, outer_no, etc_no from fashion where fashion_no=?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, fashion_no);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				f = new FashionVO(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4));
			}
			ConnectionProvider.close(conn, pstmt, rs);
		} catch (Exception e) {
			System.out.println("예외발생:"+e.getMessage());
		}
		return f;
	}
	
	/*
	public FashionVO codi(int fashion_no){
		FashionVO f = null;
		//ArrayList<FashionVO> list = new ArrayList<FashionVO>();
		String sql = "select t.top_type, b.bottoms_type, o.outer_type, e.etc_type "
				+ "from fashion f, clothes_top t, clothes_bottoms b, clothes_outer o, clothes_etc e "
				+ "where f.top_no = t.top_no and "
				+ "f.bottoms_no = b.bottoms_no and "
				+ "f.outer_no = o.outer_no and "
				+ "f.etc_no = e.etc_no and "
				+ "fashion_no = ?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, fashion_no);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				f = new FashionVO(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4));
			}
			
			
			ConnectionProvider.close(conn, pstmt, rs);
		}catch (Exception e) {
			System.out.println("예외발생: "+e.getMessage());
		}
		return f;
	}
	*/
}
