<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<iframe width="600" height="450"
		src="https://www.youtube.com/embed/${id }"></iframe>
	<br>
	<input type="button" value="영상목록으로 돌아가기"
		onclick="location.href='video'"> 댓글 목록
	<c:forEach items="${comments }" var="commenteach">
		<p>작성자 : ${commenteach.writer }</p>
		<p>${commenteach.comment }</p>
		<input type="button" value="수정"
			onclick="location.href='modify?no=${commenteach.no }'">
		<input type="button" value="삭제"
			onclick="location.href='delete?no=${commenteach.no }&&videoid=${commenteach.videoid }'">
		<br>
	</c:forEach>
	<br> 댓글 작성하기
	<form action="commentInsert" method="POST">
		<input type="hidden" name="videoid" value="${id }"> 작성자 : <input
			type="text" name="writer"> 댓글 : <input type="text"
			name="comment"> <input type="submit" value="등록">
	</form>
</body>
</html>