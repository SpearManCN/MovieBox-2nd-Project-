<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--====================================================================-->
<%@include file="/WEB-INF/views/common.jsp" %>
<!--====================================================================-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 글 수정</title>
<script>
	//취소
		function noticeDetail(){
    	document.goForm.action="/noticeDetail.do";
  		document.goForm.submit();
  	}  	
	//수정완료
	function nociteDetailUp(){
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
  		document.goForm.action="/noticeSave.do"
  	  	document.goForm.submit();
	}
	
</script>
</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
<form name="goForm" method="post">

<input type="hidden" name="no" class="no" value="${boardNoticeInfo.no}">
	<center>
    <form class="noticeUpDelForm" action="/noticeUpDel.do">
         <table border="1" cellpadding="5" style="border-collapse:collapse" align="center"> 
            <tr>
                <th>제 목</th>
                <td>
                <input type="text" name="title"  id="title" class="" size="40" maxlength="30"value ="${boardNoticeInfo.title}">
                </td>
            </tr>
            <tr>
                <th>내 용</th>
                <td>
                <textarea name="content"  id="content"  rows="13" cols="40"  maxlength="300">${boardNoticeInfo.content}</textarea>
                </td>
            </tr>
    	</table>
    	<div style="height:15px;"></div>
    	
        <input type="button" value="수정완료" class="noticeBtnDetailUp" onclick="nociteDetailUp();">
        <input type="button" value="취소" class="noticeDetailBtn" onclick="noticeDetail();">
      </center>
    </form>

   
        <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>