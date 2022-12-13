<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>

<center>
<table width="1200px">
	<tr>
	<td align="left"><span style="font-size:50px; font-weight:bold;">Event</span>
	<tr>
	<td><hr style="height:10px; background-color:#EDD200;">
	<tr>
</table>
</center>

<table align="center" width="1200px">
<tr><td>
<div class="row" align="center">

	<div class="col">
	<div class="card" style="width: 18rem;">
  <img src="resources/img/event0.jpg" class="card-img-top" width="100px" height="200px">
  <div class="card-body">
    <h5 class="card-title">쉽고 많은 혜택, VIP!!</h5>
    <p class="card-text">2022.10.17~2022.12.31</p>
  </div>
</div>
</div>
	<div class="col"><div class="card" style="width: 18rem;">
  <img src="resources/img/event1.jpg" class="card-img-top" width="100px" height="200px" >
  <div class="card-body">
    <h5 class="card-title">아바타 4DX 리미티드 카드</h5>
    <p class="card-text">2022.10.17~2022.12.31</p>
  </div>
</div></div>
	<div class="col">	<div class="card" style="width: 18rem;">
  <img src="resources/img/event2.jpg" class="card-img-top" width="100px" height="200px">
  <div class="card-body">
    <h5 class="card-title">인스타그램 이모티콘 배포!</h5>
    <p class="card-text">2022.10.17~2022.12.31</p>
  </div>
</div></div>
	
</div>

</table>




















<%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>