<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="/js/jquery-1.11.0.min.js"></script>

<script>
	$(function(){
		var seatStatus = "${requestScope.seatInfo}";
		
		
		for(var i=1; i<26; i++){
			if(seatStatus.charAt(i-1)=="0"){
				$("[name=s"+i+"]").css("background-color","red");
				$("[name=selSeat]").append("<option value="+i+">"+i+"</option>");
			}
			
		}return;
		
		
		
	});

	function goReserveInfo(){
		if( $("[name=selSeat]").val ()==""){alert("좌석을 선택해주세요"); return;}
		
		if(confirm("예약 하시겠습니까?")==false){return;
			
			
		}
		
		$("[name=seatNo]").val( $("[name=selSeat]").val());
		
		
		document.goInfo.action="/reserveInfo.do";
		document.goInfo.submit();
		
		
	}
	


</script>



























</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>


<form name="goInfo" method="post">
	<input name="seatNoString" type="hidden" value="${requestScope.seatInfo}">
	<input name="seatNo" type="hidden">
	<input name="theaterNo" type="hidden" value="${requestScope.theaterNo}"  >
	<input name="theaterTime" type="hidden" value="${requestScope.theaterTime}" >
</form>



<center>
<table width="1200px">
	<tr>
	<td align="left"><span style="font-size:50px; font-weight:bold;">Reserve</span>
	<tr>
	<td><hr style="height:10px; background-color:#EDD200;">
	<tr>
</table>
</center>

<table align="center" width="800px">
<tr align="right"><td><sapn style="background-color:red">&nbsp;&nbsp;&nbsp;</sapn><span>예약가능</span>
<sapn style="background-color:black">&nbsp;&nbsp;&nbsp;</sapn><span>예약불가</span>

</table>
<table name="seatTable" align="center" width="800px" style="border:1px solid black; background-color:#EAEAEA;">
	<tr height="20px">
	<td width="8%"></td>
	<td width="7%"></td>
	<td width="7%"></td>
	<td width="8%"></td>
	<td width="8%"></td>
	<td width="8%"></td>
	<td width="8%"></td>
	<td width="8%"></td>
	<td width="8%"></td>
	<td width="8%"></td>
	<td width="7%"></td>
	<td width="7%"></td>
	<td width="8%"></td>
	</tr>
	
	
	
		<tr height="120px" >
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	
	<td colspan="5" style="font-size:20px">SCREEN</td>

	</tr>
		<tr height="60px" style="color:white; font-weight:bold; font-size:20px" align="center"> 
	<td></td>
	<td name="s1" style="background-color:black;" >1</td>
	<td name="s2"  style="background-color:black;">2</td>
	<td></td>
	<td  name="s3" style="background-color:black;">3</td>
	<td name="s4"  style="background-color:black;">4</td>
	<td  name="s5" style="background-color:black;">5</td>
	<td  name="s6" style="background-color:black;">6</td>
	<td  name="s7" style="background-color:black;">7</td>
	<td></td>
	<td  name="s8" style="background-color:black;">8</td>
	<td name="s9"  style="background-color:black;">9</td>
	<td></td>
	</tr>
		<tr height="60px" style="color:white; font-weight:bold; font-size:20px" align="center">
	<td></td>
	<td name="s10"  style="background-color:black;">10</td>
	<td name="s11"  style="background-color:black;">11</td>
	<td></td>
	<td  name="s12" style="background-color:black;">12</td>
	<td  name="s13" style="background-color:black;">13</td>
	<td name="s14"  style="background-color:black;">14</td>
	<td  name="s15" style="background-color:black;">15</td>
	<td  name="s16" style="background-color:black;">16</td>
	<td></td>
	<td  name="s17" style="background-color:black;">17</td>
	<td  name="s18" style="background-color:black;">18</td>
	<td></td>
	</tr>
		<tr height="60px" style="color:white; font-weight:bold; font-size:20px" align="center">
	<td></td>
	<td  name="s19" style="background-color:black;">19</td>
	<td  name="s20" style="background-color:black;">20</td>
	<td></td>
	<td  name="s21" style="background-color:black;">21</td>
	<td  name="s22" style="background-color:black;">22</td>
	<td  name="s23" style="background-color:black;">23</td>
	<td name="s24"  style="background-color:black;">24</td>
	<td  name="s25" style="background-color:black;">25</td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	</tr>
		<tr height="60px" style="color:white; font-weight:bold; font-size:20px" align="center">
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	</tr>
		
	


</table>

<table width="1200px">
<tr><td>
<div align="right">
<select name="selSeat" class="form-select" aria-label="Default select example" style="width:150px;background-color:#FFFFE9">
  <option value="" selected>좌석 선택</option>
  

  
</select>

<button onclick="goReserveInfo();" type="button" class="btn btn-primary btn-lg" style="width:18%; height:60px; background-color:#FF5A5A;">
	<span style="font-size:25px; font-weight:; color:white;">예매 하기</span></button></div></table>



<%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>