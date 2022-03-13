<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <!-- 부트스트랩 코드-->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous">

            <!-- 구글 폰트 사이트-->
            <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
                rel="stylesheet">

            <!-- css-->
            <link rel="stylesheet" href="css/style.css">
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">

            <title>SSAFIT by 자료구조</title>
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

                    <form action="commentInsert" method="POST" style="font-weight: 1000;">
                        <input type="hidden" name="videoid" value="${id }" class="form-control">
                        작성자 : <input type="text" name="writer">
                        <span style="margin-left:1%; margin-right:1%;">댓글 : <input type="text" name="comment"> </span>
                        <button type="submit" class="btn btn-success btn-sm">등록</button>
                    </form>
                    <br>
                    <h2 class="grid__item-title" style="font-weight: 500;">Reviews</h2>
                    <br><br>
                    <div style="font-size:medium; font-weight:200;">
                        <c:forEach items="${comments }" var="commenteach">
                            <span>WRITER: ${commenteach.writer }</span><br>
                            <span>COMMENT : ${commenteach.comment }</span>


                            <button type="button" class="btn btn-warning btn-sm"
                                onclick="location.href='modify?no=${commenteach.no }&&videoid=${commenteach.videoid }'">수정</button>
                            <button type="button" class="btn btn-danger btn-sm"
                                onclick="location.href='delete?no=${commenteach.no }&&videoid=${commenteach.videoid }'">삭제</button>
                            <br><br>
                        </c:forEach>
                    </div>
                </div>
            </section>

            <jsp:include page="/Videos/footer.jsp" flush="false" />
        </body>

        </html>