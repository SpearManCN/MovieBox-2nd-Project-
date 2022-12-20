<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<script src="/js/jquery-1.11.0.min.js"></script>
<script>
function goLogin(){document.commonForm.action="/loginForm.do";document.commonForm.submit(); }
function goLoginJoin(){document.commonForm.action="/loginJoinForm.do";document.commonForm.submit();}
function goMyPage(){document.commonForm.action="/myPageHome.do";document.commonForm.submit(); }
function goMainForm(){document.commonForm.action="/mainForm.do";document.commonForm.submit(); }
function goLogout(){
	if(confirm("로그아웃 하시겠습니까?")){
		document.commonForm.action="/logout.do";document.commonForm.submit();
	}
	
	 }

</script>

<form name="commonForm" method="post"></form>
<div style="height:300px; background-color: white; border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);         border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;" class="b-example-divider" align="center" >

 <span style="cursor:pointer" onclick="goMainForm();"><img src="resources/img/movieBox2.jpg" >
 <Span  style="font-size: 150px; color:red; font-weight: bold ; font-style: italic;" >Movie Box</Span>
 
 </span></div>

  <nav class="py-2 bg-light border-bottom">
    <div class="container d-flex flex-wrap">
      <ul class="nav me-auto">
      <li class="nav-item">&emsp;&emsp;&emsp;</li>
        <li class="nav-item"><a href="movieHome.do" class="nav-link link-dark px-2 active" aria-current="page" style="font-weight: bold ;" >영화</a></li>
         <li class="nav-item">&emsp;&emsp;&emsp;</li>
        <li class="nav-item"><a href="reserveForm.do" class="nav-link link-dark px-2" style="font-weight: bold ;">예매</a></li>
         <li class="nav-item">&emsp;&emsp;&emsp;</li> 
        <li class="nav-item"><a href="/storeForm.do" class="nav-link link-dark px-2" style="font-weight: bold ;">스토어</a></li>
         <li class="nav-item">&emsp;&emsp;&emsp;</li>
        <li class="nav-item"><a href="/eventForm.do" class="nav-link link-dark px-2" style="font-weight: bold ;">이벤트/공지사항</a></li>
          <li class="nav-item">&emsp;&emsp;&emsp;</li>
        <li class="nav-item"><a href="/serviceForm.do" class="nav-link link-dark px-2" style="font-weight: bold ;">고객센터</a></li>
      
       </ul>
      <ul class="nav">
      
      		<%
      		if(session.getAttribute("memNo")==null){session.setAttribute("memNo",0);}
			int memNo = (int)session.getAttribute("memNo");
			if(memNo==0){	%>
        <li class="nav-item"><span class="nav-link link-dark px-2" style="cursor:pointer" onclick="goLogin();">Login</span></li>
			        <li class="nav-item"><span class="nav-link link-dark px-2" style="cursor:pointer" onclick="goLoginJoin();">Sign up</span></li>
			
			<%}else if(memNo==1){%>
			        <li class="nav-item"><span class="nav-link link-dark px-2" style="cursor:pointer" onclick="goAdmin();">AdminPage</span></li>
			
    				   <li class="nav-item"><span class="nav-link link-dark px-2" style="cursor:pointer" onclick="goLogout();">Logout</span></li>
			
			<%}else {%>
			      <li class="nav-item"><span class="nav-link link-dark px-2" style="cursor:pointer" onclick="goMyPage();">My Page</span></li>
    				   <li class="nav-item"><span class="nav-link link-dark px-2" style="cursor:pointer" onclick="goLogout();">Logout</span></li>
 				<%}
		%>
      
  
     
     
     
     
      </ul>
    </div>
  </nav>