<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 페이지</h1>

	<form id="register" name="register" action="register2.do"  method="POST" onsubmit="return checkForm();">
    <div class="form">
        <table class="ftb">
            <tr>
                <td>이름</td>
                <td><input type="text" name="m_name" id="m_name" /></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="text" name="m_email" id="m_email" /></td>
            </tr>
            <tr>
                <td>암호</td>
                <td><input type="text" name="m_password" id="m_password" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <!-- submint 일경우는 onsubmit="return checkForm();"-->
                    <input type="submit" value="회원가입" />
                    <!-- button 일 경우는 아래 코드처럼 -->
                    <!--<input type="button" onclick="checkForm"></button>-->
                    <input type="reset" value="취소">
                </td>
            </tr>
        </table>
    </div>
</form>
	
</body>
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<script type="text/javascript">

function checkForm() {

    var m_name = $("#m_name");
    var m_email = $("#m_email");
    var m_password = $("#m_password");

    // 이름 입력 유무 체크
    if(m_name.val() == "") {
        alert("이름을 입력하시오");
        return false; // 이름 입력이 안되어 있다면 submint 이벤트를 중지
    }
    
    var emailVal = $("#m_email").val(); 
    var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; // 검증에 사용할 정규식 변수 regExp에 저장
    if (emailVal.match(regExp) != null) {
    	alert('Good!'); 
    } else {
    	alert('Error'); 
    	return false;
    }

    // 이메일 입력 유무 체크
    if(m_email.val() == '') {
        alert("아이디를 입력하시오");
        return false; // 이메일 입력이 안되어 있다면 submint 이벤트를 중지
    }
    
    // 암호 입력 유무 체크
    if(m_password.val() == ''){
        alert('암호를 입력하세요.');
        return false;
    }
}
</script>
</html>