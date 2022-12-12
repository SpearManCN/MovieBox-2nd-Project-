<!--******************************************************-->
<!-- JSP 기술의 한 종류인 [ Page Directive ]를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!--모든 JSP 페이지 상단에는 무조건 아래와 같은 설정이 들어가야 JSP 페이지가 제대로 실행된다.-->
<!--******************************************************-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 

	<script src="/js/jquery-1.11.0.min.js"></script>

<!--MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM우편번호찾기용MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM-->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var addr = ''; // 주소 변수
	            var extraAddr = ''; // 참고항목 변수
	
	            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }
	
	            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	            if(data.userSelectedType === 'R'){
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraAddr !== ''){
	                    extraAddr = ' (' + extraAddr + ')';
	                }
	                // 조합된 참고항목을 해당 필드에 넣는다.
	                document.getElementById("extraAddress").value = extraAddr;
	            
	            } else {
	                document.getElementById("extraAddress").value = '';
	            }
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById("postcode").value = data.zonecode;
	            document.getElementById("address").value = addr;
	            // 커서를 상세주소 필드로 이동한다.
	            document.getElementById("detailAddress").focus();
	        }
	    }).open();
	}
   
</script>

<!--MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM우편번호찾기용MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM-->

<script> 


    $(function(){
		
        $("[name='loginJoinForm']").find(".join_btn").click(function(){
        	
        	var addr1 = $("#address").val()
			var addr2 = $("#detailAddress").val()
			var addr  = addr1 + addr2
    		$("#addr").val(addr);
        	
          	checkJoinForm();
		});

	})

	
	
    function checkJoinForm(){
		
		var flag = checkForm(
			"loginJoinForm"
			,[
				{
					"name":"u_name"
					,"regExp":/[가-힣]{2,10}/
					,"msg":"이름은 필수 입력 항목입니다. 한글만 입력할 수 있습니다"
				}
				,{
					"name":"email"
					,"regExp":/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/
					,"msg":"이메일은 필수 입력  항목 입니다. 영어 대소문자,숫자만 입력할 수 있습니다."
				}
				,{
					"name":"pwd"
					,"regExp":/^[a-zA-Z0-9`~!@@#$%^&*]{6,20}$/
					,"msg":"비밀번호는 필수 입력 항목 입니다. 영어 대소문자, 숫자, 특수문자(`~!@@#$%^&*)만 가능합니다."
				}
				,{
					"name":"phone"
					,"regExp":/^(010)[0-9]{3,4}[0-9]{4}$/
					,"msg":"전화번호는 필수 입력  항목 입니다. 숫자만 입력할 수 있습니다."
				}
				,{
					"name":"addr"
					,"regExp":/.{1,50}/
					,"msg":"주소는 필수 입력 항목 입니다."
				}
			])
			if( flag == false ){ return; }
			if( confirm("입력하신 정보로 회원가입 하시겠습니까??") ) {
					$.ajax({
								url:"/joinProc.do"
								,type:"post"
								,data:$("[name='loginJoinForm']").serialize()
								,success:function(joinCnt){
									if( joinCnt==1 ) { 
										document.loginPageForm.submit();
									} else {
										alert("회원가입 실패!")
									}
								}
								,error:function(){ alert("웹서버 접속 실패!") }
							});
			}else{ return; }
		}

/////////////////////////////////////////////////////////////////////////////////////////////
		function checkForm( formName, arr_with_json ){

            var formObj = $("[name='"+formName+"']");	

            for( var i =0; i < arr_with_json.length; i++ ){
                var json = arr_with_json[i]
                
                var name = json["name"]
                var regExp = json["regExp"]
                var msg = json["msg"]

                var obj = formObj.find("[name='"+name+"']")

                var value = obj.val();
                if ( regExp.test(value) == false ){
                    alert(msg);		// 경고문
                    obj.val("");		// 입력창 비우기
                    obj.focus();		// 입력바 올려두기
                    return false;
                }
            }
            return true;   // 위 입력양식이 다 통과됬다면 true 리턴
        }


	</script>

</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
    <center>
    <section class="join">
        <h2>회원가입</h2>
        <ul>
          <form name="loginJoinForm" action="/loginJoinForm.do" method="get">
                <tr>
                    <td>
                    	<h3>이름</h3>
                    	<input type='text' name="u_name" placeholder="이름">
                        <h3>email</h3>
                        <input type='text' name="email" placeholder="xxx@eamil.com 형식">
                        <!-- 
			                       <select name="emailaddr">
			                           <option value="">직접입력</option>
			                           <option value="daum.net">daum.net</option>
			                           <option value="empal.com">empal.com</option>
			                           <option value="gmail.com">gmail.com</option>
			                           <option value="hanmail.net">hanmail.net</option>
			                           <option value="msn.com">msn.com</option>
			                           <option value="naver.com">naver.com</option>
			                           <option value="nate.com">nate.com</option>
			                       </select><br>
                         -->
						<h3>PW</h3>
						<input class="text" type="password" name="pwd" placeholder="패스워드"><br><br>
						<h3>PW 확인</h3>
						<input class="text" type="password" name="pwd_check" placeholder="패스워드확인"><br><br>
                        <h3>핸드폰 번호</h3>
                            <input type="text"name="phone" maxlength='11' placeholder="-를 제외하고 입력">
							<br>
                         <!--    <input type="button" value="전화번호 인증">--> 
                    <h3>주 소</h3>
                    <tr>
                    	<input type="text" id="postcode" name="postcode" placeholder="우편번호">
						<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" id="address" name="address" placeholder="주소"><br>
						<input type="text" id="detailAddress" name="detailAddress" placeholder="상세주소">
						<input type="hidden" id="extraAddress" name="extraAddress" placeholder="참고항목">
						<input type="hidden" id="addr" name="addr" placeholder="addr 들어갈 hidden">
                    </tr>
                    <br>
                    <table><input type="button" value="회원가입" class='join_btn'></table>  
                </tr>   

		  </table>
		  <center> 
          </form>
        </ul>
      </section>
      <form name="loginPageForm" method="post" action="/loginPageForm.do"></form>
      
      <%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>