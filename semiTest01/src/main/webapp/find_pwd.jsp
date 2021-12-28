<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#box{
	text-align: center;
}
#sub{
	margin-top: 5px;
	margin-bottom: 5px;
	border-radius: 5px;
	margin-left: 10px;
}
</style>
</head>
<body>
	<jsp:include page="header1.jsp" />
	<hr>
	
	<form id="box"  action="find_pwdOK.do" method="post" >
		<h2>< 비밀번호 찾기 ></h2>
		<h3>휴대폰번호로 찾기</h3>
		아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cust_id" id="sub"><br>
		휴대폰번호 <input type="text" name="cust_phone" id="sub"><br>
		<input type="submit" value="전송" id="sub">
	</form>

	<form id="box"  action="find_pwdOK.do" method="post">
		<h3>이메일로 찾기</h3>
		아이디&nbsp;<input type="text" name="cust_id" id="sub"><br>
		이메일 <input type="text" name="cust_email" id="sub"><br>
		<input type="submit" value="전송" id="sub">
	</form>
	
	<jsp:include page="footer.jsp"/>
</body>
</html>