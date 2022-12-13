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
	<td align="left"><span style="font-size:50px; font-weight:bold;">Store</span>
	<tr>
	<td><hr style="height:10px; background-color:#EDD200;">
	<tr>
</table>
</center>

<table align="center" wdith="1000px">
<tr><td>
<img src="resources/img/popcorn.jpg" class="card-img-top" width="100px" height="200px">

</td>
<td width="200px" style="font-size:70px">Snack</td>
<tr><td colspan="2"><hr></td>
</table>

<table width="1000px" align="center">
<tr><td>
<div class="row" align="center">

	<div class="col">
	<div class="card" style="width: 18rem;">
  <img src="resources/img/snack0.jpg" class="card-img-top" width="80px" height="300px">
  <div class="card-body">
    <h5 class="card-title">팝콘</h5>
    <p class="card-text">가격 : 6000원 </p>
    <a onclick="alert(55);" class="btn btn-primary">구매하기</a>
    <a onclick="alert(55);" class="btn btn-primary">♥</a>
  </div>
</div>
</div>
	<div class="col"><div class="card" style="width: 18rem;">
  <img src="resources/img/snack1.jpg" class="card-img-top" width="100px" height="300px" >
  <div class="card-body">
    <h5 class="card-title">핫도그</h5>
    <p class="card-text">가격 : 3000원 </p>
    <a onclick="alert(55);" class="btn btn-primary">구매하기</a>
    <a onclick="alert(55);" class="btn btn-primary">♥</a>
  </div>
</div></div>
	<div class="col">	<div class="card" style="width: 18rem;">
  <img src="resources/img/snack2.jpg" class="card-img-top" width="100px" height="300px">
  <div class="card-body">
    <h5 class="card-title">나쵸</h5>
    <p class="card-text">가격 : 4500원</p>
    <a onclick="alert(55);" class="btn btn-primary">구매하기</a>
    <a onclick="alert(55);" class="btn btn-primary">♥</a>
  </div>
</div></div>
	
</div>
</table>








<table align="center" wdith="1000px">
<tr><td>
<img src="resources/img/coke.jpg" class="card-img-top" width="100px" height="200px">

</td>
<td width="200px" style="font-size:70px">drink</td>
<tr><td colspan="2"><hr></td>
</table>

<table width="1000px" align="center">
<tr><td>
<div class="row" align="center">

	<div class="col">
	<div class="card" style="width: 18rem;">
  <img src="resources/img/drink0.jpg" class="card-img-top" width="80px" height="300px">
  <div class="card-body">
    <h5 class="card-title">탄산</h5>
    <p class="card-text">가격 : 3000원 </p>
    <a onclick="alert(55);" class="btn btn-primary">구매하기</a>
    <a onclick="alert(55);" class="btn btn-primary">♥</a>
  </div>
</div>
</div>
	<div class="col"><div class="card" style="width: 18rem;">
  <img src="resources/img/drink1.jpg" class="card-img-top" width="100px" height="300px" >
  <div class="card-body">
    <h5 class="card-title">아메리카노(ice)</h5>
    <p class="card-text">가격 : 3000원 </p>
    <a onclick="alert(55);" class="btn btn-primary">구매하기</a>
    <a onclick="alert(55);" class="btn btn-primary">♥</a>
  </div>
</div></div>
	<div class="col">	<div class="card" style="width: 18rem;">
  <img src="resources/img/drink2.jpg" class="card-img-top" width="100px" height="300px">
  <div class="card-body">
    <h5 class="card-title">커피(hot)</h5>
    <p class="card-text">가격 : 3000원</p>
    <a onclick="alert(55);" class="btn btn-primary">구매하기</a>
    <a onclick="alert(55);" class="btn btn-primary">♥</a>
  </div>
</div></div>
	
</div>
</table>










<table align="center" wdith="1000px">
<tr><td>
<img src="resources/img/giftcard.jpg" class="card-img-top" width="100px" height="200px">

</td>
<td width="200px" style="font-size:70px">Card</td>
<tr><td colspan="2"><hr></td>
</table>

<table width="1000px" align="center">
<tr><td>
<div class="row" align="center">

	<div class="col">
	<div class="card" style="width: 18rem;">
  <img src="resources/img/card0.jpg" class="card-img-top" width="80px" height="300px">
  <div class="card-body">
    <h5 class="card-title">기프트카드</h5>
    <p class="card-text">가격 : 10000원 </p>
    <a onclick="alert(55);" class="btn btn-primary">구매하기</a>
    <a onclick="alert(55);" class="btn btn-primary">♥</a>
  </div>
</div>
</div>
	<div class="col"><div class="card" style="width: 18rem;">
  <img src="resources/img/card1.jpg" class="card-img-top" width="100px" height="300px" >
  <div class="card-body">
    <h5 class="card-title">기프트카드</h5>
    <p class="card-text">가격 : 20000원 </p>
    <a onclick="alert(55);" class="btn btn-primary">구매하기</a>
    <a onclick="alert(55);" class="btn btn-primary">♥</a>
  </div>
</div></div>
	<div class="col">	<div class="card" style="width: 18rem;">
  <img src="resources/img/card2.jpg" class="card-img-top" width="100px" height="300px">
  <div class="card-body">
    <h5 class="card-title">기프트카드</h5>
    <p class="card-text">가격 : 30000원</p>
    <a onclick="alert(55);" class="btn btn-primary">구매하기</a>
    <a onclick="alert(55);" class="btn btn-primary">♥</a>
  </div>
</div></div>
	
</div>
</table>



<%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>