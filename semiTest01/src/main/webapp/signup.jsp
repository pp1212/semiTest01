<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	function checkForm() {
		var regExpPwd = /^[0-9a-zA-Z]{8,20}$/;
		var regExpName = /^[가-힣]*$/;
		var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
		var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		var pwd = document.loginForm.cust_pwd.value;
		var pwdCheck = document.loginForm.cust_pwdCheck.value;
		var name = document.loginForm.cust_name.value;
		var phone = document.loginForm.cust_phone.value;
		var email = document.loginForm.cust_email.value;
		var addr = document.loginForm.cust_addr.value;
		var idDp = document.loginForm.idDuplication.value;
		
		if(idDp != "idCheck"){
			alert("아이디 중복 검사를 해주세요");
			return false;
		}
		if(!regExpPwd.test(pwd)){
			alert("비밀번호는 영문, 숫자 조합 8자 이상 입력해 주세요");
			document.loginForm.pwd.focus();
			return false;
		}
		if(pwd != pwdCheck){
			alert("비밀번호를 동일하게 입력해 주세요");
			return false;
		}
		if(!regExpName.test(name)){
			alert("이름은 한글만 입력해 주세요");
			document.loginForm.name.focus();
			return false;
		}
		if(!regExpPhone.test(phone)){
			alert("전화번호 형식에 맞지 않습니다");
			document.loginForm.phone.focus();
			return false;
		}
		if(!regExpEmail.test(email)){
			alert("이메일 형식에 맞지 않습니다");
			document.loginForm.email.focus();
			return false;
		}
		if(addr == ""){
			alert("주소를 입력해 주세요");
			document.loginForm.addr.focus();
			return false;
		}
		document.loginForm.submit();
	}
	
	function kakaopost() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	           document.querySelector("#zipcode").value = data.zonecode;
	           document.querySelector("#address").value =  data.address
	        }
	    }).open();
	}
	
	function winopen(){
		if(document.loginForm.cust_id.value == "" || document.loginForm.cust_id.value.length < 0){
			alert("아이디를 먼저 입력해 주세요")
			document.loginForm.cust_id.focus();
		}else{
			window.open("signupIdCheck.jsp?cust_id="+document.loginForm.cust_id.value,"","width=500, height=300");
		}
	}
 
 function inputIdCheck(){
	 document.loginForm.idDuplication.value = "idUncheck";
 }
</script>
</head>
<body>
	<h2>회원 가입</h2>
	<form action="signupOK.do" method="post" name="loginForm">
		<table>
			<tr>
				<td id="title">아이디</td>
				<td>
					<input type="text" name="cust_id" onkeydown="inputIdCheck()"> 
					<input type="button" value="아이디 중복 검사" onclick="winopen()">
					<input type="hidden" name="idDuplication" value="idUncheck">
				</td>
			</tr>
			<tr>
				<td id="title">비밀번호</td>
				<td>
					<input type="password" name="cust_pwd"> *숫자,영문 조합 8자 이상
				</td>
			</tr>
			<tr>
				<td id="title">비밀번호 확인</td>
				<td>
					<input type="password" name="cust_pwdCheck">
				</td>
			</tr>
			<tr>
				<td id="title">이름</td>
				<td>
					<input type="text" name="cust_name">
				</td>
			</tr>
			<tr>
				<td id="title">성별</td>
				<td>
				
					<c:if test="${gender=='male' || gender==''}">
						<input type="radio" name="gender_code" value="1" checked="checked">남성	
						<input type="radio" name="gender_code" value="2">여성
					</c:if>
					<c:if test="${gender=='female'}">
						<input type="radio" name="gender_code" value="1">남성	
						<input type="radio" name="gender_code" value="2"  checked="checked">여성
					</c:if>
					
				</td>
			</tr>
			<tr>
				<td id="title">휴대전화</td>
				<td>
					<input type="tel" name="cust_phone">
				</td>
			</tr>
			<tr>
				<td id="title">이메일</td>
				<td>
					<input type="email" name="cust_email" value="${email}">
				</td>
			</tr>
			<tr>
	            <td id="title" width="200">우편번호</td>
	            <td>
	            	<input type="text" name="zipcode" id="zipcode" size="7" readonly="readonly"> 
	                <input type="button" value="우편번호찾기" onclick="kakaopost()">
	            </td>
	        </tr>
			<tr>
				<td id="title">주소</td>
				<td>
					<input type="text" name="cust_addr" id="address" size="70" readonly="readonly">
				</td>
			</tr>
		</table>
		<br>
		<input type="button" value="회원가입" onclick="checkForm()">
	</form>
</body>
</html>