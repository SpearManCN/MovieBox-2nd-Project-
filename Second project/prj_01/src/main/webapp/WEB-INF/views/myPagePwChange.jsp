<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.104.2">
    <title>Signin Template · Bootstrap v5.2</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/">

    <script src="/js/jquery-1.11.0.min.js"></script>

    
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">

<script>

	function changePw(){
		if(confirm("변경 하시겠습니까?")){
			
			$.ajax({
				url:"/changePw.do"
				,type:"post"
				,data:$("[name=changeForm]").serialize()
				,success:function(idCnt){
					
					if( idCnt==1 ) {
						alert("변경 완료");
						document.goForm.action="/mainForm.do";
						document.goForm.submit();
					} else {
						alert("변경 실패, 재입력해주십시오.")
						$("[name=newPw]").val("");
						$("[name=oldPw]").val("");
						$("[name=newPw]").focus();
					}
					
				}
				,error:function(){ alert("웹서버 접속 실패!") }
			});
			
			
			
			
			
			
			
		}
	}



</script>



























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

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
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
function goHome(){
	document.goForm.action="/mainForm.do";
	document.goForm.submit();
}


</script>


    
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
  </head>
  <body class="text-center" style="background-color:#EAEAEA">
  <form name="goForm" method="post" ></form>
  
  
  <div style="height:200px"></div>
  <div style="display: flex;
    align-items: center;
    justify-content: center;">
    <div style="vertical-align: middle;">
<main class="form-signin w-100 m-auto">
  <form name="changeForm" method="post">
   <img src="resources/img/Logo.jpg" width="100px" height="100px" style="cursor:pointer" onclick="goHome();">
    <h1 class="h3 mb-3 fw-normal" style="font-weight:bold; font-style: italic;"></h1>

    <div class="form-floating">
      <input name="oldPw" type="password" class="form-control" id="floatingInput" placeholder="Password">
      <label for="floatingInput">Current PW</label>
    </div>
    <div class="form-floating">
      <input name="newPw" type="password" class="form-control" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">New PW</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        
      </label>
    </div>
    <input type="button" class="w-100 btn btn-lg btn-primary" type="submit" style="width:510px; background-color:gray;" onclick="changePw();" value="Change PW">
    <p class="mt-5 mb-3 text-muted">&copy; 2017–2022</p>
  </form>
</main>
</div></div>
 </body>
</html>