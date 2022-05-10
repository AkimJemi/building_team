<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
body {
	display: flex;
	justify-content: center;
	text-align: center;
	align-items: center;
	height: 500px;
}

form {
	display: flex;
	justify-content: center;
	text-align: center;
	align-items: center;
	background-color: gray;
	width: 400px;
	height: 300px;
}

.divBox {
	
}

.idForm {
	display: flex;
	justify-content: space-between;
	align-items:center;
	margin: 20px;
	margin: 20px;
}

.popUp {
	position: absolute;
	top: 150px;
	left: 47%;
}

.submitButton {
	height: 30px;
	width: 60px;
}

.textArea {
	width: 100px;
	height: 30px;
}
</style>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<div class="popUp">
		<h3>
			<c:if test="${errors.password }">암호 입력</c:if>
		</h3>
	</div>
	<div class="popUp">
		<h3>
			<c:if test="${errors.id }">아이디 입력</c:if>
		</h3>
	</div>

	<form action="login.do" method="post">
		<div class="divBox">
			<div class="idForm">
				<c:if test="${errors.idOrPwNotMatch }">  
		아이디와 암호와 일치하지 않습니다.
		</c:if>
				<h4>아이디 :</h4>
				<input class="textArea" type="text" name="id" value="${param.id }">
			</div>
			<div class="idForm">
				<h4>암 호 :</h4>
				<input class="textArea" type="password" name="password">
			</div>
			<div class="idForm">
				<input class="submitButton" type="submit" value="로그인">
			</div>
		</div>
	</form>
</body>
</html>