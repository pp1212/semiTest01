<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkKeyword(){
		var form= document.keywordForm;
		if(form.keyword.value == ""){
			alert("검색내용을 입력해주세요!");
			form.keyword.focus();
			return false;
			}
		
		form.submit();
	}
</script>
<body>
	<h2>나의 문의내역</h2>	
	<form name="keywordForm" action="listQnA_mypage.do?cust_id=${now_id }" method="post">
		<select name="searchColum">
			<option name="q_title" value="qna_title">제목</option>
		</select>
	    <input type="search" name="keyword">
		<input type="submit" value="검색" onclick="checkKeyword()">
	</form>
	
	<table border="1" width="80%">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>아이디</th>
			<th>날짜</th>
			<th>조회</th>
			
		</tr>
		
		<c:forEach var="b" items="${list}">
			<tr>
				<td>${b.qna_no }</td>
				<td>
					
					<a href="showContent_mypage.do?qna_no=${b.qna_no }">${b.qna_title }</a>
				</td>
				<td>${b.cust_id }</td>
				<td>${b.qna_date }</td>
				<td>${b.qna_hits }</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	<c:forEach var="i" begin="1" end="${totalPage }">
		<a href="listQnA_mypage.do?pageNUM=${i }">${i }</a>&nbsp;&nbsp;
	</c:forEach>

	
</body>
</html>


