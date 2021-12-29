<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<link rel="stylesheet" href="css/mypage.css" type="text/css">
</head>
<body>
	<h2>MyPage</h2>
	<hr>
	<div>
		<div class="menu_mypage">
			<form action="mypageMain.jsp" method="post">
				<input type="hidden" name="cust_id" value="${now_id }">
				<input class="menu_button1" type="submit" value="회원정보 관리">
			</form>
			<form action="listQnA_mypage.do" method="post">
				<input type="hidden" name="cust_id" value="${now_id }">
				<input class="menu_button2" type="submit" value="나의게시물 관리">
			</form>
			<form action="showLoc.jsp" method="post">
				<input class="menu_button3" type="submit" value="관심지역 관리">
			</form>
		</div>
		
		<div class="login_mypage">
			<form id="login" action="update_cust.do" method="post">
				아이디 &nbsp;&nbsp; <input id="sub" type="text" name="cust_id" value="${now_id }"><br>
				비밀번호 <input id="sub" type="password" name="cust_pwd" ><br><br>
				<input id="sub" type="submit" value="확인" >
			</form>
		</div>	
	</div>
</body>
</html>
