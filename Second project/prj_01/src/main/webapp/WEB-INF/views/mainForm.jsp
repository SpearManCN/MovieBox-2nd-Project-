<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
 <script src="/js/jquery-1.11.0.min.js"></script>
 
 <style>
     

 .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
     .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>
<script>
function goDetail(no){
	$("[name=movieNo]").val(no);
	
	document.goForm.action="/movieDetail.do";
	document.goForm.submit();
	
}


</script>
</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
  
  
  
  <form name="goForm" method="post"><input name="movieNo" type="hidden"></form>
  
   <div id="myCarousel" class="carousel slide" data-bs-ride="carousel" >
    <div class="carousel-indicators" >
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
    
    
      <div class="carousel-item active" style="height:300px; " >
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true"  preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>
		
        <div class="container" >
        
          <div class="carousel-caption text-start" >
          
          <table>
          <tr>
          <td width="10%"></td>
          <td align="center" style="cursor:pointer" onclick="goDetail(6);">
          
          <img src="resources/img/moviePic3.jpg" width="1030" height="230"></td>
          <td width="10%">
          </td>
          
          </table>
         
        
          </div>
        </div>
      </div>
      
      
      
      
      
      <div class="carousel-item" style="height:300px">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>

        <div class="container">
          <div class="carousel-caption">
          
          <table>
          <tr>
          <td width="0%"></td>
          <td align="center" style="cursor:pointer" onclick="goDetail(1);">
          
          <img src="resources/img/moviePic2.jpg" width="1030" height="230"></td>
          <td width="20%">
          </td>
          
          </table>
            
            
            
          </div>
        </div>
      </div>
      
      
      
      <div class="carousel-item" style="height:300px">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>
        <div class="container">
          <div class="carousel-caption text-end">
          
          
          <table>
          <tr>
          <td width="20%"></td>
          <td align="center" style="cursor:pointer" onclick="goDetail(0);">
          
          <img src="resources/img/moviePic1.jpg" width="830" height="230"></td>
          <td width="20%">
          </td>
          
          </table>
            
            
            
          </div>
        </div>
      </div>
    </div>
    
    
    
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden"></span>
    </button>
  </div>

  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  <div class="container marketing">

    <!-- Three columns of text below the carousel -->


    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    <div class="row featurette">
    
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1" align="center"><span style="font-size:50px;">영웅</span></h2><br>
        <span class="text-muted" style="font-size:30px;" align="center">감독&nbsp;:&nbsp;</span><span style="font-size:30px;">윤제균</span><br><br><br>
        <p class="lead">줄거리<br><br><span>드디어 1909년 10월 26일,
이날만을 기다리던 안중근은
하얼빈역에 도착한 이토 히로부미를 향해
주저 없이 방아쇠를 당긴다.
현장에서 체포된 그는 전쟁 포로가 아닌 살인의 죄목으로,
조선이 아닌 일본 법정에 서게 되는데…

누가 죄인인가, 누가 영웅인가!</span></p>
      </div>
      <div class="col-md-5">
        <img src="resources/img/mainBodyMovie0.jpg" width="500" height="500">
       
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
    
      <div class="col-md-7 order-md-2">     
        <h2 class="featurette-heading fw-normal lh-1" align="center"><span style="font-size:50px;">탄생</span></h2><br>
        <span class="text-muted" style="font-size:30px;" align="center">감독&nbsp;:&nbsp;</span><span style="font-size:30px;">박흥식</span><br><br><br>
        <p class="lead">줄거리<br><br><span>1845년, 조선 근대의 문을 열다!
새로운 세상을 꿈꾼 청년 김대건의 위대한 모험

호기심 많고 말보다 행동이 앞서는 청년 김대건.
조선 최초의 신부가 되라는 운명을 기꺼이 받아들이고,
신학생 동기 최양업, 최방제와 함께 마카오 유학길에 나선다.
나라 안팎으로 외세의 침략이 계속되고 아편전쟁이 끝나지 않은 시기,
김대건은 바다와 육지를 종횡무진 누비며 마침내 조선 근대의 길을 열어젖힌다!</span></p>
      </div>
      
      <div class="col-md-5 order-md-1">
   <img src="resources/img/mainBodyMovie1.jpg" width="100%" height="500">
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1" align="center"><span style="font-size:50px;">본즈 앤 올</span></h2><br>
        <span class="text-muted" style="font-size:30px;" align="center">감독&nbsp;:&nbsp;</span><span style="font-size:30px;">루카 구아다니노</span><br><br><br>
        <p class="lead">줄거리<br><br><span>“우리가 이렇게 될 줄 알았어”
사랑에 굶주린 소녀와 소년의 뼛속 시린 첫사랑 
열여덟 살이 된 매런은 유일한 가족인 아빠마저 곁을 떠나자 한 번도 보지 못한 엄마를 찾는 길에 오른다.
절망 가운데 자신과 같은 식성을 가진 소년 ‘리’를 만나고, 
동행하는 길 위에서 사랑을 느끼지만 매런에게 사랑은 늘 파멸과 마찬가지였기에 이 감정을 숨길 수밖에 없다.
평범한 삶을 갈구하는 매런은 리와 끝까지 함께 할 수 있을까? 
이 길의 끝에서 매런은 고대하던 것을 찾을 수 있을까?</span></p>
      </div>
      <div class="col-md-5">
      <img src="resources/img/mainBodyMovie2.jpg" width="500" height="500">
      </div>
    </div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

  </div><!-- /.container -->


  <!-- FOOTER -->

</main>




	<%@include file="/WEB-INF/views/commonFooter.jsp" %>

</body>
</html>