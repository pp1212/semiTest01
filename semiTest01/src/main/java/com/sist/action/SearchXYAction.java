package com.sist.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.dao.LocationDAO;
import com.sist.vo.LocationVO;

public class SearchXYAction implements SistAction {
	public LocationDAO dao;
	public SearchXYAction() {
		dao = new LocationDAO();
	}
	
	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		String district = request.getParameter("district");
		String dong = request.getParameter("dong");
		
		LocationVO l = dao.searchXY(district, dong);
		int x_coord = l.getX_coord();
		int y_coord = l.getY_coord();
		
		request.setAttribute("x_coord", x_coord);
		request.setAttribute("y_coord", y_coord);
		
		return "change_weather.do";
	}

}
