<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="find_id_p.jsp" method="post">
		이름 : <input type="text" name="cust_name">
		휴대폰번호 : <input type="text" name="cust_phone">
		<input type="submit" value="전송">
	</form>
	<hr>
	<form action="find_id_m.jsp" method="post">
		이름 : <input type="text" name="cust_name">
		이메일 : <input type="text" name="cust_email">
		<input type="submit" value="전송">
	</form>
	<hr>

	 
</body>
</html>