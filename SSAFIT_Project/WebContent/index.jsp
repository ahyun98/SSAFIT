<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- 부트스트랩 코드-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- 구글 폰트 사이트-->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">

    <!-- css-->
    <link rel="stylesheet" href="resources/css/main.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>SSAFIT by 자료구조</title>
    <style>
        * {
            background-color: #C7DDFD;
        }

        .div {
            background-color: #C7DDFD;
        }

        .container {
            background-color: inherit;
            border: #C7DDFD;
        }

        .slick-next {
            position: absolute !important;
            right: 40px;
            bottom: 130px;
            font-size: 0px;
            border: none;
            /* 기본 next 텍스트 글씨 숨기기 */
            color: #C7DDFD;
        }

        .slick-next:hover {
            opacity: 0.5;
        }

        .slick-next:before {
            content: url(./img/slide-arrow.png);
        }

        button.slick-prev.slick-arrow {
            display: none !important;

        }

        h1 {
            font-size: 60px;
            min-width: 11px;
            white-space: nowrap;
            margin: 0;
            position: fixed;
            color: transparent;
            top: 15%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        h1::before {
            content: "SSAFIT";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            color: #2E75B6;
            overflow: hidden;
            border-right: 1px solid rgb(255, 255, 255);
            animation: typing 3s 1;
        }

        @keyframes typing {
            0% {
                width: 0%;
            }

            50% {
                width: 100%;
            }

            100% {
                width: 0%;
            }
        }
    </style>
</head>


<body>
    <h1>SSAFIT 선송_아현</h1>

    <div class="container">
        <script type="text/javascript" src="./js/index.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>

    </div>
    <div style="text-align: center; padding: 15% 25%; position: float;">
        <img src="resources/img/health3.png" width="1000px" style="display: flex; align-items: center;">
    </div>
    <a href="/main">
        <button class="slick-next slick-arrow" aria-label="Next" type="button" style="">Next</button>
    </a>

</body>