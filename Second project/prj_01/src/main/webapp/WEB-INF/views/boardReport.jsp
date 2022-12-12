<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@include file="/WEB-INF/views/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>자유게시판 신고하기</title>
    
    <script>
  function goBoardFree(partno){
	
	
	if(partno =="1"){
		document.boardFreeDetailForm.action="/boardFreeDetail.do";
	}else{
		document.boardFreeDetailForm.action="/boardQnADetail.do";
	}
	document.boardFreeDetailForm.submit();  
  }
  
  function goCheck(){

	  var form = document.boardReportForm;

	  if($("#reportreason").val() == ""){
	  		alert("신고 유형을 입력해 주세요.");
	  		return;
	  }
	  if($("#reportContent").val() == ""){
	 		alert("신고 내용을 입력해 주세요.");
	 		return;
		}
		
	  if(form.reportContent.value.length > 199){
			alert("200자 이상 등록 할 수 없습니다.");
	  		return;
	  }
	document.boardReportForm.submit();  
	
	  }
  
	

  
  
  
    </script>
    
</head>

<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
	<form name="boardReportForm" action="/boardReportSave.do" method="post">
	 <input type="hidden" name="no" class="no" value="${no}">
	 <input type="hidden" name="partno" class="partno" value="${partno}">	 
	 
    	<center>
        <h3>게시글 신고</h3>
            <select class="" name="reportreason" id="reportreason" >
                <option value="" selected>신고 사유를 선택해주세요</option>
                <option value="상업적 게시글">상업적 게시글</option>
                <option value="음란성 게시글">음란성 게시글</option>
                <option value="무단전재">무단전재</option>
                <option value="욕설">욕설</option>
                <option value="기타">기타</option>
            </select>
            <div style="height: 20px;"></div>
            신고 내용 작성 (200자 이내)<br>
            <textarea name="reportContent" id="reportContent"  class="" rows="6" cols="40" maxlength="200"></textarea><br>
            <input type="button" value="등록" class="" onclick="goCheck();">
            <input type="button" value="취소" class="" onclick="goBoardFree('${partno}');">
        </form>
    </center>
    <form name="boardFreeDetailForm" action="/boardFreeDetail.do" method="post" >
    <input type="hidden" name="no" class="no" value="${no}">
    </form>
    
    
       <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>

</html>