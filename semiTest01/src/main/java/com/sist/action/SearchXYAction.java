package com.sist.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		HttpSession session = ((HttpServletRequest)request).getSession();
		
		request.setCharacterEncoding("utf-8");
		
		String district = request.getParameter("district");
		String dong = request.getParameter("dong");
		
		LocationVO l = dao.searchXY(district, dong);
		int x_coord = l.getX_coord();
		int y_coord = l.getY_coord();
		
		
		if(session.getAttribute("x_coord") != null && session.getAttribute("y_coord") != null) {
			session.removeAttribute("x_coord");
			session.removeAttribute("y_coord");
			
			
//			request.setAttribute("x_coord", x_coord);
//			request.setAttribute("y_coord", y_coord);
			
			session.setAttribute("x_coord", x_coord);
			session.setAttribute("y_coord", y_coord);
		}else {
			session.setAttribute("x_coord", x_coord);
			session.setAttribute("y_coord", y_coord);
		}
		
		
		
		return "change_weather.do";
	}

}
