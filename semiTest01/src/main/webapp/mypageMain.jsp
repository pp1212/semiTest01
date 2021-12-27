<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>MyPage</h2>
	<hr>
	<form action="update_cust.do" method="post">
		아이디 : <input type="text" name="cust_id" value="${now_id }"><br>
		비밀번호 : <input type="password" name="cust_pwd"><br>
		<input type="submit" value="확인">
	</form>
</body>
</html>
