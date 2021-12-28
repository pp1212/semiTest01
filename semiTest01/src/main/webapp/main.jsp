<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css" type="text/css">
</head>
<body>
	<div id="wrap">
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
		<div id="main">
		<img class="image-thumbnail">
			<div id="locate">
			<jsp:include page="searchLocation.jsp"/>
			</div>
			<div>
				<div>${dataValue_tmp }</div>
				<div>${dataValue_pop }</div>
				<div>${today_uv }</div>
			</div>
		</div>
		<div id="footer">
		<jsp:include page="footer.jsp"/>
		</div>
	</div>
</body>
</html>