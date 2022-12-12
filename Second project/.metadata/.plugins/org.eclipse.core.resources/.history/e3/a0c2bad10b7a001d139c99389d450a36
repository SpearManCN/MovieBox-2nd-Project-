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
$(function (){init();});

function init(){
	var formObj1 = $("[name=mypage]");
	
	
	
}

function goMyPageInfo(){
	document.goMyPageInfoForm.submit();
	
}
function goBookList(){
	document.goBookListForm.submit();
	
	
}
function goMyWriting(){
	document.goMyWritingForm.submit();
	
}
function goPwChange(){
	document.goPwChangeForm.submit();
	
}
function goPhoneChange(){
	document.goPhoneChangeForm.submit();
	
}





</script>

</head>

<body>

<%@include file="/WEB-INF/views/commonHeader.jsp" %>
    <form name="goMyPageInfoForm" method="post" action="/myPageInfo.do"></form>
    <form name="goBookListForm" method="post" action="/myPageBookList.do" ></form>
    <center>
    
    
    <form name="myPageMyWritingList" method="post"  action="/myPageMyWritingList.do" >

        <table id="" class="" border=1 cellspacing=0 width=500 cellpadding=5>
            <head>
                <tr>
                    <td colspan="2" style="cursor:pointer" onClick="goMyPageInfo();"><center><b>내 정보</b></center></td>
                    
                    <td colspan="2" style="cursor:pointer" onClick="goBookList();"><center><b>대여 조회</b></center></td>
                    
                    <td colspan="2"><center><b>내가 쓴 글</b></center></td> 
                    
                </tr>
            
        </table><br>
            <!-- 내 정보-->
           
           <!-- 대여 조회-->
            <!--내가 쓴 글-->
            
        	<table border=1 cellspacing=0 width=500 cellpadding=5>
					<tr>
							<td>카테고리
							<td>제목
							<td>작성일
					</tr>
            
			 	<c:forEach  var="myfree"   items="${requestScope.myFreeList}"  varStatus="loopTagStatus"> 
					<tr>
							<td>자유게시판
							<td> ${myfree.title}
							<td> ${myfree.regDate}
					</tr>
				</c:forEach>
				<c:forEach  var="myQnA"  items="${requestScope.myQnAList}"  varStatus="loopTagStatus">
					<tr>
							<td>문의게시판
							<td> ${myQnA.title}
							<td> ${myQnA.regDate}
					</tr>
				</c:forEach>
				
        </table>
        
        
    </center>
    </form>
     <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>
