<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<head>
<script>
	function gologout(){
		var checkFlag = confirm("로그아웃 하시겠습니까?");
		if(checkFlag){
			gologin();
		}
	}
	//=====================================================================
	function gologin(){
		document.headerForm.action="/loginPageForm.do";
		document.headerForm.method="post";
		document.headerForm.submit();
		
	}
	//======================================================================
	function goMyPage_header(){
		document.headerForm.action="/myPageInfo.do";
		document.headerForm.method="post";
		document.headerForm.submit();
	}
	//======================================================================
	function goNotice_header(){
		document.headerForm.action="/notice.do";
		document.headerForm.submit();}
	//======================================================================
	function goBooking_header(){
		document.headerForm.action="/toolRentMainForm.do";
		document.headerForm.submit();}
	//======================================================================
	function goBookiList_header(){
		document.headerForm.action="/myPageBookList.do";
		document.headerForm.method="post";
		document.headerForm.submit();
		}
	//======================================================================
	function goList_header(){document.headerForm.action="/boardQuestion.do"; document.headerForm.submit();}
	function goAdmin(){
		document.headerForm.action="/adminStatsForm.do";
		document.headerForm.method="post";
		document.headerForm.submit();
		
	}
	
</script>
</head>
<body>
	<form name="headerForm"></form>
		<div style="float:right">
		<!-- 
			<c:if test="${sessionScope.email=='system'}">
				<span style="cursor:pointer" onClick="">관리자페이지</span>
			</c:if>
			<c:if test="${empty sessionScope.email}">
				<span style="cursor:pointer" onClick="gologin();">로그인</span>
			</c:if>
			<c:if test="${!empty sessionScope.email}">
				<span style="cursor:pointer" onClick="gologout();">로그아웃</span>
				<span style="cursor:pointer" onClick="goMyPage_header();">마이페이지</span>
			</c:if>
		-->
		
		<%
			String email = (String)session.getAttribute("email");
			if(email==null){	%>
				<span style="cursor:pointer" onClick="gologin();">로그인</span>
			<%}else if(email.equals("system")){%>
				<span style="cursor:pointer" onClick="goAdmin();">관리자페이지</span>
				<span style="cursor:pointer" onClick="gologout();">로그아웃</span>
				<span style="cursor:pointer" onClick="goMyPage_header();">마이페이지</span>
			<%}else if(email!="system"){%>
				<span style="cursor:pointer" onClick="gologout();">로그아웃</span>
				<span style="cursor:pointer" onClick="goMyPage_header();">마이페이지</span>
			<%}
		%>
		
		</div>
<br>

	<center>
    	<div style="font-size:50pt;">공구 도서관</div></center> 
   	<center>
<br><br><br><div>
		   <span style="cursor:pointer" onClick="goNotice_header();">[공지사항]</span>&emsp;&emsp;&emsp;&emsp; 
		   <span style="cursor:pointer" onClick="goBooking_header();">[대여 예약하기]</span>&emsp;&emsp;&emsp;&emsp;
		   <span style="cursor:pointer" onClick="goBookiList_header();">[예약 조회]</span>&emsp;&emsp;&emsp;&emsp; 
		   <span style="cursor:pointer" onClick="goList_header();">[게시판]</span>&emsp;&emsp;&emsp;&emsp;</div>
   </center>
   
   <br><br>
</body>
</html>