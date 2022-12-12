<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/common.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>자유게시판 글쓰기</title>
    <script> 
    function goBoardFree(){
		document.boardFreeForm.submit();
	}
    
    function goBoardSave(){
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
   	 if($("#content").val() .length > 250){
		 alert("내용은 250자 이상은 입력 할 수 없습니다.");
 		return;
	 }
   	  
   	 		
    	document.boardFreeWriteForm.submit();
    	}
    	
    
    
    </script>
</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
    <form name="boardFreeWriteForm" id="boardFreeWriteForm"  method="post" action="/boardFreeSave.do" >
    <input type="hidden" name="email" value="<%= session.getAttribute("email") %>" >
    <center>
        <p><b>자유게시판 글쓰기</b></p>
        <table border="1" cellpadding="5" style="border-collapse:collapse" align="center"> 
           
            <tr>
                <th>제 목</th>
                <td>
                <input type="text" name="title"  id="title" class="" size="40" maxlength="30">
                </td>
            </tr>
            <tr>
                <th>내 용</th>
                <td>
                <textarea name="content"  id = "content"  class="" rows="13" cols="40"  maxlength="300"></textarea>
                </td>
            </tr>
    </table>
    <div style="height:15px;"></div>

    <input type="button" value="등록" class="" onClick="goBoardSave();">
    <input type="button" value="목록보기" onClick="goBoardFree();">
	</center>
    </form>
    
	<form name="boardFreeForm" action="/boardFree.do" method="post" ></form>
	<%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>