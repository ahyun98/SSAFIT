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
    <link rel="stylesheet" href="resources/css/style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  	
    <title>SSAFIT by 자료구조</title>

</head>


<body>

    <!-- NAV bar bootstrap -->
    <nav class="navbar navbar-light bg-light fixed-top">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
                aria-controls="offcanvasNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="main.html">SSAFIT by 자료구조</a>

            <!-- Navbar-toggler 누르면 뜨는 것들 -->
            <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar"
                aria-labelledby="offcanvasNavbarLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasNavbarLabel">SSAFIT by 자료구조</h5>
                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                        aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item p-2">
                            <a class="nav-link active" aria-current="page" href="main.html">HOME</a>
                            <!-- 누르면 토글 바 닫히는 기능 필요 -->
                        </li>
                        <li class="nav-item p-2">
                            <a class="nav-link active" href="video.html">Video</a>
                        </li>

                        <!-- 작은 글씨 -->
                        <li class="nav-item ms-4 mt-2">
                            <a class="nav-link active" href="./join.html" style="font-size: smaller ;">JOIN</a>
                        </li><li class="nav-item ms-4 mt-2">
                            <a class="nav-link active" href="./login.html" style="font-size: smaller ;">LOGIN</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <!-- carousel 사진 여러개 나오는 거 -->
    <div class="container" style="margin-top: 70px;">
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <iframe id="main_video" width="800" height="550" src="https://www.youtube.com/embed/gMaB-fG4u4g" class="d-block w-100"></iframe>
        </div>
    </div>

    <!-- video area -->
    <section class="grid__section">
        <div id="toVideo" class="page-sub-title text-center">
            <a href="video.html">Videos (Click here for more)</a>
        </div>
        <div class="grid">

            <div class="grid__item">
                <a href="https://www.youtube.com/embed/gMaB-fG4u4g" class="grid__item-link">
                    <div class="grid__item-img">
                        <iframe width="340" height="220" src="https://www.youtube.com/embed/gMaB-fG4u4g" class="attachment-thumbnail size-thumbnail wp-post-image"></iframe>
                    </div>
                </a>
                <h3 class="grid__item-title">전신 다이어트 최고의 운동 [칼소폭 찐 핵핵매운맛]</h3>
                <button id="video_in_main_01" type="button" class="btn btn-outline-primary btn-sm">Click!</button>
            </div>

            <div class="grid__item">
                <a href="https://www.youtube.com/embed/swRNeYw1JkY" class="grid__item-link">
                    <div class="grid__item-img">
                        <iframe width="340" height="220" src="https://www.youtube.com/embed/swRNeYw1JkY" class="attachment-thumbnail size-thumbnail wp-post-image"></iframe>
                    </div>
                </a>
                <h3 class="grid__item-title">하루 15분! 전신 칼로리 불태우는 다이어트 운동</h3>
                <button id="video_in_main_02" type="button" class="btn btn-outline-primary btn-sm">Click!</button>
                
            </div>
            <div class="grid__item">
                <a href="https://www.youtube.com/embed/54tTYO-vU2E" class="grid__item-link">
                    <div class="grid__item-img">
                        <iframe width="340" height="220" src="https://www.youtube.com/embed/54tTYO-vU2E" class="attachment-thumbnail size-thumbnail wp-post-image"></iframe>
                    </div>
                </a>
                <h3 class="grid__item-title">상체 다이어트 최고의 운동 BEST [팔뚝살/겨드랑이살/등살/가슴어깨라인]</h3>
                <button id="video_in_main_03" type="button" class="btn btn-outline-primary btn-sm">Click!</button>
            </div>
            <div class="grid__item">
                <a href="https://www.youtube.com/embed/QqqZH3j_vH0" class="grid__item-link">
                    <div class="grid__item-img">
                        <iframe width="340" height="220" src="https://www.youtube.com/embed/QqqZH3j_vH0" class="attachment-thumbnail size-thumbnail wp-post-image"></iframe>
                    </div>
                </a>
                <h3 class="grid__item-title">상체비만 다이어트 최고의 운동 [상체 핵매운맛]</h3>
                <button id="video_in_main_04" type="button" class="btn btn-outline-primary btn-sm">Click!</button>
            </div>
            
    </section>

    <!-- comment area -->
    <section class="grid__section">
        <div class="container">
            <div class="input-group" style="margin-top: 50px; margin-bottom: 50px;">
                <span class="input-group-text">Comment</span>
                <textarea class="form-control" aria-label="With textarea" id = "name"></textarea>
                <textarea class="form-control" aria-label="With textarea" id = "comment"></textarea>
                <button class="btn btn-outline-secondary" type="button" id="button-addon2">Submit</button>
            </div>
            <h3 class="grid__item-title">Reviews</h3>
            <ul id = "comments" class="list-group">
            </ul>
        </div>
    </section>


    <footer>
        <hr style="width: 85%; border: thin solid #333; text-align: center; margin: auto; text-align: center; margin-top: 20px;">
        <div class="container">
            <footer class="py-3 my-4">
              <ul class="nav justify-content-center  pb-3 mb-3">
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Contact</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">SNS</a></li>
              </ul>
              <p class="text-center text-muted">© 자료구조</p>
            </footer>
          </div>
    </footer>

    <script src="js/main.js"></script>
    <script src="js/person.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>