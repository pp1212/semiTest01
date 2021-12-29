<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css" type="text/css">
</head>
<body>
	
		<div id="login_wrapper">
			<h2>로그인</h2>
			<form action="loginOK.do" method="post">
				<table>
					<tr>
						<td id="title">아이디</td>
						<td><input type="text" name="cust_id"></td>
					</tr>
					<tr>
						<td id="title">비밀번호</td>
						<td><input type="password" name="cust_pwd"></td>
					</tr>
				</table>
				<br> <input type="submit" value="로그인">
			</form>
			
			<a href="find_id.do">아이디 찾기</a>
			<a href="find_pwd.do">비밀번호 찾기</a>
			<a href="signup.do">회원가입</a>
			
			<hr>
			<a href="javascript:kakaoLogin();"><img
				src="images/kakao_signup_logo.PNG"
				style="height: 60px; width: auto;"></a>
			<script src="http://developers.kakao.com/sdk/js/kakao.js"></script>
			<script>
			 //35c3cc0f08c2ed79977d3cc0c584dcca
			 window.Kakao.init("35c3cc0f08c2ed79977d3cc0c584dcca");
			 
			 function kakaoLogin() {
				window.Kakao.Auth.login({
					scope:'profile_nickname,account_email,gender',
					success: function(authObj){
						console.log(authObj);
						window.Kakao.API.request({
							url: '/v2/user/me',
							success: res => {
								const kakao_account= res.kakao_account;
								console.log(kakao_account);
								var email=kakao_account['email'];
								var gender= kakao_account['gender'];
								console.log(email);
								location.href="signup.do?email="+email+"&gender="+gender;
							}
						});
					}
				});
					
				
			}
 
			</script>
		</div>
</body>
</html>