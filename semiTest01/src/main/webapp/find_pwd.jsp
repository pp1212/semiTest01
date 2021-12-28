<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header1.jsp" />
	<hr>
	
	<form action="find_pwdOK.do" method="post">
		아이디 : <input type="text" name="cust_id">
		휴대폰번호 : <input type="text" name="cust_phone">
		<input type="submit" value="전송">
	</form>
	<hr>
	<form action="find_pwdOK.do" method="post">
		아이디 : <input type="text" name="cust_id">
		이메일 : <input type="text" name="cust_email">
		<input type="submit" value="전송">
	</form>
	
	<hr>
	<jsp:include page="footer.jsp"/>
</body>
</html>