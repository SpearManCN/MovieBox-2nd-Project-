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
	function buy(no){
		if(confirm("구매하시겠습니까?")){
			
			
			$.ajax({
				url:"/buyStore.do"
				,type:"post"
				,data:{"storeNo":no}
				,success:function(idCnt){
					
					if( idCnt==1 ) {
						alert("구매 완료");
						if(confirm("구매내역으로 이동하시겠습니까?")){
							document.goForm.action="/myPageStoreList.do";
							document.goForm.submit();
							return;
						}else{
							
							return;
							
						}
						
						
				
					} else {
						alert("구매 실패, 관리자에게 문의하세요")
						return;
					}
					
				}
				,error:function(){ alert("웹서버 접속 실패!") }
			});
			
			
			
			
			
		}
	}
	function jjim(no){
		
	if(confirm("장바구니에 저장하시겠습니까?")){
			
			
			$.ajax({
				url:"/jjimStore.do"
				,type:"post"
				,data:{"storeNo":no}
				,success:function(idCnt){
					
					if( idCnt==1 ) {
						alert("저장 완료");
						if(confirm("장바구니로 이동하시겠습니까?")){
							document.goForm.action="/myPageBasket.do";
							document.goForm.submit();
							return;
						}else{
							
							return;
							
						}
						
						
				
					} else {
						alert("저장 실패, 관리자에게 문의하세요")
						return;
					}
					
				}
				,error:function(){ alert("웹서버 접속 실패!") }
			});
			
			
			
			
			
		}
		
	}

</script>



</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>

<form name="goForm" method="post"></form>


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


<c:forEach var="store" items="${requestScope.storeInfo}" varStatus="loopTagStatus">
	<c:if test="${store.PART == 0}">
	
	<div class="col">
	<div class="card" style="width: 18rem;">
  <img src="resources/img/snack${store.NO}.jpg" class="card-img-top" width="80px" height="300px">
  <div class="card-body">
    <h5 class="card-title">${store.NAME}</h5>
    <p class="card-text">가격 : ${store.PRICE} </p>
    <a onclick="buy('${store.NO}');" class="btn btn-primary">구매하기</a>
    <a onclick="jjim('${store.NO}');" class="btn btn-primary">♥</a>
  </div>
	</div>
	</div>

</c:if>
</c:forEach>

	



	
	
</div>
</table>
<br><br>







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


<c:forEach var="store" items="${requestScope.storeInfo}" varStatus="loopTagStatus">
	<c:if test="${store.PART == 1}">
	
	<div class="col">
	<div class="card" style="width: 18rem;">
  <img src="resources/img/snack${store.NO}.jpg" class="card-img-top" width="80px" height="300px">
  <div class="card-body">
    <h5 class="card-title">${store.NAME}</h5>
    <p class="card-text">가격 : ${store.PRICE} </p>
    <a onclick="buy('${store.NO}');" class="btn btn-primary">구매하기</a>
    <a onclick="jjim('${store.NO}');" class="btn btn-primary">♥</a>
  </div>
	</div>
	</div>

</c:if>
</c:forEach>
	
	
	
</div>
</table>



<br><br>






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

<c:forEach var="store" items="${requestScope.storeInfo}" varStatus="loopTagStatus">
	<c:if test="${store.PART == 2}">
	
	<div class="col">
	<div class="card" style="width: 18rem;">
  <img src="resources/img/snack${store.NO}.jpg" class="card-img-top" width="80px" height="300px">
  <div class="card-body">
    <h5 class="card-title">${store.NAME}</h5>
    <p class="card-text">가격 : ${store.PRICE} </p>
    <a onclick="buy('${store.NO}');" class="btn btn-primary">구매하기</a>
    <a onclick="jjim('${store.NO}');" class="btn btn-primary">♥</a>
  </div>
	</div>
	</div>

</c:if>
</c:forEach>
	
</div>
</table>



<%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>