<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
<style type="text/css">
body{
font-family: 'Open Sans', sans-serif;
} 
#joinForm {
  position:absolute;
  width:400px;
  height:400px;
  padding: 30px, 20px;
  background-color:#FFFFFF;
  text-align:center;
  top:40%;
  left:50%;
  transform: translate(-50%,-50%);
  border-radius: 15px;
}
#FormText{
	font-size: 25px;
	font-weight: bold;
}
.textForm {
  border-bottom: 2px solid #adadad;
  margin: 30px;
  padding: 10px 10px;
}
.basic{
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}
#submit_btn{
   background-color: #a3a1a1;
   color: #EAEAEA;
   padding: 15px 30px;
   border-radius: 15px;
   border: none;
   width:90%;
   font-weight: bold;
   font-size: 15px;
}
#submit_btn:hover{
   background-color: #8C8C8C;
   color: #EAEAEA;
}
</style>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<div>
		<h3>
			<c:if test="${errors.password }">암호 입력</c:if>
		</h3>
	</div>
	<div>
		<h3>
			<c:if test="${errors.id }">아이디 입력</c:if>
		</h3>
	</div>

	<form id="joinForm" action="login.do" method="post">
		<div id="FormText">Login</div>
					<c:if test="${errors.idOrPwNotMatch }">  
		아이디와 암호와 일치하지 않습니다.
		</c:if>
		<div class="textForm">
					<input class="basic" type="text" name="id" value="${param.id }">
		</div>
		<div class="textForm">
					<input  class="basic"  type="password" name="password">
		</div>
					
					<input  id="submit_btn" type="submit" value="로그인">
	</form>
</body>
</html>