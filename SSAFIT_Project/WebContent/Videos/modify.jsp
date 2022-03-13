<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>SSAFIT</title>
        </head>

        <body>
            <jsp:include page="/Videos/header.jsp" flush="false" />

            <div class="container" style="margin-top: 70px;">
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                    <iframe id="main_video" width="800" height="700" src="https://www.youtube.com/embed/${id }"
                        class="d-block w-100"></iframe>
                </div>
                <button type="button" class="btn  btn-success" onclick="location.href='video'"
                    style="margin-top:1%;">영상목록으로 돌아가기</button>
            </div>


            <section class="grid__section">
                <div class="container">

                    <form action="modify" method="post" style="font-weight: 1000; margin-top:1%;">
                        <input type="hidden" name="id" value="${commenteach.videoid }">
                        <input type="hidden" name="no" value="${commenteach.no}">
                        WRITER : <input type="text" name="writer" value="${commenteach.writer }">

                        <span style="margin-left:1%; margin-right:1%;">COMMENT : <input type="text" name="comment"
                                value="${commenteach.comment }"> </span>


                        <button type="submit" class="btn btn-warning btn-sm">수정</button>
                    </form>

                    <br>
                    <h2 class="grid__item-title" style="font-size:large; font-weight: 500;">Reviews</h2>
                    <br>
                    <div style="font-size:medium; font-weight:200;">
                        <c:forEach items="${comments }" var="commenteach">
                            <span>WRITER: ${commenteach.writer }</span><br>
                            <span>COMMENT : ${commenteach.comment }</span>
                        </c:forEach>
                    </div>

                </div>
            </section>

            <jsp:include page="/Videos/footer.jsp" flush="false" />
            <div class="container">
            </div>
        </body>

        </html>