<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 문의내용 수정</title>
<link rel="stylesheet" href="css/mypage_qna.css" type="text/css">
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

	<%
		if(session.getAttribute("now_id") == null){
			%>
				<jsp:include page="header1.jsp" />
			<%
		}else{
			%>
				<jsp:include page="header2.jsp" />
			<%
		}
	%>
	<h2>MyPage</h2>
	<hr>
	<div class="mypage">
		<div class="menu_mypage">
			<form action="mypageMain.jsp" method="post">
				<input type="hidden" name="cust_id" value="${now_id }">
				<input class="menu_button1" id="1" type="submit" value="회원정보 관리">
			</form>
			<form action="listQnA_mypage.do" method="post">
				<input type="hidden" name="cust_id" value="${now_id }">
				<input class="menu_button2" type="submit" value="나의게시물 관리">
			</form>
			<form action="showLoc.jsp" method="post">
				<input class="menu_button3" type="submit" value="관심지역 관리">
			</form>
		</div>
		
		<div class="update_mypage">
			<h3 style="margin-right:0px;">나의 문의내용 수정</h3>
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
		</div>
	</div>
	
	<div id="footer">
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>
