<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--====================================================================-->
<%@include file="/WEB-INF/views/common.jsp" %>
<!--====================================================================-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의게시판 상세보기</title>
<script>
	function goBoardQna(){
		document.boardQnAForm.submit();
	}
	// 신고
	function goBoardReportForm(){
		document.boardReportForm.submit();
	}
	// 수정,삭제
	function goBoardQnaUpDelForm(){
		
		if("<%= session.getAttribute("email") %>"!="${requestScope.boardQnaInfo.email}"){
			alert("작성자만 가능합니다");
			return;
		}
		document.boardQnAUpDelForm.submit();
	}
	function goBoardQnaDelete(){
		if("<%= session.getAttribute("email") %>"!="${requestScope.boardQnaInfo.email}"
			&&"<%= session.getAttribute("email") %>"!="system"
		){
			alert("작성자만 가능합니다");
			return;
		}
		
		
		
		
		
		if(confirm("삭제 하시겠습니까?")==false){
			return;
		}
		document.boardQnADeleteForm.submit();
	}
	
</script>
</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
	<center>
        <form name="boardQnADetailForm" action="/boardQnADetail.do" method="post">
            <table class="" border="1" cellpadding="5" cellspacing="0" style="border-collapse:collapse" align="center"
                width="700px">
                <tr>
                    <th width="350">${requestScope.boardQnaInfo.title}</th>
                    <td>${requestScope.boardQnaInfo.email}</td>
                    <td>${requestScope.boardQnaInfo.readCount}</td>
                    <td>${requestScope.boardQnaInfo.regDate}</td>
                </tr>
                <tr nowrap height="100">
                    <td colspan="4" style=" vertical-align: top; text-align: left;">
                        ${boardQnaInfo.content}
                    </td>
                </tr>
            </table>
            <table class="" border="0" cellpadding="5" cellspacing="0" align="center" width="600px">
                <tr>
                    <td align="left"><input type="button" value="목록" class="qnABtn" onclick="goBoardQna();"></td>
                    <td align="right"><input type="button" value="신고" class="" onclick="goBoardReportForm();" >
                    <input type="button" value="수정" class="" onclick="goBoardQnaUpDelForm();" > 
                        <input type="button" value="삭제" class="" onclick="goBoardQnaDelete();">
                    </td>
                </tr>
            </table>
        </form>
    </center>
    
    <form name="boardQnAForm" action="/boardQnA.do" method="post" ></form>
    <form name="boardReportForm" action="/boardReport.do" method="post" >
    	<input type="hidden" name="no" class="no" value="${boardQnaInfo.no}">
    	<input type="hidden" name="partno" class="partno" value="${boardQnaInfo.partno}">
    	
    </form>
    <form name="boardQnAUpDelForm" action="/boardQnAUpDel.do" method="post" >
    	<input type="hidden" name="no" class="no" value="${boardQnaInfo.no}">
    </form>
    <form name="boardQnADeleteForm" action="/boardQnADelete.do" method="post" >
    	<input type="hidden" name="no" class="no" value="${boardQnaInfo.no}">
    </form>
    
        <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>