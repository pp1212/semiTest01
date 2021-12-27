package com.sist.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.dao.CustomerDAO;
import com.sist.vo.CustomerVO;

public class Update_custAction implements SistAction {
	
	public CustomerDAO dao;
	public Update_custAction() {
		dao = new CustomerDAO();
	}
	
	static String jsp = "";
	
	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("Update_custAction 실행됨");
		request.setCharacterEncoding("utf-8");
		
		String cust_id = request.getParameter("cust_id");
		System.out.println("cust_id: "+cust_id);
		String cust_pwd = request.getParameter("cust_pwd");
		System.out.println("cust_pwd: "+cust_pwd);	
		
		int re = dao.mypage_login(cust_id, cust_pwd);
		
		String viewPage="";
		if(re == 1) {
			CustomerVO c= dao.getCustomer(cust_id);
			request.setAttribute("c", c);
			viewPage = "update_cust.jsp";
		}else {
			viewPage = "error.jsp";
			request.setAttribute("msg", "비밀번호가 일치하지않습니다.");
		}
		
	return viewPage;
	}
}


