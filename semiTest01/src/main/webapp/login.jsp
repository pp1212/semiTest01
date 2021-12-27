<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인</h2>
	<form action="loginOK.do" method="post">
		<table>
			<tr>
				<td id="title">아이디</td>
				<td>
					<input type="text" name="cust_id">
				</td>
			</tr>
			<tr>
				<td id="title">비밀번호</td>
				<td>
					<input type="password" name="cust_pwd">
				</td>
			</tr>
		</table>
		<br>
		<input type="submit" value="로그인">
	</form>
	
	<a href="find_id.do">아이디 찾기</a>
	<a href="find_pwd.do">비밀번호 찾기</a>
	<a href="signup.do">회원가입</a>
	<hr>
	<a href="#">카카오톡으로 로그인</a>
</body>
</html>