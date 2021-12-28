<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<style type="text/css">

</style>
</head>
<body>
	<h2>MyPage</h2>
	<hr>
	<form action="update_cust.do" method="post">
		아이디 : <input type="text" name="cust_id" value="${now_id }"><br>
		비밀번호 : <input type="password" name="cust_pwd"><br>
		<input type="submit" value="확인">
	</form>
	<nav>
		<ul class="menu">
			<li>
				<form action="mypageMain.jsp" method="post">
				<input type="hidden" name="cust_id" value="${now_id }"><br>
				<input type="submit" value="회원정보 관리">
				</form>
			<li>
			
			<li>
				<form action="listQnA_mypage.do" method="post">
				<input type="hidden" name="cust_id" value="${now_id }"><br>
				<input type="submit" value="나의게시물 관리">
				</form>
			<li>
			
			<li>
				<form action="showLoc.do" method="post">
				<input type="submit" value="관심지역 관리">
				</form>
			<li>	
		</ul>
	</nav>
</body>
</html>
