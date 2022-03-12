<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSAFIT</title>
</head>
<body>
	<form action="modify" method="post">
		<input type="hidden" name="id" value="${commenteach.videoid }">
		<input type="hidden" name="no" value="${commenteach.no}">
		글쓴이 : <input type="text" name="writer" placeholder="${commenteach.writer }">
		<br>
		내용 : <input type="text" name="comment"  placeholder="${commenteach.comment }">
		<br>
		<input type="submit" value="수정">
	</form>
</body>
</html>