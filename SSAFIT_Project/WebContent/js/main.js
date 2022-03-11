let xhr = new XMLHttpRequest();
xhr.onreadystatechange = responseVideo;
xhr.open("GET", "./data/video.json", true);
xhr.send(null)

let videoId;
function responseVideo() {
  //완벽하게 통신이 끝났을때
  if (xhr.readyState == 4) {
    //에러없이 응답이 성공적으로 처리가 되었을떄
    if (xhr.status == 200) {
      let videoHtml = "";
      let videoList = JSON.parse(xhr.response)
      //우리가 일반적으로 알고있는 반복문
      // for (let i = 0; i < videoList.length; i++){
      //   videoList[i]
      // }
      //forEach
      videoList.forEach((video) => {
        videoId = video.id;
        videoHtml += `
        <div class="card" style="width: 18rem;">
        <iframe
        width="270"
        height="210"
        marginheight="50"
        src="https://www.youtube.com/embed/${video.id}"
        title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen
        ></iframe>
            <div class="card-body">
                <h5 class="card-title">${video.title}</h5>
                <p class="card-text">${video.part}</p>
                <a href="${video.url}" target="_blank" class="btn btn-outline-primary">Watch</a>
                <a href="#" class="btn btn-outline-danger">Review</a>
            </div>
        </div>`
      });


      document.querySelector("#video-area").innerHTML = videoHtml;
    }
  }
}

let video_in_main_01 = document.querySelector("#video_in_main_01")
video_in_main_01.addEventListener("click", function(){
    document.querySelector("#main_video").setAttribute("src", "https://www.youtube.com/embed/gMaB-fG4u4g")
})
let video_in_main_02 = document.querySelector("#video_in_main_02")
video_in_main_02.addEventListener("click", function(){
    document.querySelector("#main_video").setAttribute("src", "https://www.youtube.com/embed/swRNeYw1JkY")
})
let video_in_main_03 = document.querySelector("#video_in_main_03")
video_in_main_03.addEventListener("click", function(){
    document.querySelector("#main_video").setAttribute("src", "https://www.youtube.com/embed/54tTYO-vU2E")
})
let video_in_main_04 = document.querySelector("#video_in_main_04")
video_in_main_04.addEventListener("click", function(){
    document.querySelector("#main_video").setAttribute("src", "https://www.youtube.com/embed/QqqZH3j_vH0")
})


//리뷰 기능
let commentxhr= new XMLHttpRequest();
commentxhr.onreadystatechange = responseComment;
commentxhr.open("GET", "./data/comment.json", true);
commentxhr.send(null)



// 영상이 나오면 comment 붙이기
function responseComment() {
    //완벽하게 통신이 끝났을때
    if (commentxhr.readyState == 4) {
      //에러없이 응답이 성공적으로 처리가 되었을떄
      if (commentxhr.status == 200) {
        let commentHtml = "";
        let commentlist = JSON.parse(commentxhr.response)
        let videoList = JSON.parse(xhr.response)
        for (let i = 0; i < commentlist.length; i++){
                if(commentlist[i].id==videoId){
                commentHtml+=`${commentlist[i].name} | ${commentlist[i].comment}`
                const commentitem = document.createElement('li');
                commentitem.setAttribute("class", "list-group-item")
                commentitem.innerHTML = commentHtml;
                let ul = document.querySelector('#comments');
                ul.appendChild(commentitem);      
            }
        }
      }
    }
  }
let addcommentbtn = document.querySelector("#button-addon2");
// comment submit
addcommentbtn.addEventListener('click',addcomment)
import { writeFileSync } from 'fs';

function addcomment() {
  const obj = {
      id : videoId,
      name : document.querySelector("name"),
      comment : document.querySelector("#comment")
  }

  writeFileSync('comment.json',JSON.stringify(obj));
}