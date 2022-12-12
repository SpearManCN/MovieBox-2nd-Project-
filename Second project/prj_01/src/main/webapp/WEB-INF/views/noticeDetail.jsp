<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!--====================================================================-->
<%@include file="/WEB-INF/views/common.jsp" %>
<!--====================================================================-->   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>공지사항 상세보기</title>
    
    <script>
    	function goNotice(){
    		document.noticeForm.submit();
    		}
    	// 수정,삭제
    	function goNoticeUpDelForm(){
    		document.noticeUpDelForm.submit();
    	}
    	function goNoticeDelete(){
    		if(confirm("삭제 하시겠습니까?")==false){
    			return;
    		}
    		document.noticeDeleteForm.submit();
    	}
    	
    </script>
    

</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
    <form name="noticeDetailForm" action="/noticeDetail.do" method="post">
    <center>
    <center><div style="font-size:20pt;">공지사항</div></center><br><br>
            <table class="" border="1px" cellpadding="5" cellspacing="0" style="border-collapse:collapse" align="center" width="600px">
                <tr>
                    <td colspan="2" >${requestScope.boardNoticeInfo.title}</td>
                    <td><input type="hidden"></td>
                </tr>
                <tr>
                    <td>${requestScope.boardNoticeInfo.email}</td>
                    <td><span style="cursor:pointer" onclick="">${requestScope.boardNoticeInfo.readCount}</span></td>
                    <td><span style="cursor:pointer" onclick=""></span>${requestScope.boardNoticeInfo.regDate}</td>
                </tr>
                <tr nowrap height="100">
                    <td colspan="4"  >${boardNoticeInfo.content}</td>
                </tr>
            </table>
			<table class="" border="0" cellpadding="5" cellspacing="0" align="center" width="600px">
			   <tr>
            <td align="left"><input type="button" value="목록으로" onclick="goNotice();"></td>
            <c:if test="${email == 'system'}">     
             <td align="right"><input type="button" value="수정"  onclick="goNoticeUpDelForm();">
             						<input type="button" value="삭제"  onclick="goNoticeDelete();">
             </td>
             </c:if>
             </tr>
    </form>
</center>

	<form name="noticeForm" action="/notice.do" method="post" ></form>
     <form name="noticeUpDelForm" action="/noticeUpDel.do" method="post" >
    	<input type="hidden" name="no" class="no" value="${boardNoticeInfo.no}">
    </form>  
     <form name="noticeDeleteForm" action="/noticeDelete.do" method="post" >
    	<input type="hidden" name="no" class="no" value="${boardNoticeInfo.no}">
    </form> 
    
    <%@include file="/WEB-INF/views/commonFooter.jsp" %>
  
    </form>
</body>
</html>