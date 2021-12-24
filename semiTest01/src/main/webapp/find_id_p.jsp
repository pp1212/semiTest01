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
		
		String name = request.getParameter("cust_name");
		String phone = request.getParameter("cust_phone");
		CustomerDAO dao = new CustomerDAO();
		String id = dao.findId_p(name, phone);
	%>
	아이디 : <%=id %>
</body>
</html> 