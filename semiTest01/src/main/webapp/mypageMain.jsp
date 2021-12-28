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
	
	<form action="listQnA_mypage.do" method="post">
		<input type="hidden" name="cust_id" value="${now_id }"><br>
		<input type="submit" value="나의게시물 관리">
	</form>
	
	<form action="showLoc.do" method="post">
		<input type="submit" value="관심지역 관리">
	</form>
	
	
</body>
</html>
