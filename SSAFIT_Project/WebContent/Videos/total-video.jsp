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

            <section class="grid__section" style="margin-top: 5%;">
                <div id="toVideo" class="page-sub-title text-center">Video 목록</div>
                <div class="grid">
                    <c:forEach items="${list }" var="video">
                        <div class="grid__item">
                            <div class="grid__item-img">
                                <iframe width="310" height="210" src="https://www.youtube.com/embed/${video.id }"
                                    class="attachment-thumbnail size-thumbnail wp-post-image"></iframe><br>
                            </div>

                            <h3 class="grid__item-title" style="font-size: medium;"> <a
                                    href="view?id=${video.id }&&title=${video.url }"
                                    style="text-decoration-line: none;"> ${video.title }</a></h3>

                        </div>
                    </c:forEach>
                </div>
                <hr
                    style="width: 70%; border: thin solid #333; text-align: center; margin: auto; text-align: center; margin-top: 20px; margin-bottom : 20px;">
                <div id="toVideo" class="page-sub-title text-center">
                    <a href="sortedvideo" style="text-decoration-line: none;">부위별로 영상보기</a>
                </div>
            </section>
            <jsp:include page="/Videos/footer.jsp" flush="false" />
        </body>

        </html>