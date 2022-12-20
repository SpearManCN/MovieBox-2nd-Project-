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
	<td align="right">
	<!-- 
	<select>
	<option value="0">인기순</option>
	<option value="1">평점순</option>
	<option value="2">개봉순</option>
	</select> -->
</table>
</center>

<table align="center" width="1200px">
<tr><td>
<div class="row" align="center">

<!--  
<c:forEach var="movie" items="${requestScope.movieInfo}" varStatus="loopTagStatus">
	<div class="col">
	<div class="card" style="width: 18rem;">
  <img src="resources/img/mainBodyMovie${loopTagStatus.index}.jpg" class="card-img-top" width="100px" height="300px">
  <div class="card-body">
    <h5 class="card-title">${movie.NAME}</h5>
    <p class="card-text">예매율 : ${movie.RATE }  평점 : ${movie.SCORE }  <br>개봉일 : ${movie.OPENDATE}</p>
    <input tpye="button" onclick="alert(55);" class="btn btn-primary" style="width:120px" value="예매하기">
  </div>
</div>
</div>
</c:forEach>
-->



</div>

</table>

<table align="center" width="800px">
<tr width="100%" height="800px"><td>
<img src="resources/img/mainBodyMovie${requestScope.movieInfo5.NO}.jpg" class="card-img-top" width="100%" height="100%">
	<tr width="100%" height="100px"><td style="font-size:50px; font-weight:bold;" align="center">${requestScope.movieInfo5.NAME}</td></tr>
	<tr width="100%" height="100px"><td style="font-size:50px;font-weight:bold;" align="center">
	장르 : ${requestScope.movieInfo5.GENRE}
	<tr width="100%" height="100px"><td style="font-size:50px; font-weight:bold;" align="center">관람가 : ${requestScope.movieInfo5.AGELIMIT }세
	<tr width="100%" height="100px"><td style="font-size:50px; font-weight:bold;" align="center">감독 : ${requestScope.movieInfo5.DIRECTOR }
	<tr width="100%" height="100px"><td style="font-size:50px; font-weight:bold;" align="center">런타임 : ${requestScope.movieInfo5.RUNTIME }
	<tr width="100%" height="100px"><td style="font-size:50px; font-weight:bold;" align="center">개봉일 : ${requestScope.movieInfo5.OPENDATE }
	<tr width="100%" height="100px"><td style="font-size:50px; font-weight:bold;" align="center">제작년도 : ${requestScope.movieInfo5.MAKINGYEAR }
	<tr width="100%" height="100px"><td style="font-size:50px; font-weight:bold;" align="center">평점 : ${requestScope.movieInfo5.SCORE }/10   예매율 : ${requestScope.movieInfo5.RATE }%
</table>









<%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>