<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>핸드폰번호 변경</title>
    <script src="/js/jquery-1.11.0.min.js"></script>
<script>
$(function (){init();});

function init(){
	var formObj1 = $("[name=mypage]");
	
	
	
}

function goBookList(){
	document.goBookListForm.submit();
	
	
}
function goMyWriting(){
	document.goMyWritingForm.submit();
	
}
function checkChange(){
	// 기존 폰번호가 맞는지 , 새 폰번호가 유효성 통과했는지, 새 비밀번호확인이 잘 들어갔는지
	
	var confirmFlag = confirm("변경 하시겠습니까?");
	if(confirmFlag){document.goMyPageInfoForm.submit(); }
	
	
}
function checkCancle(){
	var confirmFlag = confirm("취소 하시겠습니까?");
	if(confirmFlag){document.goMyPageInfoForm.submit();}
	
	
}
function sendMessage(){}
function checkMessage(){}





</script>
    
    
    
</head>
<body>

<%@include file="/WEB-INF/views/commonHeader.jsp" %>


    <form name="goMyPageInfoForm" method="post" action="/myPageInfo.do"></form>
    <form name="goBookListForm" method="post" action="/myPageBookList.do" ></form>
    <form name="goMyWritingForm" method="post"  action="/myPageMyWritingList.do" ></form>
    <form name="goPwChangeForm" method="post" action="/myPageInfoPwChange.do" ></form>
    <form name="goPhoneChangeForm" method="post" action="/myPageInfoPhoneChange.do" ></form>
    <center>
        
        <p><b>핸드폰번호 변경</b></p>
    <form>
        <input type="text" class="" placeholder="현재 핸드폰번호"><br>
        <input type="text" class=""  placeholder="새 핸드폰번호"><br>
        <input type="button" value="인증번호 받기" onClick="sendMessage();" > 
        <input type="text" class=""  placeholder="인증번호"><br>
        <input type="button" value="인증번호 확인" onClick="checkMessage();" > 
        <input type="button" class="" value="확인" onClick="checkChange();"><br>
        <input type="button" class="" value="취소" onclick="checkCancle();"><br>
    </form>

</center>
 <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>