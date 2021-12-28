<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function checkContent(){
	var form= document.updateForm;
	if(form.qna_content.value==""){
		alert("필수사항을 입력해주세요!");
		form.qna_content.focus();		
		return false;
		}
	if(form.qna_title.value==""){
		alert("필수사항을 입력해주세요!");
		form.qna_title.focus();	
		return false;
		}	
	form.submit();
}

function checkReject(){
	if(confirm("작성을 취소하시겠습니까?")==true){
		document.updateForm.reset();
		location.href='http://localhost:8080/semiTest01/listQnA_mypage.do?cust_id=${b.cust_id }';
	}else{
		return; 
	}
}

</script>
<body>
	<h2>나의 문의내용 수정</h2>
	<hr>
	<form name="updateForm" action="updateQnAOK.do" method="post">
		<input type="hidden" name="qna_no" value="${b.qna_no }">
		제목 : <input type="text" name="qna_title" value="${b.qna_title }"><br>
		아이디 : <input type="text" name="cust_id" value="${b.cust_id }"><br>
		문의내용<br>
			<textarea rows="10" cols="80" name="qna_content">${b.qna_content }</textarea><br>	
		<hr>
		<a href="deleteQnA.do?qna_no=${b.qna_no }"><p onclick="alert('삭제하시겠습니까?')">삭제</p></a>
		<input type="button" value="등록" onclick="checkContent()">
		<input id="re_button" type="button" value="취소" onclick="checkReject()">
	</form>
	
</body>
</html>