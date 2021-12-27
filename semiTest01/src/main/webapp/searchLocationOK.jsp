<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="l" items="${list }">
			<ul>
				<li><a href="searchXY.do?district=${l.district }&dong=${l.dong}">${l.province } ${l.district } ${l.dong }</a></li><br>
			</ul>
	</c:forEach>
</body>
</html>
