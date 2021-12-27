<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>고객 정보 수정</h2>
	<hr>
	<form action="update_custOK.do" method="post">
		<input type="hidden" name="cust_id" value="${c.cust_id }"><br>
		이름 : <input type="text" name="cust_name" value="${c.cust_name }"><br>
		비밀번호 : <input type="password" name="cust_pwd" ><br>
		비밀번호 확인 : <input type="password" name="cust_pwd" ><br>
		이메일 : <input type="email" name="cust_email" value="${c.cust_email }"><br>
		휴대전화 : <input type="tel" name="cust_phone" value="${c.cust_phone }"><br>
		성별 : <%-- <input type="text" name="gender_code" value="${c.gender_code }"><br> --%>
					<input type="radio" name="gender_code" value="1" checked="checked">남성	
					<input type="radio" name="gender_code" value="2">여성<br>
		주소 : <input type="text" name="cust_addr" value="${c.cust_addr }"><br>
		<input type="submit" value="수정">
		<input type="reset" value="취소">
	</form>
</body>
</html>

