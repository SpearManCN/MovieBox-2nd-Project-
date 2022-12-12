<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--====================================================================-->
<%@include file="/WEB-INF/views/common.jsp" %>
<!--====================================================================-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의게시판</title>
<script>
	$(function(){
		//조회수/등록일 문자  처리
		$("#qnaSortHeader").text("조회수");
		$("#qnaSortHeader2").text("등록일");
		
		var val = $("#qnaSortHeader").text();
		var val2 = $("#qnaSortHeader2").text();
		var order = $("#sort").val();

	 //조회수
		if( val=="조회수" && order == "readCount asc"){
			val = $("#qnaSortHeader").text("조회수▲");
		}
		else if(val=="조회수" && order == "readCount desc"){
			val = $("#qnaSortHeader").text("조회수▼");

		}else if(val=="조회수" && order == ""){
			val = $("#qnaSortHeader").text("조회수");
		}
		else if( val2=="등록일" && order == "regDate asc"){
			val2 = $("#qnaSortHeader2").text("등록일▲");
		}
		else if(val2=="등록일" && order == "regDate desc"){
			val2 = $("#qnaSortHeader2").text("등록일▼");

		}else if(val2=="등록일" && order == ""){
			val2 = $("#qnaSortHeader2").text("등록일");
		}
	 
		$(".questionBtn").bind("click",function(){
			document.boardQuestionForm.submit();
		});
		$(".freeBtn").bind("click",function(){
			document.boardFreeForm.submit();
		});
		$(".qnADetailBtn").bind("click",function(){
			document.boardQnADetailForm.submit();
		});
		$(".boardQnAwriteBtn").bind("click",function(){
			document.boardQnAWriteForm.submit();
		});

})

function init(text){

// text = S 조회수
// text = W 등록일		
		var order = $("#sort").val();
		if(text=="S"){
			if(text=="S"&& order == ""){
				$("#sort").val("readCount asc");
			}
			else if(text=="S" && order == "readCount asc"){
				$("#sort").val("readCount desc");
			}
			else if(text=="S" && order == "readCount desc"){
				$("#sort").val("");
			}else{
				
				$("#sort").val("");
			}
		}else{
			if(text=="W"&& order == ""){
				$("#sort").val("regDate asc");
			}
			else if(text=="W" && order == "regDate asc"){
				$("#sort").val("regDate desc");
			}
			else if(text=="W" && order == "regDate desc"){
				$("#sort").val("");
			}else{
				$("#sort").val("");
			}
		}	
		//$(".QnaSearchBtn").click();	
		document.boardQnAForm.submit();
}

	function QnaSearch(){
		var keyword1 = $("[name='keyword']").val();
		if(typeof(keyword1)!="string"){
			keyword1 = " ";
		}
		keyword1 = $.trim(keyword1);
		$("[name='keyword']").val(keyword1);
		
		document.boardQnAForm.submit();
	}

	function goQnaDetail(no){
		var formObj = $("[name=boardQnADetailForm]");
		formObj.find("[name=no]").val(no);
		document.boardQnADetailForm.submit();
	}

	function pageNoBtn( pageNo ){
		$(".selectPageNo").val( pageNo );
		QnaSearch( );
	}
	
	function qnawrite(){
		document.boardQnAWriteForm.submit();
	}
	
</script>
</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
	 <form name="boardQnAForm" action="/boardQnA.do" method="post">
        <center>
            <table class="" border="0" cellpadding="5" cellspacing="0" align="center" width="600px">
                <tr>
                    <th><span style="cursor:pointer" class="questionBtn">자주 묻는 질문</span></th>
                    <th><span style="cursor:pointer" class="freeBtn">자유게시판</span></th>
                    <th><span style="cursor:pointer" class="qnABtn">문의 게시판</span></th>
                </tr><br>
            </table>
            <div style="height: 10px;"></div>

            <table class="" border="0" cellpadding="5" cellspacing="0" align="center" width="600px">
                <tr>
                    <th class="QnaSearchForm">게시판 검색</th>&nbsp;&nbsp;&nbsp;&nbsp;
                    </th>
                    <th class="" colspan="2">
                        <select class="" name="keywordtype">
                            <option value="title" ${requestScope.boardSearchDTO.keywordtype == 'title' ? 'selected="selected"' : '' }>제목</option>
                            <option value="content" ${requestScope.boardSearchDTO.keywordtype == 'content' ? 'selected="selected"' : '' }>내용</option>
                            <option value="email" ${requestScope.boardSearchDTO.keywordtype == 'email' ? 'selected="selected"' : '' }>작성자</option>
                         </select>
                        <input id="" type="text" name="keyword" class="" placeholder="검색어를 입력해주세요." value="${requestScope.boardSearchDTO.keyword}" maxlength="30">
                    </th>
                    <input type="hidden" name="sort" id="sort"  class="sort" value="${requestScope.boardSearchDTO.sort}">
                    
                    <input type="hidden" name="selectPageNo" class="selectPageNo" value="1">
          		    <input type="hidden" name="pageNoCnt_perPage" class="pageNoCnt_perPage" value="10">
                    <th class="">
                        <input type="button" value="검색" class="QnaSearchBtn" onclick="QnaSearch();">
                    </th>
                </tr>
            </table>

            <table class="" border="1px" cellpadding="5" cellspacing="0" style="border-collapse:collapse" align="center"
                width="600px">
                <tr>
                    <th class="">제목</th>
                    <th class="">작성자</th>
                    <th><span style="cursor:pointer" class="qnaSortHeader"  id="qnaSortHeader" onClick="init('S');"></span></th>
                    <th><span style="cursor:pointer" class="qnaSortHeader2"  id="qnaSortHeader2" onClick="init('W');"></span></th>
                </tr>
               
                <c:forEach var="Qnaboard" items="${requestScope.boardList}" varStatus="loopTagStatus">
                  <tr onClick="goQnaDetail(${Qnaboard.no})">
                    <td style="cursor:pointer">${Qnaboard.title} </td>
                    <td style="cursor:pointer">${Qnaboard.email}</td>
                    <td style="cursor:pointer">${Qnaboard.readCount}</td>
                    <td style="cursor:pointer">${Qnaboard.regDate}</td>
                </tr>
              </c:forEach>
              
              
            </table>
            <div style="height: 10px;"></div>

		<c:if test="${requestScope.boardTotCnt>0}">
      	<span style="cursor:pointer" onclick="pageNoBtn(1);">[처음]</span>
        <span style="cursor:pointer" onclick="pageNoBtn(${requestScope.pagingMap.selectPageNo}-1);">[이전]</span>
      <c:forEach  var="no"  begin="${requestScope.pagingMap.begin_pageNo_perPage}"  
                                end="${requestScope.pagingMap.end_pageNo_perPage}" step="1">      
               <c:if test="${requestScope.pagingMap.selectPageNo!=no}">                 
                  <span style="cursor:pointer" onclick="pageNoBtn(${no});">[${no}]</span>&nbsp;
               </c:if>
               <c:if test="${requestScope.pagingMap.selectPageNo==no}">${no}&nbsp;</c:if>
         </c:forEach>
         <span style="cursor:pointer" onclick="pageNoBtn(${requestScope.pagingMap.selectPageNo}+1);">[다음]</span>
         <span style="cursor:pointer" onclick="pageNoBtn(${requestScope.pagingMap.last_pageNo});">[마지막]</span>
      </c:if>
      
		<input type="button" value="글쓰기" class="boardQnAwriteBtn" onclick="qnawrite();">
    
        </center>
    </form>
    
     <form name="boardFreeForm" action="/boardFree.do" method="post" ></form>
    <form name="boardQuestionForm" action="/boardQuestion.do" method="post" ></form>
    <form name="boardQnADetailForm" action="/boardQnADetail.do" method="post" >
    		<input type="hidden" name="no" class="no" value="">
    </form>
    <form name="boardQnAWriteForm" action="/boardQnAWrite.do" method="post" ></form>
    
    <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>