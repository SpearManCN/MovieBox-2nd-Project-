<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
    
    
    
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<script src="/js/jquery-1.11.0.min.js"></script>
<script>


$(function (){ 
	
});


	function goMyPageInfo(){
		document.myPageInfo.submit();
		
	}
	function goMyWriting(){
		document.myPageMyWritingList.submit();
		
	}
	function viewList(){
	} 
	
	function goCancle(no1,no2){
		$("[name=cancleNo]").val(no1);
		$("[name=cancleToolNo]").val(no2);
		if(confirm("예약을 취소하시겠습니까?")){
			
			$.ajax(
    				{
    					url:"/bookCancleProc.do"
    					,type:"post"
    					,data:$("[name=goForm]").serialize() 
    						
    					,success:function(idCnt){
    						if(idCnt==2){
    							alert("예약 취소 됐습니다.");
    							
			document.goForm.action="/myPageBookList.do"
			document.goForm.submit();
    							
    						}else{
    							alert("예약 취소에 실패했습니다");
    							return;
    						}
    						
    					}
    					,error:function( ){
    						alert("웹서버 접속 실패");
    					}
    				}
    			);
			
			
			
			
		}
			
			
		
		
	}
	
	
</script>

</head>

<body>
<form name="goForm" method="post"><input type="hidden" name="cancleNo"><input type="hidden" name="cancleToolNo"></form>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
<form name="cancleForm" method="post"><input type="hidden" name="cancleNo" >   </form>
    <form name="myPageInfo" method="post" action="/myPageInfo.do"></form>
    <form name="myPageMyWritingList" method="post"  action="/myPageMyWritingList.do" ></form>

	<form name="myPageBookList" method="post" action="/myPageBookList.do">
    <center>
        <table id="" class="" border=1 cellspacing=0 width=500 cellpadding=5>
            <head>
                <tr>
                    <td colspan="2" style="cursor:pointer" onClick="goMyPageInfo();"><center><b>내 정보</b></center></td>
                    
                    <td colspan="2"><center><b>대여 조회</b></center></td>
                    
                    <td colspan="2" style="cursor:pointer" onClick="goMyWriting();"><center><b>내가 쓴 글</b></center></td> 
                    
                </tr>
                
        </table>
        <br>
        <table border=1 cellspacing=0 width=500 cellpadding=5> 
        <!-- 
           <tr>
           <td>제품사진</td> <td>제품명</td> <td>대여일</td> <td>반납예정일</td> <td>반납상태</td> <td>연체</td>
           </tr>
           -->
	           

			<c:forEach var="onBooking" items="${requestScope.onBookingList}" varStatus="loopTagStatus">
			<c:forEach var="jijum" items="${requestScope.jijumList}" varStatus="loopTagStatus">
				<c:if test="${onBooking.jijumNo == jijum.no}">	
					<tr >
						<td align="center">
						<img src="resources/img/${onBooking.toolNo}.jpg" width="180" height="180">
						<td>제품명 : ${onBooking.toolName}
							<br>예약일 : ${onBooking.bookDate}
							<br>지점명 : ${jijum.name}   
							<br>지점전화번호 : ${jijum.phone}     
							<br>지점주소 : ${jijum.addr}
							<br>반납예정일 : ${onBooking.returnDate}
							<br>반납 상태 : 예약중
							<br><span style="cursor:pointer" onclick="goCancle(${onBooking.no},${onBooking.toolNo});">[예약 취소]</span>
					</tr>
				</c:if>
				
			</c:forEach> 
			</c:forEach> 
			
			
			<c:forEach var="book" items="${requestScope.myBookList}" varStatus="loopTagStatus">
			<c:forEach var="jijum" items="${requestScope.jijumList}" varStatus="loopTagStatus">
				<c:if test="${book.jijumNo == jijum.no}">	
					<tr >
						<td align="center"><img src="resources/img/${book.toolNo}.jpg" width="180" height="180">
						<td>제품명 : ${book.toolName}
							<br>대여일 : ${book.rentalDate}
							<br>지점명 : ${jijum.name}   
							<br>지점전화번호 : ${jijum.phone}     
							<br>지점주소 : ${jijum.addr}
							<br>반납예정일 : ${book.returnDate}
							<br>반납 상태 : 대여중
					</tr>
				</c:if>
				
			</c:forEach> 
			</c:forEach> 

			
			
			<c:forEach var="return" items="${requestScope.returnList}" varStatus="loopTagStatus">
			<c:forEach var="jijum" items="${requestScope.jijumList}" varStatus="loopTagStatus">
				<c:if test="${return.jijumNo == jijum.no}">	
					<tr >
						<td align="center"><td align="center"><img src="resources/img/${return.toolNo}.jpg" width="180" height="180">
						<td>제품명 : ${return.toolName}
							<br>대여일 : ${return.rentalDate}
							<br>지점명 : ${jijum.name}   
							<br>지점전화번호 : ${jijum.phone}     
							<br>지점주소 : ${jijum.addr}
							<br>반납예정일 : ${return.returnDate}
							<br>반납 상태 : 반납완료
					</tr>
				</c:if>
				
			</c:forEach> 
			</c:forEach> 			
			
 		</table> 
           
           
           
            </body>
        </table>
    </center>
    </form>
    <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>
