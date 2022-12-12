<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--====================================================================-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--====================================================================-->
 
<script src="/js/jquery-1.11.0.min.js"></script>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	
	function goAdminReportForm(){
			document.adminReportForm.submit();
	}

</script>



</head>
<body>

<%@include file="/WEB-INF/views/commonHeader.jsp" %>



	<form name="adminStatsForm" method="post" action="/adminStatsForm.do">
    <center>
        <table id="" class="" border=1 cellspacing=0 width=500 cellpadding=5>
            <head>
                <tr>
                    <td style="cursor:pointer" onClick="goAdminReportForm();"><center><b>신고 게시판</b></center></td>
                    
                    <td><center><b>통계화면</b></center></td> 
                    
                </tr>
                
		</table>
		<br>
		<table border=1 cellspacing=0 width=900 cellpadding=5> 
			<tr>
				<td>현재 회원수</td> 
				<td>등록된 지점수</td> 
				<td>등록된 공구수</td> 
				<td>현재 대여중인 공구 갯수</td> 
				<td>현재 예약중인 공구 갯수</td>
			</tr>
			<tr>
				<td>${requestScope.totMember}</td> 
				<td>${requestScope.totJijum}</td> 
				<td>${requestScope.totTool}</td> 
				<td>${requestScope.totOnRental}</td> 
				<td>${requestScope.totOnBooking}</td>
			</tr>
           
		</table> 

           <div>
           
           
           
           
           
<!--MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM그래프MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM-->   
           
           
<table>    
<tr>
<td> 
<div>
  <br><br><br><canvas id="myChart" width="400px" height="100px"></canvas><br><br><br>
</div>

<td> 
<div>
  <canvas id="jijumChart" width="400px" height="100px"></canvas>
</div>

</table>    
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
  const ctx = document.getElementById('myChart');

  new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ['현재 회원수', '등록된 지점수'],
      datasets: [{
        label: '사용자 통계 그래프',
        data: [${requestScope.totMember}, ${requestScope.totJijum}],
        borderColor: [
        	'rgba(255, 99, 132, 0.2)',
        	'rgba(54, 162, 235, 0.2)'
        ],
        backgroundColor: [
        	'rgba(255, 99, 132, 0.2)',
        	'rgba(54, 162, 235, 0.2)'
        ],
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });




  const tool = document.getElementById('jijumChart');

  new Chart(tool, {
    type: 'bar',
    data: {
      labels: ['등록된 공구수','현재 대여중인 공구 갯수', '현재 예약중인 공구 갯수'],
      datasets: [{
        label: '공구 통계 그래프',
        data: [${requestScope.totTool}, ${requestScope.totOnRental}, ${requestScope.totOnBooking}],
        borderColor: [
        	
        	'rgba(255, 206, 86, 0.2)',
        	'rgba(75, 192, 192, 0.2)',
        	'rgba(255, 159, 64, 0.2)'
        ],
        backgroundColor: [
        	
        	'rgba(255, 206, 86, 0.2)',
        	'rgba(75, 192, 192, 0.2)',
        	'rgba(255, 159, 64, 0.2)'
        ],
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });
</script>

<!--MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM그래프MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM-->   





           
            </body>
        </table>
    </center>
    </form>
    

	<form name="adminReportForm" method="post" action="/adminReportForm.do"></form>
    
    
    
    <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>