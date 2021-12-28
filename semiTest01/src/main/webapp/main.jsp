<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
	
	<jsp:include page="searchLocation.jsp"/>
	<div>
		<div>${dataValue_tmp }</div>
		<div>${dataValue_pop }</div>
		<div>${today_uv }</div>
	</div>
	
</body>
</html>