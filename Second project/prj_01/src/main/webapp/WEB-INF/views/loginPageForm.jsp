<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	<script src = "/js/jquery-1.11.0.min.js"></script>

	<script>

	$(function(){
		// 유효성체크
		$(".loginBtn").bind("click",function(){
			checkLoginForm();		
		});

		//--------------------------------------------------loginBtn
		// 페이지 이동
		$(".join").bind("click",function(){
			goLoginJoinForm();		
		});	
		
		
		$(".findEmail").bind("click",function(){
			goLoginFindEmailForm();		
		});	

		
		$(".findPwd").bind("click",function(){
			goLoginFindPwdForm();		
		});	

		
		//--------------------------------------------------

		
      // 이메일 기억하기 쿠키값 일단 넣어둠 
      $("[name='userid']").val( "${cookie.userid.value}" );

      $("[name='userpw']").val( "${cookie.userpw.value}" );
	})

	
//-------페이지이동------------------------------------------------------------

	function goLoginJoinForm(){
		document.loginJoinForm.submit();
	}

	function goLoginFindEmailForm(){
		document.loginFindEmailForm.submit();
	}
	
	function goLoginFindPwdForm(){
		document.loginFindPwdForm.submit();
	}
	

//-----------------------------------------------------------------------------

    function checkLoginForm(){
		// 유저 아이디가 비어있을 때(공백만 있을때) 유효성 체크
		var userId_obj = $("[name='email']");
		var userId_val = userId_obj.val();
			if( typeof(userId_val)!="string" ) { userId_val = ""; }
		if ( userId_val.split(" ").join("")=="" ){
			alert("아이디를 입력해 주십시오.")
			userId_obj.val("");
			userId_obj.focus();
			return;
		}

		// 유저 비밀번호가 비어있을 때(공백만 있을때) 유효성 체크
		var userPwd_obj = $("[name='pwd']");
		var userPwd_val = userPwd_obj.val();
			if( typeof(userPwd_val)!="string" ) { userPwd_val = ""; }
		if ( userPwd_val.split(" ").join("")=="" ){
			alert("비밀번호를 입력해 주십시오.")
			userPwd_obj.val("");
			userPwd_obj.focus();
			return;
		}

		$.ajax({
				url:"/loginProc.do"
				,type:"post"
				,data:$("[name='loginPageForm']").serialize()
				,success:function(idCnt){
					if( idCnt==1 ) { 
						
						
						document.toolRentMainForm.submit();
					} else {
						alert("로그인 실패! 아이디 또는 암호가 틀립니다. 재입력해주십시오.")
						userId_obj.val("");
						userPwd_obj.val("");
					}
				}
				,error:function(){ alert("웹서버 접속 실패!") }
			});
    }
    
  
	</script>
</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
	  <form name="loginPageForm" class="loginPage" action="/loginPageForm.do" method="post">  
	  <center>
	  <table>
	      <h2>로그인</h2>
	          <tr>
	            <input class="userId" type="text" placeholder="이메일을 입력해주세요" name="email"/><br>
	            <input class="userPwd" type="password" placeholder="비밀번호" minlength="10" name="pwd"/><br>      
	        <!--    <input type="checkbox" class="chk_id" name="" ${empty cookie.mid.value?'':'checked'}>이메일 저장--> <!--쿠키값 사용 일단 생략-->
	             <p style="color:red ;"></p>
	            <input type="button"  value="로그인"  class="loginBtn">
	            <td class="links">
	      <!--      <span style="cursor:pointer;"  class="findEmail">이메일 찾기</span> | 
	              <span style="cursor:pointer;" class="findPwd">비밀번호 찾기</span> |  -->   
	              <span style="cursor:pointer;" class="join">회원가입</span>
	            </td>
	          </tr>
	  </table>
	  </center>
	  </form>
  
  	  <form name="toolRentMainForm" method="post" action="/toolRentMainForm.do"></form>
	  <form name="loginJoinForm" method="post" action="/loginJoinForm.do"></form>
	  <form name="loginFindEmailForm" method="post" action="/loginFindEmailForm.do"></form>
	  <form name="loginFindPwdForm" method="post" action="/loginFindPwdForm.do"></form>
	  
	  
  <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>