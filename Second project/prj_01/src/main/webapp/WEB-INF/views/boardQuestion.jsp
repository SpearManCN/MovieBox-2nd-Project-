<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--====================================================================-->
<%@include file="/WEB-INF/views/common.jsp" %>
<!--====================================================================-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 묻는 질문</title>
<script>
$( function(){
	//조회수/등록일 문자  처리
	$("#questionSortHeader").text("조회수");
	$("#questionSortHeader2").text("등록일");
	
	var val = $("#questionSortHeader").text();
	var val2 = $("#questionSortHeader2").text();
	var order = $("#sort").val();

 //조회수
	if( val=="조회수" && order == "readCount asc"){
		val = $("#questionSortHeader").text("조회수▲");
	}
	else if(val=="조회수" && order == "readCount desc"){
		val = $("#questionSortHeader").text("조회수▼");

	}else if(val=="조회수" && order == ""){
		val = $("#questionSortHeader").text("조회수");
	}
	else if( val2=="등록일" && order == "regDate asc"){
		val2 = $("#questionSortHeader2").text("등록일▲");
	}
	else if(val2=="등록일" && order == "regDate desc"){
		val2 = $("#questionSortHeader2").text("등록일▼");

	}else if(val2=="등록일" && order == ""){
		val2 = $("#questionSortHeader2").text("등록일");
	}
	
	$(".freeBtn").bind("click",function(){
		document.boardFreeForm.submit();
	});
	$(".qnABtn").bind("click",function(){
		document.boardQnAForm.submit();
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
		//$(".QuestionSearchBtn").click();	
		document.boardQuestionForm.submit();
}

function QuestionSearch(){
	var keyword1 = $("[name='keyword']").val();
	if(typeof(keyword1)!="string"){
		keyword1 = " ";
	}
	keyword1 = $.trim(keyword1);
	$("[name='keyword']").val(keyword1);
	
	document.boardQuestionForm.submit();
}

function goQuestionDetail(no){
	var formObj = $("[name=boardQuestionDetailForm]");
	formObj.find("[name=no]").val(no);
	document.boardQuestionDetailForm.submit();
}

function pageNoBtn( pageNo ){
	$(".selectPageNo").val( pageNo );
	QuestionSearch( );
}

 function questionwrite(){
	 document.QuestionWriteForm.submit();
 }
  
</script>
</head>

<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
	 <form name="boardQuestionForm" action="/boardQuestion.do" method="post">
        <center>
            <table class=""  border="0" cellpadding="5" cellspacing="0" align="center" width="600px">
                <tr>
                   <th><span style="cursor:pointer" class="questionBtn">자주 묻는 질문</span></th>
                    <th><span style="cursor:pointer" class="freeBtn">자유게시판</span></th>
                    <th><span style="cursor:pointer" class="qnABtn">문의게시판</span></th>
                </tr><br>
            </table>
            <div style="height: 10px;"></div>
            
            <table class="" cellpadding="5" cellspacing="0" align="center" width="600px">
                <tr>
                    <th class="QuestionSearchForm">게시판 검색</th>&nbsp;&nbsp;&nbsp;&nbsp;
                    </th>
                    <th class="" colspan="2">
                        <select class="" name="keywordtype">
                        	<!-- HttpServletRequest 객체에 "boardSearchDTO"에 있는 keywordtype 불러옴-->
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
                        <input type="button" value="검색" class="QuestionSearchBtn" onClick="QuestionSearch();">
                    </th>
                </tr>
            </table>

            <table class="" border="1px" cellpadding="5" cellspacing="0" style="border-collapse:collapse" align="center"
                width="600px">
                <tr>
                    <th class="">제목</th>
                    <th class="">작성자</th>
                    <th><span style="cursor:pointer" class="questionSortHeader"  id="questionSortHeader" onClick="init('S');"></span></th>
                    <th><span style="cursor:pointer" class="questionSortHeader"  id="questionSortHeader2" onClick="init('W');"></span></th>
                </tr>
                
              <c:forEach var="Questionboard" items="${requestScope.boardList}" varStatus="loopTagStatus">
                  <tr onClick="goQuestionDetail(${Questionboard.no})">
                    <td style="cursor:pointer">${Questionboard.title} </td>
                    <td style="cursor:pointer">${Questionboard.email}</td>
                    <td style="cursor:pointer">${Questionboard.readCount}</td>
                    <td style="cursor:pointer">${Questionboard.regDate}</td>
                </tr>
              </c:forEach>
                
            </table>
            
            <div style="height:15px;"></div>
            
 
    </form>
      
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
      
      <c:if test="${email == 'system'}">
      <input type="button" value="글쓰기" class="questionwriteBtn" onClick="questionwrite()">
      </c:if>
      
      </center>
      
    <form name="boardFreeForm" action="/boardFree.do" method="post" ></form>
    <form name="boardQnAForm" action="/boardQnA.do" method="post" ></form>
    <form name="boardQuestionDetailForm" action="/boardQuestionDetail.do" method="post" >
            <input type="hidden" name="no" class="no" value="">
    </form>
	<form name="QuestionWriteForm" action="/boardQuestionWrite.do" method="post"></form>
        <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>