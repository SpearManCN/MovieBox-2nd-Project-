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
	<td align="left"><span style="font-size:50px; font-weight:bold;">Movie Chart</span>
	<tr>
	<td><hr style="height:10px; background-color:#EDD200;">
	<tr>
	<td align="right"><select>
	<option value="0">인기순</option>
	<option value="1">평점순</option>
	<option value="2">개봉순</option>
	</select>
</table>
</center>



<div class="row" align="center">
<div class="col"></div>
	<div class="col">
	<div class="card" style="width: 18rem;">
  <img src="resources/img/mainBodyMovie2.jpg" class="card-img-top" >
  <div class="card-body">
    <h5 class="card-title">영화제목</h5>
    <p class="card-text">예매율 :   평점 :   <br>개봉일 : </p>
    <a onclick="alert(55);" class="btn btn-primary">예매하기</a>
  </div>
</div>
</div>
	<div class="col"><div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">예매율 :   평점 : </p>
    <a href="#" class="btn btn-primary">예매하기</a>
  </div>
</div></div>
	<div class="col">	<div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div></div>
<div class="col">	<div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div></div>
	<div class="col"></div>
</div>




<%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>