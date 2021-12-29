<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/find_id.css" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@300&display=swap" rel="stylesheet">
</head>
<body>
	
	<jsp:include page="header1.jsp" />

	<div id="container">
		<form  class="box" id="phone" action="find_idOK.do" method="post">
		<h1>《 아이디 찾기 》</h1>
		<h3>▷ 휴대폰번호로 찾기</h3>
			<div>
				이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  class="text" type="text" name="cust_name" id="sub" ><br>
				휴대폰번호 <input class="text" type="text" name="cust_phone" id="sub"><br>
				<input type="submit" value="전송" id="sub1">
			</div>
		</form>
		<br>
		<form class="box" id="email" action="find_idOK.do" method="post">
			<h3>▷ 이메일로 찾기</h3>
			<div>
				이름&nbsp;&nbsp;&nbsp;&nbsp;<input  class="text" type="text" name="cust_name" id="sub"><br>
				이메일 <input class="text" type="text" name="cust_email" id="sub"><br>
				<input  type="submit" value="전송" id="sub1">
			</div>
		</form>
		<br>
	</div>
	
	<jsp:include page="footer.jsp"/>

	 
</body>
</html>