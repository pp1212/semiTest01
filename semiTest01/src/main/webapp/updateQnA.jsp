<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>나의 문의내용 수정</h2>
	<hr>
	<form action="updateQnAOK.do" method="post">
		<input type="hidden" name="qna_no" value="${b.qna_no }">
		제목 : <input type="text" name="qna_title" value="${b.qna_title }"><br>
		아이디 : <input type="text" name="cust_id" value="${b.cust_id }"><br>
		문의내용<br>
			<textarea rows="10" cols="80" name="qna_content">${b.qna_content }</textarea><br>	
		<hr>
		<a href="deleteQnA.do?qna_no=${b.qna_no }">삭제</a>
		<input type="submit" value="완료">
		<input type="reset" value="취소">
	</form>
	
		
</body>
</html>