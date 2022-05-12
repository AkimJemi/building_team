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
}
.text_writer{
	border: solid 1px #D5D5D5;
	border-radius: 2px;
	height: 20px;
	float: right;
	text-align: right;

}
input:focus {
	background-color: #E8F0FE;
	outline: none;
}

.container {
	width: 50%;
	margin: auto;
}

.hidden_p {
	display: none
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

#main_sub_text {
	color: #DF4D4D;
}

.red_text {
	color: #DF4D4D;
}

.text_div {
	margin: 10px;
	padding: 5px;
	border-bottom: solid 1px #EAEAEA;
}

#text_read {
	border: solid 1px #D5D5D5;
	border-radius: 2px;
	height: 20px;
	background-color: #E8F0FE;
	text-align: right;
	float: right;
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
	margin : 0 5px;
}

.submit_btn:hover {
	background-color: #8C8C8C;
	color: #EAEAEA;
}
</style>
<meta charset="UTF-8">
<title>게시글쓰기</title>
</head>
<body>
	<div class="container">
		<div id=main_div>
			<span id="main_text">ビル情報入力</span> <span class="red_text">*下の必須入力事項をすべて入力してください。</span>
		</div>
		<form action="write.do" method="post">
			<div class="text_div">
				<span class="text_id" style="margin-left: 9px;">管理人</span> <span>
					<input id="text_read" type="text" name="memberid"
					value="${main.memberid}" readonly>
				</span>
				<c:if test="${errors.id }">アイディを入力してください。</c:if>
			</div>
			<div class="text_div">
				<span class="red_text">*</span><span class="text_id">面積</span> <span>
					<input class="text_writer"type="text" name="total_size" value="${main.total_size}" required>
				</span>
				<c:if test="${errors.total_size }">アイディを入力してください。</c:if>
			</div>
			<div class="text_div">
				<span class="red_text">*</span><span class="text_id">光熱費</span> <span>
					<input  class="text_writer"  type="text" name="com_heat" value="${main.com_heat}" required>
				</span>
				<c:if test="${errors.com_heat }">アイディを入力してください。</c:if>
			</div>
			<div class="text_div">
				<span class="red_text">*</span><span class="text_id">水道代</span> <span>
					<input  class="text_writer" type="text" name="com_water" value="${main.com_water}" required>
				</span>
				<c:if test="${errors.com_water }">アイディを入力してください。</c:if>
			</div>
			<div class="text_div">
				<span class="red_text">*</span><span class="text_id">電気代</span> <span>
					<input  class="text_writer" type="text" name="com_ele" value="${main.com_ele}"required>
				</span>
				<c:if test="${errors.com_ele }">アイディを入力してください。</c:if>
			</div>
			<div class="text_div">
				<span class="red_text">*</span><span class="text_id">掃除費用</span> <span>
					<input class="text_writer" type="text" name="com_clean" value="${main.com_clean}"required>
				</span>
				<c:if test="${errors.com_clean }">アイディを入力してください。</c:if>
			</div>
			<div class="text_div">
				<span class="red_text">*</span><span class="text_id">エレベーター維持費</span>
				<span> <input  class="text_writer" type="text" name="com_ev"
					value="${main.com_ev}" required></span>
				<c:if test="${errors.com_ev }">アイディを入力してください。</c:if>
			</div>
			<div class="text_div">
				<span class="red_text">*</span><span class="text_id">エスカレーター維持費</span>
				<span> <input  class="text_writer" type="text" name="com_es"
					value="${main.com_es}" required></span>
				<c:if test="${errors.com_es }">アイディを入力してください。</c:if>
			</div>
			<div class="text_div">
				<span class="red_text">*</span><span class="text_id">メンテナンス費用</span> <span>
					<input  class="text_writer" type="text" name="com_maintain"
					value="${main.com_maintain}" required>
				</span>
				<c:if test="${errors.com_maintain }">アイディを入力してください。</c:if>
			</div>
			<div class="text_div">
				<span class="red_text">*</span><span class="text_id">保険料</span> <span>
					<input  class="text_writer" type="text" name="com_insur" value="${main.com_insur}" required>
				</span>
				<c:if test="${errors.com_insur }">アイディを入力してください。</c:if>
			</div>
			<div class="text_div">
				<span class="red_text">*</span><span class="text_id">人件費</span> <span>
					<input  class="text_writer" type="text" name="com_labor" value="${main.com_labor}" required>
				</span>
				<c:if test="${errors.com_labor }">アイディを入力してください。</c:if>
			</div>
			<div id="btn_div">
				<p class="hidden_p">${ ctxPath = pageContext.request.contextPath }</p>
				<input class="submit_btn" type="submit" value="登録">
				<button class="submit_btn" type="button"
					onclick="location.href=' ${ctxPath}/main/read.do'">戻る</button>
			</div>
		</form>
	</div>
</body>
</html>