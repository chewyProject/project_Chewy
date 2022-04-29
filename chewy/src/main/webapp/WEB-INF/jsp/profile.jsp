<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>프로필 업데이트 / 수정</h1>
	<div>
		<form action="nameupdate.do" method="POST">
			<input name="m_no" type="hidden" value="${info[0].m_no }">
			<p>이름 : ${info[0].m_name }</p>
			<input name="m_name" type="text" placeholder="new Full name">
			<input name="m_password" type="text" placeholder="password">			
			<input type="submit" value="수정">
		</form>
	</div>
	<div>
		<form action="emailupdate.do" method="POST">
			<input name="m_no" type="hidden" value="${info[0].m_no }">
			<p>이메일 : ${info[0].m_email }</p>
			<input name="m_email" type="text" placeholder="new email">
			<input name="m_password" type="text" placeholder="password">	
			<input type="submit" value="수정">
		</form>
	</div>
		<div>
		<form action="pwupdate.do" method="POST">
<%-- 			<input name="m_no" type="hidden" value="${info[0].m_no }"> --%>
<%-- 			<input id="pw1" name="m_password" type="hidden" value="${info[0].m_password }"> --%>
			
<!-- 			<input id="pw2" name="m_pw" type="text" placeholder="기존 비밀번호"> -->
<!-- 			<input id="newpw" name="m_newpw" type="text" placeholder="새 비밀번호"> -->
<!-- 			<input id="conpw" name="m_conpw" type="text" placeholder="비밀번호 확인"> -->
<!-- 			<input type="button" onclick="pwcon()" value="수정"> -->

			<input id="pw2" name="m_password" type="text" placeholder="기존 비밀번호">
 			<input id="newpw" name="m_newpw" type="text" placeholder="새 비밀번호">
 			<input id="conpw" name="m_confirmpw" type="text" placeholder="비밀번호 확인">
 			<input type="submit" value="수정">
		</form>
	</div>
	<p>이메일 : ${info[0].m_email }</p>
	<p>패스워드 : ${info[0].m_password }</p>

<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<script type="text/javascript">
	
	function pwChk(){
		var pw1 = $({"#pw1"});
		var pw2 = $({"#pw2"});
		var newpw = $({"#newpw"});
		var conpw = $({"#conpw"});
		
	}

</script>

















</body>
</html>