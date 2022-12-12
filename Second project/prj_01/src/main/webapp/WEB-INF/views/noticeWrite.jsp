<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--====================================================================-->
<%@include file="/WEB-INF/views/common.jsp" %>
<!--====================================================================-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 글쓰기</title>
<script>
function noticeListBtn(){
	document.noticeForm.submit();
}

 function noticeRegBtn(){
       var text = $("#title").val();	       
    	if(text.trim() == ""){
    		alert("제목을 입력해 주세요.");
    		return;
    	}
    	 if(text.length > 50){
    		 alert("제목은 50자 이상은 입력 할 수 없습니다.");
     		return;
    	 }	 
    	if($("#content").val() == ""){
    		alert("내용을 입력해 주세요.");
    		return;
    	}	
   	 if($("#content").val().length > 250){
		 alert("내용은 250자 이상은 입력 할 수 없습니다.");
 		return;
	 }
 	document.noticeWriteForm.submit();
    }
    	

</script>
</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
	<center>
    <form name="noticeWriteForm" action="/noticeSave.do" method="post" >
      <p><b>공지사항 글쓰기</b></p>
        <table border="1" cellpadding="5" style="border-collapse:collapse" align="center"> 
            <tr>
                <th>제 목</th>
                <td>
                <input type="text" name="title" id="title" class="" size="40" maxlength="30">
                </td>
            </tr>
            <tr>
                <th>내 용</th>
                <td>
                <textarea name="content" id="content" class="" rows="13" cols="40"  maxlength="300"></textarea>
                </td>
            </tr>
    </table>
    <div style="height:15px;"></div>		
    <input type="button" value="등록" class="" onclick="noticeRegBtn();">
    <input type="button" value="목록보기" class="" onclick="noticeListBtn();">
    </form>
	</center>

    <form name="noticeForm" action="/notice.do" method="post" ></form>
    <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>