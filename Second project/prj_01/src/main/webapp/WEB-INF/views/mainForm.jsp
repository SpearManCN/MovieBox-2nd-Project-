<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Timing_Pick</title>
    
	<script src="/js/jquery-1.11.0.min.js"></script>
	
	<script>
	
	$(function(){
		$(".loginBnt").bind("click",function(){
			goLoginPageForm();
		});
			
	});
	
///////////////////////////////////////////////////////////////////////////////////

	// 로그인을 눌렀을 때
	function goLoginPageForm(){
		
		document.loginPageForm.submit();
		
	}
	
///////////////////////////////////////////////////////////////////////////////////

	// 대여하기 버튼을 눌렀을 때
	function goToolRentMainForm(){
		
		document.toolRentMainForm.submit();
		
	}
	
///////////////////////////////////////////////////////////////////////////////////

	// 예약조회 버튼을 눌렀을 때
	function goBookCheckForm(){
		document.bookCheckForm.action="/myPageBookList.do"
		document.bookCheckForm.submit();
		
	}

///////////////////////////////////////////////////////////////////////////////////
	</script>
	
</head>
<body>

	<form name="mainForm" action="/mainForm.do" method="post">
        <table>
            <tr class="header-login">
                <ul class="login-category"> 
                    <span style="cursor:pointer" class="loginBnt">로그인</span>
                </ul>
            </tr>
            <tr style="color:gray ; width: 1400px; height: 600px;">
                <td>
                    <p>공구 도서관</p><br>
                    <p>공유 촉진을 위해 공구대여소, 장난감 도서관 등의 분야별 공유 자원 현황,<br>
                        공유 뉴스, 정책 및 홍보 자료 등을 제공하는 서울특별시 운영 인터넷 사이트입니다.</p>
                </td>
                <td>
                    <input type='button' value='대여하기' onclick='goToolRentMainForm()'/>
                </td>
                <td>
                    <input type='button' value='예약조회' onclick='goBookCheckForm()'/>
                </td>
            </tr>
        </table>  
	</form>

	<form name="loginPageForm" action="/loginPageForm.do" method="post">
	</form>

	<form name="toolRentMainForm" action="/toolRentMainForm.do" method="post">
	</form>

	<form name="bookCheckForm" action="/bookCheckForm.do" method="post">
	</form>
	
</body>
</html>