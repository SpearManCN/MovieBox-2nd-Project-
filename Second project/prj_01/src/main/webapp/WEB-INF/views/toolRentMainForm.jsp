<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<script src="/js/jquery-1.11.0.min.js"></script>
    <meta charset="UTF-8">
    <title>Document</title>
    <script>
   
    $(function (){init();});
    var locationChecked;
 
    
    function init(){
    	
    	
    	
    	
    	
    	<c:if test="${!empty param.selJijumNo}">
    		$("[name=jijumSel]").val(${param.selJijumNo});
    	</c:if>
    	<c:if test="${!empty param.selBigSort}">
		$("[name=bigSortSel]").val(${param.selBigSort});
		</c:if>
    	<c:if test="${!empty param.selSmallSort}">
		$("[name=smallSortSel]").val(${param.selSmallSort});
		</c:if>
		
    	<c:if test="${!empty param.selKeyword}">
		$("[name=keywordSel]").val("${param.selKeyword}");
		</c:if>
    	
		
		<c:if test="${!empty param.selPageCnt}">
		$("[name=selPageCnt]").val("${param.selPageCnt}");
		</c:if>
    	
		$("[name=cnt${requestScope.selPageCnt}]").css('font-weight','bold');
		
		$("[name=cnt${requestScope.selPageCnt}]").text('[${requestScope.selPageCnt}]');
		
		
    	}
    function searchRecord(){
    	
    }
    
    function goToolDetail(listNo,jijumNo){
    	$("[name=toolNo]").val(listNo);
    	$("[name=jijumNo]").val(jijumNo);
    	document.goForm.action="/toolRentDetail.do"; document.goForm.submit();}
    
    function goToolBook(listNo,jijumNo,nowStatus){
	if(nowStatus!=0){alert("예약 불가능합니다"); return;}
    	$("[name=toolNo]").val(listNo);
    	$("[name=jijumNo]").val(jijumNo);
    	document.goForm.action="/toolRentBook.do"; document.goForm.submit();}
    
    function putJijum(){
    		var ss = $("[name=jijumSel]").val();
			$("[name=selJijumNo]").val(ss);
    }
    function putBigSort(){
    	var ss = $("[name=bigSortSel]").val();
			$("[name=selBigSort]").val(ss);
    }
    function putSmallSort(){
    	var ss = $("[name=smallSortSel]").val();
			$("[name=selSmallSort]").val(ss);
    }
    function putKeyword(){
    	
    	var ss = $("[name=keywordSel]").val();
    			$("[name=selKeyword]").val(ss);
    			
    }
    
			
			var pageCnt;
    	
    function goPageCnt(pageCnt){
    	
    	$("[name=selPageCnt]").val(pageCnt);
    	
    	
    	
    	
    	
    	document.searchForm.submit();
    	
    }
    
    
    function search(){
    	
    	$("[name=selPageCnt]").val(1);
    	
    	 document.searchForm.submit();
    	
    	
    	
    }
    
    
    
    
    
    
    
    
    
    
    
    
 
    </script>
</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
<form name="goForm" method="post">
<input type="hidden" name="locationNo">
<input type="hidden" name="toolNo"> 
<input type="hidden" name="jijumNo">
</form>
 
<form name="searchForm" method="post" action="/toolRentMainForm.do">
<input type="hidden" name="selJijumNo" value='${param.selJijumNo}'>
<input type="hidden" name="selBigSort" value="${param.selBigSort}">
<input type="hidden" name="selSmallSort" value="${param.selSmallSort }">
<input type="hidden" name="selKeyword" value="${param.selKeyword}">
<input type="hidden" name="selPageCnt" value="1">
</form>
    <form name="sendForm"  action="/toolRentMainForm.do" method="post">
        <!--===============================================================-->
        
        <table class="" border="0" cellpadding="5" cellspacing="0" style="border-collapse:collapse" align="center" width="600px">
            <tr>
                <th>
                	
                
                    <select id="" onChange="putJijum();" name="jijumSel">
                    	<option value="" selected>지점 선택</option>
                    <c:forEach var="jijum" items="${requestScope.jijums}" varStatus="loopTagStatus">
                    	<option value='${jijum.NO}'  >"${jijum.NAME}"</option>
                    
                    </c:forEach>
                        
                  
                    </select>
                </th>
                <th>
                    <select name="bigSortSel" id=""	 onChange="putBigSort();" style="display:none">
                        <option value="" selected>공구 대분류</option>
                        
                        
                    <c:forEach var="bigSort" items="${requestScope.bigSorts}" varStatus="loopTagStatus">
                    	<option value='${bigSort.NO}'  >"${bigSort.NAME}"</option>
                    
                    </c:forEach>
                    </select>
                </th>
                
                
                
                
                
                <th>
                    <select name="smallSortSel" id="" onChange="putSmallSort();">
                        <option value="" selected>공구 소분류</option>
                        <c:forEach var="smallSort" items="${requestScope.smallSorts}" varStatus="loopTagStatus">
                    	<option value='${smallSort.NO}'  >"${smallSort.NAME}"</option>
                    
                    </c:forEach>
                    </select>
                </th>
                
                <th>
                    <input id="" type="text" name="keywordSel" placeholder="검색어를 입력해주세요." maxlength="10" onChange="putKeyword();">
                </th>
                <th>
                    <input type="button" value="검색" onclick="search();">
                </th>
            </tr>
        </table>
        <div style="height: 10px;"></div>
        <!-- mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm -->
        <c:forEach var="list" items="${requestScope.toolLists}" varStatus="loopTagStatus">
        	<table  class="" border="1px" cellpadding="5" cellspacing="0" style="border-collapse:collapse" align="center" width="600px">
				<tr onClick="goToolDetail(${list.NO},${list.JIJUMNO});" style="cursor:pointer">
					<td rowspan="5" width="35%"><span style="cursor:pointer" width="300px" align="center" >
					<img src="resources/img/${list.NO}.jpg" width="180" height="180">
					</span></td>
               		<td ><span style="cursor:pointer" >${list.NAME}</span></td>			
				</tr>
				<tr onClick="goToolDetail(${list.NO},${list.JIJUMNO});" style="cursor:pointer">
                	<td >브랜드 : ${list.BRAND}
                	</td> 
                </tr>
				<tr onClick="goToolDetail(${list.NO},${list.JIJUMNO});" style="cursor:pointer">
              	  	<td colspan="4"><span style="cursor:pointer" onclick="">지점명 : ${list.JIJUMNAME}</span></td>
           		</tr>
           			
             
                 <tr onClick="goToolDetail(${list.NO},${list.JIJUMNO});" style="cursor:pointer">
                	<td >현재 상태 : ${list.NOWSTATUS==0? '예약가능':'예약불가능' }
                	</td> 
                </tr>
                <tr>
                	<td align="center">
                    <input type="button" value="예약하기" onclick="goToolBook(${list.NO},${list.JIJUMNO}, ${list.NOWSTATUS});">
                	</td>
                </tr>
                
                
            </tr>				
			</table><br>
		</c:forEach>
        <div align="center">
        <c:forEach begin="1" end="${requestScope.toolLists2.size()/10+1}" varStatus="loopTagStatus">
        <span name="cnt${loopTagStatus.index}" style="cursor:pointer" onclick="goPageCnt(${loopTagStatus.index });">${loopTagStatus.index }</span>
        </c:forEach>
        </div>
        
    </form>			  
    <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>