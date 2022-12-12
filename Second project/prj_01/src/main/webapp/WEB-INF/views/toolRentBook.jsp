<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    
<script src="/js/jquery-1.11.0.min.js"></script>
    
    <script>
    	$(function(){ init();});
    	
    	function init(){
    		
    		
    		
    		
    		$("[name=selectDate]").change(function(){
    			
    			var data1 = $("[name=selectDate]").val();
    			$("[name=selectedDate]").val(data1);	
    			} );
    		
    	}
    	
    	
    		
    	
    
    	function goCheck(){
    		 sample();
    		
    		
    		
    		
    		}   
    	function sample(){
    		
    		var toolNo=$("[name=toolNo]").val();
    		var jijumNo=$("[name=jijumNo]").val();
    		var selectedDate=$("[name=toselectedDateolNo]").val();
    		var toolName=$("[name=toolName]").val();
    		
    		if(confirm("예약 하시겠습니까?")){
    			
    			
    			
    		
    		$.ajax(
    				{
    					url:"/upToolStatusProc.do"
    					,type:"post"
    					,data:$("[name=goForm]").serialize() 
    						//, "selectedDate",selectedDate, "toolName",toolName}
    						
    					,success:function(idCnt){
    						if(idCnt==2){
    							alert("예약 완료됐습니다");
    							goToolMain();
    						}else{
    							alert("예약 실패했습니다");
    							goToolMain();
    						}
    						
    					}
    					,error:function( ){
    						alert("웹서버 접속 실패");
    					}
    				}
    			);
    		
    		}
    		
    		
    	}
    	
    	
    	
    	function goToolMain(){document.goForm.action="/toolRentMainForm.do"; document.goForm.submit();}
    </script>
    
</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
    <center>
    <form name="goForm" method="post">
    <input type="hidden" name="toolNo" value="${requestScope.tools.NO}">
    <input type="hidden" name="jijumNo" value="${requestScope.tools.JIJUMNO}">
    <input type="hidden" name="selectedDate">
    <input type="hidden" name="toolName" value="${requestScope.tools.NAME}">
    
    </form>
    <form action="" method="">
        <!--===============================================================-->
        <table class="" border="1px" cellpadding="5" cellspacing="0" style="border-collapse:collapse" align="center" width="600px">
            <tr>
                <td colspan="4" align="center"><b>공구 정보</b></td>
            </tr>
            <tr>
                <td rowspan="5" width="35%"><img src="resources/img/${requestScope.tools.NO}.jpg" width="180" height="180"></td>
                <td colspan="2">공구명 : ${requestScope.tools.NAME}</td>
                <td>브랜드 : ${requestScope.tools.BRAND}</td>
            </tr>
            <tr>
                <td colspan="3">지점명 : ${requestScope.tools.JIJUMNAME}</td>
               
            </tr>
            <tr>
                <td colspan="3">주소 : ${requestScope.jijums.ADDR }</td>
            </tr>
        </table>
        <div style="height:20px;"></div>
        <table class="" border="1px" cellpadding="5" cellspacing="0" style="border-collapse:collapse" align="center" width="600px">
            <tr>
                <td colspan="4" align="center"><b>예약 정보를 확인해주세요</b></td>
            </tr>
            <tr>
                <th>예약자 이름</th>
                <td>${requestScope.memInfo.NAME}</td>
            </tr>
            <tr>
                <th>예약자 번호</th>
                <td>${requestScope.memInfo.PHONE}</td>
            </tr>
            <tr>
                <th>예약 날짜 선택</th>
                <td><input type="date" name="selectDate" min="sysdate" max="2025-12-31"/></td>
            </tr>
            <tr>
                <th align="center" colspan="4">예약한 공구는 해당 대여소 방문 수령만 가능합니다.</th>
            </tr>
        </table>
        <input type="button" value="확인" onclick="goCheck();">
        <input type="button" value="취소" onclick="goToolMain();">
    </center>
    </form>
    <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>