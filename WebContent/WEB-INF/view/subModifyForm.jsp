<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600&display=swap"
	rel="stylesheet">
<meta charset="UTF-8">
<title>수도세, 전기세 페이지</title>
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

.input_text {
	float: right;
	text-align: right;
}
.text_div input{
text-align: right;
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

</head>
<body>
	<div class="container">
		<div id=main_div>
			<span id="main_text">수도세 수정</span>
		</div>
		<form method="post" action="subModify.do">
			<div class="text_div">
				<span class="text_id">호수</span> <span><input type="text"
					class="input_text"  name="no" value="${sub.no }" readonly /></span>
			</div>

			<div class="text_div">
				<span class="text_id">수도세 </span> <span><input type="text"
					class="input_text"  name="water_ind" value="${sub.water_ind }" /></span>
			</div>

			<div class="text_div">
				<span class="text_id">전기 기본세</span> <span><input type="text"
					class="input_text"  name="ele_basic" value="${sub.ele_basic }" /></span>
			</div>

			<div class="text_div">
				<span class="text_id">전기 개인세</span> <span>
				<input type="text" class="input_text" 	name="ele_ind" value="${sub.ele_ind }" /></span>
			</div>

			<div id="btn_div">
				<input class="submit_btn" type="hidden"
					value="${ ctxPath = pageContext.request.contextPath }" /> <input
					class="submit_btn" type="button" value="돌아가기"
					onclick="location.href = 'subList.do'" /> <input
					class="submit_btn" type="submit" value="수정" />
			</div>
		</form>
	</div>
</body>
</html>