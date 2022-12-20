<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="/js/jquery-1.11.0.min.js"></script>

<script>
	$(function(){
		var seatStatus = "${requestScope.seatInfo}";
		
		
		for(var i=1; i<26; i++){
			if(seatStatus.charAt(i-1)=="0"){
				$("[name=s"+i+"]").css("background-color","red");
				$("[name=selSeat]").append("<option value="+i+">"+i+"</option>");
			}
			
		}return;
		
		
		
	});

	function goHome(){
		document.goForm.action="/mainForm.do";
		document.goForm.submit();
		
	}
	function goMyTicket(){
		document.goForm.action="/myPageBookList.do";
		document.goForm.submit();
		
	}
	
	

</script>



























</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>

<form name="goForm" method="post"></form>

<center>
<table width="1200px">
	<tr>
	<td align="left"><span style="font-size:50px; font-weight:bold;">Reserve</span>
	<tr>
	<td><hr style="height:10px; background-color:#EDD200;">
	<tr>
</table>
</center>
<br>
<br>






<table align="center" width="600px">
 <tr><td  height="500px" colspan="2"><img src="resources/img/mainMovie${requestScope.movieNo}.jpg" width="100%" height="100%"> </td>
 </tr>
 <tr bgcolor="#F3F3F3" height="80px"><td align="center" width="30%" style="font-size:30px;">영화명</td><td align="center" style="font-size:30px;">${requestScope.reserveInfo["MOVIENAME"]}</td>
</tr>
 <tr bgcolor="#E1E1E1" height="80px"><td align="center" style="font-size:30px;">상영일</td><td align="center" style="font-size:30px;">${requestScope.reserveInfo["SHOWDATE"]}</td>
</tr>
 <tr bgcolor="#F3F3F3" height="80px"><td align="center" style="font-size:30px;">구매일</td><td align="center" style="font-size:30px;">${requestScope.reserveInfo["BUYDATE"]}</td>
</tr>
 <tr bgcolor="#E1E1E1" height="80px"><td align="center" style="font-size:30px;">상영관/시간</td><td align="center" style="font-size:30px;">${requestScope.reserveInfo["THEATERNO"]}관 / ${requestScope.reserveInfo["STARTTIME"]}</td>
</tr>
<tr bgcolor="#F3F3F3" height="80px"><td align="center" style="font-size:30px;">좌석</td><td align="center" style="font-size:30px;">${requestScope.reserveInfo["SEATNO"]}번 좌석</td>
</tr>
</table>
<br><br>
<div align="center" height="400px">
<input onclick="goHome();" align="center" style="font-weight:bold; font-size:20px; color:white; background-color:#489CFF; border-radius:15px; width:80px; height:40px" type="button" value="Home">&nbsp;&nbsp;&nbsp;&nbsp;
<input onclick="goMyTicket();" align="center" style="font-weight:bold; font-size:20px; color:white; background-color:#489CFF; border-radius:15px; width:130px; height:40px" type="button" value="My Ticket">
</div>
<br><br><br><br><br><br><br><br>
















<%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>



