
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600&display=swap"
	rel="stylesheet">
<style>

body {
	font-family: 'Open Sans', sans-serif;
}

input {
	border: solid 1px #D5D5D5;
	border-radius: 2px;
	height: 20px;
	float: right;
	margin: 0 5px
}

input:focus {
	background-color: #E8F0FE;
	outline: none;
}

.container {
	width: 50%;
	margin: auto;
}

#main_div {
	border-bottom: solid 2px gray;
	margin-bottom: 20px;
	margin-top: 50px;
}

#main_text {
	font-weight: bold;
	font-size: 25px;
}

.text_div {
	margin: 10px;
	padding: 5px;
	border-bottom: solid 1px #EAEAEA;
}

.text_id {
	display: inline-block;
	width: 200px;
	font-weight: 400;
	font-size: 14px;
	color: #8C8C8C;
}

#btn_div {
	float: right;
	margin-top: 30px;
}
.text_div input {
	float: right;
	text-align: right;
}
.submit_btn {
	background-color: #353535;
	color: #EAEAEA;
	padding: auto 30px;
	border-radius: 2px;
	border: none;
	width: 100px;
	height: 30px;
	font-size: 15px;
	font-weight: 400;
}

.submit_btn:hover {
	background-color: #8C8C8C;
	color: #EAEAEA;
}

</style>	
	
<title>상가정보 수정</title>
</head>
<body>
<div class="container">
	<div id=main_div>
			<span id="main_text">상가정보수정</span>
		</div>
	<form action="modify.do?no=${unit.no}" method="post">
		<div class="text_div">
				<span class="text_id">호실</span> <span>
				<input name="no" type="text" value= "${unit.no }" /></span>
			</div>
		
		<div class="text_div">
				<span class="text_id">상호명</span> <span>
				<input name="name" type="text" value= "	${unit.name}" /></span>
			</div>
		
		<div class="text_div">
				<span class="text_id">임차인</span> <span>
					<input name="hire" type="text" value="${unit.hire } "/></span>
			</div>
		
		<div class="text_div">
				<span class="text_id">임대인</span> <span>
			<input name="lease" type="text" value="${unit.lease }" /></span>
			</div>
		
		<div class="text_div">
				<span class="text_id">임대료</span> <span>
				<input name="rent_fee" type="text" value= "${unit.rent_fee }" /></span>
			</div>
		
		<div class="text_div">
				<span class="text_id">사용기간</span> <span>
				<input name="period" type="text" value= "${unit.period }" /></span>
			</div>
		
		<div class="text_div">
				<span class="text_id">면적</span> <span>
					<input name="size" type="text" value="${unit.size }" /></span>
			</div>
		
		<div class="text_div">
				<span class="text_id">입주일</span> <span>
				<input name="coming" type="date" value= "${unit.coming }" /></span>
			</div>
		
		<div class="text_div">
				<span class="text_id">계약기간</span> <span>
			<input name="leaving" type="date" value="${unit.leaving }" /></span>
			</div>
			<div id="btn_div">
		<input  class="submit_btn" type="submit" value="글 수정">
		</div>
	</form>
	</div>
</body>
</html>