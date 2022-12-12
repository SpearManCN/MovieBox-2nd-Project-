<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--====================================================================-->
<%@include file="/WEB-INF/views/common.jsp" %>
<!--====================================================================-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 묻는 질문 상세보기</title>
<script>
	function QuestionList(){
		document.boardQuestionForm.submit();
	}
	// 수정,삭제
	function QuestionUpDelForm(){
		document.questionUpDelForm.submit();
	}
	function QuestionDelete(){
		if(confirm("삭제 하시겠습니까?")==false){
			return;
		}
		document.questionDeleteForm.submit();
	}
</script>
</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
    <center>
        <form name="boardQuestionDetailForm" action="/boardQuestionDetail.do" method="post">
            <table class="" border="1" cellpadding="5" cellspacing="0" style="border-collapse:collapse" align="center"
                width="700px">
                <tr>
                    <th width="350" >${requestScope.boardQuestionInfo.title}</th>             
                    <td>${requestScope.boardQuestionInfo.email}</td>
                    <td>${requestScope.boardQuestionInfo.readCount}</td>
                    <td>${requestScope.boardQuestionInfo.regDate}</td>
                </tr>
                <tr nowrap height="100">
                    <td colspan="4" style=" vertical-align: top; text-align: left;">
                        ${boardQuestionInfo.content}
                    </td>
                </tr>
            </table>
            <table class="" border="0" cellpadding="5" cellspacing="0" align="center" width="600px">
            <tr>
             <td align="left"><input type="button" value="목록으로" class="QuestionList" onclick="QuestionList();"></td>
             <c:if test="${email == 'system'}">     
             <td align="right"><input type="button" value="수정"  onclick="QuestionUpDelForm();">
             						<input type="button" value="삭제"  onclick="QuestionDelete();">
             </td>
             </c:if>
             </tr>
        </form>
        
    <form name="boardQuestionForm" action="/boardQuestion.do" method="post" ></form>
      <form name="questionUpDelForm" action="/boardQuestionUpDel.do" method="post" >
    	<input type="hidden" name="no" class="no" value="${boardQuestionInfo.no}">
    </form>  
     <form name="questionDeleteForm" action="/boardQuestionDelete.do" method="post" >
    	<input type="hidden" name="no" class="no" value="${boardQuestionInfo.no}">
    </form> 
    
        <%@include file="/WEB-INF/views/commonFooter.jsp" %>
    </center>
</body>
</html>