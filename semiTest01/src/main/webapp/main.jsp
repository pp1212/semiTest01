<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@300&display=swap" rel="stylesheet">
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
				<table class="table table-hover" style="width: 700px;text-align: center;margin-left: auto;margin-right: auto;">
					<c:forEach var="l" items="${list }">
					<tr>
						<td><a href="searchXY.do?district=${l.district }&dong=${l.dong}">${l.province } ${l.district } ${l.dong }</a></td>
					</tr>
					</c:forEach>
				</table>
				<jsp:include page="change_weather.jsp"/>
				<jsp:include page="change_fashion.jsp"/>
			</div>
		</div>
		<div id="footer">
		<jsp:include page="footer.jsp"/>
		</div>
	</div>
</body>
</html>