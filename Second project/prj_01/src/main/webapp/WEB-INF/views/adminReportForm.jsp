<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--====================================================================-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--====================================================================-->
 
<script src="/js/jquery-1.11.0.min.js"></script>
<!--====================================================================-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function goAdminStatsForm(){
			document.adminStatsForm.submit();
	}

	// 자유게시판 게시글 제목 누르면 글 상세보기로 이동
	function goFreeBoardDetailForm( postNo ){
		$("[name='boardFreeDetail']").find("[name='no']").val( postNo );
		document.boardFreeDetail.submit();
	}	
	

	
	
	

	// 자유게시판 게시글 제목 누르면 글 상세보기로 이동
	function goQnABoardDetailForm( postNo ){
		$("[name='boardQnADetail']").find("[name='no']").val( postNo );
		document.boardQnADetail.submit();
	}	
	
	
	
	 function pageNoBtn( pageNo ){
		 	$(".selectPageNo").val( pageNo );
		 	FreeSearch( );
	}
	
</script>
</head>

<body>

<%@include file="/WEB-INF/views/commonHeader.jsp" %>



	<form name="adminReportForm" method="post" action="/adminReportForm.do">
    <center>
        <table id="" class="" border=1 cellspacing=0 width=500 cellpadding=5>
            <head>
                <tr>
                    <td width="50%"><center><b>신고 게시판</b></center></td>
                    
                    <td style="cursor:pointer" onClick="goAdminStatsForm();"><center><b>통계화면</b></center></td> 
                    
                </tr>
                
        </table>
        <br>
        <table border=1 cellspacing=0 cellpadding=5  width="700px"> 
           <tr>
           <td width="20%">신고사유</td> <td>신고내용</td>
            <td width="15%">게시판종류</td><td width="20%">작성자</td> <td width="20%">신고자</td>
           </tr>

<!--MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM-->
			<c:forEach var="reportList" items="${requestScope.reportList}" varStatus="loopTagStatus">
					<tr >
							<td>${reportList.reason}
							
							<td>${reportList.reportContent} 
							
							
				<c:if test="${reportList.partNo == 1}">	    
							<td>자유게시판     
				</c:if>	
				<c:if test="${reportList.partNo == 2}">	    
							<td>문의게시판     
				</c:if>	
				
				<!-- 
				<c:if test="${reportList.partNo == 1}">	    
							<td OnClick="goFreeBoardDetailForm(${reportList.postNo});"  style="cursor:pointer">${reportList.title}
				</c:if>	
							
				<c:if test="${reportList.partNo == 2}">	    
							<td OnClick="goQnABoardDetailForm(${reportList.postNo});" style="cursor:pointer">${reportList.title}
				</c:if>						
				 -->
				
				
							<td>${reportList.writerEmail}  
							<td>${reportList.reporterEmail} 
					</tr>
			</c:forEach> 
<!--MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM-->
       

        </table>
    </center>
    </form>




	<form name="boardFreeDetail" method="post" action="/boardFreeDetail.do">
		<input type="hidden" name="no" value="">
	</form>



	<form name="boardQnADetail" method="post" action="/boardQnADetail.do">
		<input type="hidden" name="no" value="">
	</form>
	

    
	<form name="adminStatsForm" method="post" action="/adminStatsForm.do"></form>
    
    
    <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>