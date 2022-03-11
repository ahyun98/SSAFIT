<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSAFIT</title>
</head>
<body>
	<!-- total videos -->
	<h2>Videos</h2>
	<c:forEach items="${list }" var="video">
		<a href = "view?id=${video.id }&&title=${video.url }">${video.title }</a><br>
		<iframe width="270" height="210" src="https://www.youtube.com/embed/${video.id }"></iframe><br>
	</c:forEach>
</body>
</html>