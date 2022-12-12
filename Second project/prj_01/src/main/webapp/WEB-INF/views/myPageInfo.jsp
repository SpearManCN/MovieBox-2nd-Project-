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
$(function(){   init(); });

function init(){

 	
	
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

    <center>
    <form name="goMyPageInfoForm" method="post" action="/myPageInfo.do"></form>
    <form name="goBookListForm" method="post" action="/myPageBookList.do" ></form>
    <form name="goMyWritingForm" method="post"  action="/myPageMyWritingList.do" ></form>
    <form name="goPwChangeForm" method="post" action="/myPageInfoPwChange.do" ></form>
    <form name="goPhoneChangeForm" method="post" action="/myPageInfoPhoneChange.do" ></form>

    
    <form name="mypage" class="mypage">

        <table id="myInfo" class="move" border=1 cellspacing=0 width=500 cellpadding=5>
            <head>
                <tr>
                    <td colspan="2"><center><b>내 정보</b></center></td>
                    
                    <td colspan="2" style="cursor:pointer" onClick="goBookList();"><center><b>대여 조회</b></center></td>
                    
                    <td colspan="2" style="cursor:pointer" onClick="goMyWriting();"><center><b>내가 쓴 글</b></center></td> 
                 
                </tr>
            </head>
            <body>
            <!-- 내 정보-->
           <tr>
                <td>이메일</td> <td colspan="5">${memberInfo.get(0).get('EMAIL')}</td> 
           </tr>
           <tr>
                <td>비밀번호 변경</td>
                <td colspan="5">
                    <input type="button" value="비밀번호 변경" class="changePwd" onClick="goPwChange();">
                        
                </td>
           </tr>
           <tr>
                <td>이름</td> <td colspan="5">${memberInfo.get(0).get('NAME')}</td>
           </tr>
           <tr>
                <td>핸드폰 번호</td> <td colspan="2">${memberInfo.get(0).get('PHONE')}</td><td colspan="3">
                <input type="button" value="핸드폰 번호 변경" class="changePwd" onClick="goPhoneChange();"  ></td>
           </tr>
           <tr>
           		<td>주소</td> <td colspan="5"> ${memberInfo.get(0).get('ADDR')}</td>
           <!-- 대여 조회-->
           <!--내가 쓴 글-->
             </body>
        </table>
    </form>
    </center>
     <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>
