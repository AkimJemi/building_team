
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
.text_read {
   border: solid 1px #D5D5D5;
   border-radius: 2px;
   height: 20px;
   background-color: #E8F0FE;
   float:right;
   text-align: right;
}
.red_text {
	color: #DF4D4D;
}
</style>	
	
<title>상가정보 수정</title>
</head>
<body>
<div class="container">
	<div id=main_div>
			<span id="main_text">商店情報修正</span><span class="red_text">*下の必須入力事項をすべて入力してください。</span>
		</div>
	<form action="modify.do?no=${unit.no}" method="post">
		<div class="text_div">
				<span class="text_id">号室</span> <span>
				<input class="text_read" name="no" type="text" value= "${unit.no }"readonly /></span>
			</div>
		
		<div class="text_div">
				<span class="red_text">*</span><span class="text_id">商店名</span> <span>
				<input name="name" type="text" value= "	${unit.name}" required/></span>
			</div>
		
		<div class="text_div">
				<span class="red_text">*</span><span class="text_id">賃借人</span> <span>
					<input name="hire" type="text" value="${unit.hire }"required/></span>
			</div>
		
		<div class="text_div">
				<span class="red_text">*</span><span class="text_id">賃貸人</span> <span>
			<input name="lease" type="text" value="${unit.lease }" required/></span>
			</div>
		
		<div class="text_div">
				<span class="red_text">*</span><span class="text_id">貸し賃</span> <span>
				<input name="rent_fee" type="text" value= "${unit.rent_fee }"required /></span>
			</div>
		
		<div class="text_div">
				<span class="red_text">*</span><span class="text_id">利用期間</span> <span>
				<input name="period" type="text" value= "${unit.period }"required /></span>
			</div>
		
		<div class="text_div">
				<span class="red_text">*</span><span class="text_id">面積</span> <span>
					<input name="size" type="text" value="${unit.size }"required /></span>
			</div>
		
		<div class="text_div">
				<span class="red_text">*</span><span class="text_id">入居日</span> <span>
				<input name="coming" type="date" value= "${unit.coming }" required/></span>
			</div>
		
		<div class="text_div">
				<span class="red_text">*</span><span class="text_id">契約期間</span> <span>
			<input name="leaving" type="date" value="${unit.leaving }" required/></span>
			</div>
			<div id="btn_div">
		<input  class="submit_btn" type="submit" value="修正">
		</div>
	</form>
	</div>
</body>
</html>