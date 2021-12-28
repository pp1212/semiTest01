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
</style>
</head>
<body>
	
	<jsp:include page="header1.jsp" />
	<hr>
	<div>
		<form id="box" action="find_idOK.do" method="post">
			<br>
			이름<br>
			<input type="text" name="cust_name" margin><br>
			휴대폰번호<br>
			<input type="text" name="cust_phone"><br>
			<input type="submit" value="전송">
		</form>
		<br><br><br><br>
		<form id="box"  action="find_idOK.do" method="post">
			이름<br>
			<input type="text" name="cust_name"><br>
			이메일<br>
			<input type="text" name="cust_email"><br>
			<input type="submit" value="전송">
		</form>
		<br>
	</div>
	
	<jsp:include page="footer.jsp"/>

	 
</body>
</html>