<%@page import="com.sist.dao.CustomerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("cust_id");
		String phone = request.getParameter("cust_phone");
		CustomerDAO dao = new CustomerDAO();
		String pwd = dao.findPwd_p(id, phone);				
	%>
	비밀번호 : <%=pwd %>
</body>
</html>