<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSAFIT</title>
</head>
<body>
	<!-- highest viewNum -->
	<h2>Popular</h2>
	<c:forEach items="${listViewNum }" var="sortedvideo">
		${video.title }
		<iframe width="270" height="210" src="https://www.youtube.com/embed/${video.id }"></iframe>
	</c:forEach>
	
	<!-- upper -->
	<h2>Upper body</h2>
	<c:forEach items="${listUpper }" var="sortedvideo">
		${video.title }
		<iframe width="270" height="210" src="https://www.youtube.com/embed/${video.id }"></iframe>
	</c:forEach>
	
	<!-- lower -->
	<h2>Lower body</h2>
	<c:forEach items="${listLower }" var="sortedvideo">
		${video.title }
		<iframe width="270" height="210" src="https://www.youtube.com/embed/${video.id }"></iframe>
	</c:forEach>
	
	<!-- whole -->
	<h2>Whole body</h2>
	<c:forEach items="${listWhole }" var="sortedvideo">
		${video.title }
		<iframe width="270" height="210" src="https://www.youtube.com/embed/${video.id }"></iframe>
	</c:forEach>
	
	<!-- mid -->
	<h2>Crunch</h2>
	<c:forEach items="${listMid }" var="sortedvideo">
		${video.title }
		<iframe width="270" height="210" src="https://www.youtube.com/embed/${video.id }"></iframe>
	</c:forEach>
</body>
</html>