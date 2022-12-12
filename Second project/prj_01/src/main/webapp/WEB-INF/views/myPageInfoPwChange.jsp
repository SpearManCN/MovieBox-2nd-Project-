<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 변경</title><script src="/js/jquery-1.11.0.min.js"></script>
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
	// 기존 비밀번호가 맞는지 , 새 비밀번호가 유효성 통과했는지, 새 비밀번호확인이 잘 들어갔는지
	
	var confirmFlag = confirm("변경 하시겠습니까?");
	if(confirmFlag){
	$.ajax(
			{
				url:"/myPageInfoPwChangeProc.do"
				,type:"post"
				,data:$("[name=changForm]").serialize() 
					//, "selectedDate",selectedDate, "toolName",toolName}
					
				,success:function(idCnt){
					if(idCnt==1){
						alert("변경 완료됐습니다");
						document.goMyPageInfoForm.submit();
					}else{
						alert("변경 실패했습니다");
						document.goMyPageInfoForm.submit();
					}
					
				}
				
				,error:function( ){
					alert("웹서버 접속 실패");
				}
			}
		);
	
	
				}	
	
}
function checkCancle(){
	var confirmFlag = confirm("취소 하시겠습니까?");
	if(confirmFlag){document.goMyPageInfoForm.submit();}
	
	
}



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
        
        <p><b>비밀번호 변경</b></p>
    <form name="changForm">
        <input type="text" name="pastPwd" placeholder="현재 비밀번호"><br>
        <input type="text" name="newPwd"  placeholder="새 비밀번호"><br>
        <input type="button" class="" value="확인" onClick="checkChange();" ><br>
        <input type="button" class="" value="취소" onClick="checkCancle();" ><br>
    </form>

</center>
 <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>