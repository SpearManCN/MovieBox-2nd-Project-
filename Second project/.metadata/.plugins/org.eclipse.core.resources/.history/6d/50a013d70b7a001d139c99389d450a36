<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--====================================================================-->
<%@include file="/WEB-INF/views/common.jsp" %>
<!--====================================================================-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의게시판 글 수정</title>
<script>
	//취소
		function qnADetail(){
    	document.goForm.action="/boardQnADetail.do";
  		document.goForm.submit();
  	}  	
	//수정완료
	function qnABtnDetailUp(){
		if($("#title").val() == ""){
    		alert("제목을 입력해 주세요.");
    		return;
    	}
    	if($("#content").val() == ""){
    		alert("내용을 입력해 주세요.");
    		return;
    	}	
  		if( confirm("수정하시겠습니까?")== false){ 		
  			return;
  		}		
  		document.goForm.action="/boardQnASave.do"
  	  	document.goForm.submit();
	}
	
</script>
</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
<form name="goForm" method="post">

<input type="hidden" name="no" class="no" value="${boardQnaInfo.no}">
	<center>
    <form class="boardQnAUpDelForm" action="/board">
         <table border="1" cellpadding="5" style="border-collapse:collapse" align="center"> 
            <tr>
                <th>문 의</th>
                <td>
          		<select name="headerno" class="headerno" >
            		<option value="" >--문의내용--
		                <option value="0" ${boardQnaInfo.headerno == '0' ? 'selected="selected"' : '' }>계정 문의
		                <option value="1" ${boardQnaInfo.headerno == '1' ? 'selected="selected"' : '' }>공구 문의
		                <option value="2" ${boardQnaInfo.headerno == '2' ? 'selected="selected"' : '' }>서비스 문의
		                <option value="3" ${boardQnaInfo.headerno == '3' ? 'selected="selected"' : '' }>기타
            		</select> 
             </td>
         </tr>
            <tr>
                <th>제 목</th>
                <td>
                <input type="text" name="title"  id="title" class="" size="40" maxlength="30"value ="${boardQnaInfo.title}">
                </td>
            </tr>
            <tr>
                <th>내 용</th>
                <td>
                <textarea name="content"  id="content"  rows="13" cols="40"  maxlength="300">${boardQnaInfo.content}</textarea>
                </td>
            </tr>
    	</table>
    	<div style="height:15px;"></div>
    	
        <input type="button" value="수정완료" class="qnABtnDetailUp" onclick="qnABtnDetailUp();">
        <input type="button" value="취소" class="qnADetailBtn" onclick="qnADetail();">
      </center>
    </form>

   
        <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>