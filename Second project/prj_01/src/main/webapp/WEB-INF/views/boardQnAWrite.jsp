<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--====================================================================-->
<%@include file="/WEB-INF/views/common.jsp" %>
<!--====================================================================-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의게시판 글쓰기</title>
<script>
	function QnaListBtn(){
		document.boardQnAForm.submit();
	}
	
	 function QnaRegBtn(){
	       var text = $("#title").val();	      
	       if($(".headerno").val()==""){alert("글머리를 정해주세요"); return;}
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
	    	document.boardQnAWriteForm.submit();
	    }
	    	
	
</script>
</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
	<center>
    <form name="boardQnAWriteForm" action="/boardQnASave.do" method="post" >
    
    <input type="hidden" name="email" value="<%= session.getAttribute("email") %>" >
        <table border="1" cellpadding="5" style="border-collapse:collapse" align="center"> 
            <tr>
                <th>문 의</th>
                <td>
            		<select name="headerno" class="headerno" >
            		<option value="">--문의내용--
		                <option value="0">계정 문의
		                <option value="1">공구 문의
		                <option value="2">서비스 문의
		                <option value="3">기타
            		</select> 
             	</td>
         	</tr>
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
    <input type="button" value="등록" class="" onclick="QnaRegBtn();">
    <input type="button" value="목록보기" class="" onclick="QnaListBtn();">
    </form>
	</center>

    <form name="boardQnAForm" action="/boardQnA.do" method="post" ></form>
    <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>