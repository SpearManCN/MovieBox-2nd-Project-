<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script src="/js/jquery-1.11.0.min.js"></script>
    <meta charset="UTF-8">
    <title>Document</title>
    
    
    
    <script>
    $(function(){   init(); });
    
    function init(){
		var formToolNo = ${requestScope.tools.NO};
		var formJijumNo = ${requestScope.jijums.NO};
    	$("[name=toolNo]").val(formToolNo);
    	$("[name=jijumNo]").val(formJijumNo);
    	
    	
    }
    
    function goToolMain(){document.goForm.action="/toolRentMainForm.do"; document.goForm.submit();}
    function goToolBook(){
    	if("${tools.NOWSTATUS}"!=0){alert("예약이 불가능합니다"); return;}
    	
    	document.goForm.action="/toolRentBook.do"; document.goForm.submit();}
    </script>
    
    
    
    
</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
	<form name="goForm" method="post">
	
<input type="hidden" name="toolNo"> 
<input type="hidden" name="jijumNo">
	</form>
    <form action="" method="">
        <!--===============================================================-->
        <table class="" border="1px" cellpadding="5" cellspacing="0" style="border-collapse:collapse" align="center" width="600px">
            <tr>
                <td rowspan="6" width="35%" ><img src="resources/img/${requestScope.tools.NO}.jpg" width="180" height="180"></td>
                <td >공구명 : ${requestScope.tools.NAME}</td>
               
            </tr>
           
            <tr>
             <td>브랜드 : ${requestScope.tools.BRAND}</td>
            </tr>
            
            <tr>
                <td >현재 상태 : ${tools.NOWSTATUS==0? '예약가능':'예약불가능' }</td>
            </tr>
            
            <tr>
                <td >지점명 : ${requestScope.tools.JIJUMNAME}</td>
               
            </tr>
            
            <tr>
            	<td>운영시간 : ${requestScope.jijums.TIME}</td>
            </tr>
            
            <tr>
                <td >주소 : ${requestScope.jijums.ADDR}</td>
            </tr>
            
            
        </table>
        <div style="height: 10px;"></div>
        <!--===============================================================-->
        <table class="" border="1px" cellpadding="5" cellspacing="0" style="border-collapse:collapse" align="center" width="600px">
            <tr>
        
                <td><input type="button" value="목록으로" onclick="goToolMain();"></td>
                <td><input type="button" value="예약" onclick="goToolBook();"></td>
            </tr>
        </table>
    </form>
    <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>