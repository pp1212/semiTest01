<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>나의 문의내용</h2>
	<hr>
	제목 : ${b.qna_title }<br>
	아이디 : ${b.cust_id }<br>
	날짜 : ${b.qna_date }<br>
	문의내용<br>
	<textarea rows="10" cols="80" readonly="readonly">${b.qna_content }</textarea><br>	
	<hr>	
	
	<a href="listQnA_mypage.do?cust_id=${now_id }">목록</a>
	<a href="updateQnA.do?qna_no=${b.qna_no }">수정</a>
</body>
</html>