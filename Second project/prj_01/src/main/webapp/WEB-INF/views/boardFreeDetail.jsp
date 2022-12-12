<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>자유게시판 상세보기</title>
    <script>
    	function goBoardFree(){
    		document.boardFreeForm.submit();
    	}
    	// 신고
    	function goBoardReportForm(){
    		document.boardReportForm.submit();
    	}
    	// 수정,삭제
    	function goBoardFreeUpDelForm(){
    		if("<%= session.getAttribute("email") %>"!="${requestScope.boardFreeInfo.email}"){
    			alert("작성자만 가능합니다");
    			return;
    		}
    		
    		document.boardFreeUpDelForm.submit();
    	}
    	function goBoardFreeDelete(){
    		if("<%= session.getAttribute("email") %>"!="${requestScope.boardFreeInfo.email}"
    			&&"<%= session.getAttribute("email") %>"!="system"		
    		){
    			alert("작성자만 가능합니다");
    			return;
    		}
    		if( confirm("삭제 하시겠습니까?")== false){ 		
      			return;
      		}	
    		document.boardFreeDeleteForm.submit();
    	}	
 
    </script>
</head>

<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
    <center>
        <form name="boardFreeDetailForm" action="/boardFreeDetail.do" method="post">
            <h2>
                자유게시판
            </h2>
            <table class="" border="1" cellpadding="5" cellspacing="0" style="border-collapse:collapse" align="center"
                width="700px">
              <tr>
                    <th width="350" >${requestScope.boardFreeInfo.title}</th>             
                    <td>${requestScope.boardFreeInfo.email}</td>
                    <td>${requestScope.boardFreeInfo.readCount}</td>
                    <td>${requestScope.boardFreeInfo.regDate}</td>
                </tr>
                <tr nowrap height="100">
                    <td colspan="4" style=" vertical-align: top; text-align: left;">
                         ${boardFreeInfo.content}
                    </td>
                </tr>
            </table>
            <table class="" border="0" cellpadding="5" cellspacing="0" align="center" width="600px">
                <tr>
                    <td align="left"><input type="button" value="목록" onclick="goBoardFree();"></td>
                    <td align="right"><input type="button" value="신고" onclick="goBoardReportForm();">
                    <input type="button" value="수정"  onclick="goBoardFreeUpDelForm();">
                        <input type="button" value="삭제" class="" onclick="goBoardFreeDelete();">   
                    </td>
                </tr>
            </table>
        </form>
            </center>
                                                          
	<form name="boardFreeForm"action="/boardFree.do" method="post" ></form>
	<form name="boardReportForm"action="/boardReport.do" method="post" >
		<input type="hidden" name="no" class="no" value="${boardFreeInfo.no}">
		<input type="hidden" name="partno" class="partno" value="${boardFreeInfo.partno}">
	</form>
	<form name="boardFreeUpDelForm"action="/boardFreeUpDel.do" method="post" >
		 <input type="hidden" name="no" class="no" value="${boardFreeInfo.no}">
	</form>
	<form name="boardFreeDeleteForm"action="/boardFreeDelete.do" method="post" >
		 <input type="hidden" name="no" class="no" value="${boardFreeInfo.no}">
	</form>
	
	
    <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>