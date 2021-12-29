<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
H4{
font-family: 'Do Hyeon', sans-serif;
font-size: 40px;
margin-left: 20px;
}
</style>
</head>
<body>
	<jsp:include page="header1.jsp" />
	<hr>
	<br>
	<br>
	<h4>고객님의 아이디는 ${cust_id_p } 입니다.</h4>
	<br>
	<br>
	<jsp:include page="footer.jsp"/>
</body>
</html>