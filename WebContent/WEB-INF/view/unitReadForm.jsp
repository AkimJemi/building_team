<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>商店情報</title>
<style>
body {
	font-family: 'Open Sans', sans-serif;
}

.input_text {
	border: solid 1px #D5D5D5;
	border-radius: 2px;
	height: 20px;
	float: right;
	margin: 0 5px;
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

.submit_btn {
	background-color: #353535;
	color: #EAEAEA;
	padding: auto 30px;
	border-radius: 2px;
	border: none;
	width: 120px;
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
	float: right;
	text-align: right;
}
</style>
<script type="text/javascript">
	function button_event(no) {
		if (confirm("削除しますか？") == true) { //확인
			location.href = "delete.do?no=" + no;
		} else { //취소
			return;
		}
	}
	function button_event2(no) {
		if (confirm("リセットしますか？") == true) { //확인
			location.href = "reset.do?no=" + no;
		} else { //취소
			return;
		}
	}
</script>
</head>
<body>

	<div class="container">
		<div id=main_div>
			<span id="main_text">商店情報</span>
		</div>
		<form action="modify.do?no=${unit.no}" method="post">
			<div class="text_div">
				<span class="text_id">号室</span>
				<span>
					<input class="text_read" name="hire" type="text" value="${unit.no}号" readonly />
				</span>

			</div>

			<div class="text_div">
				<span class="text_id">管理人</span>
				<span>
					<input class="text_read" name="hire" type="text" value="${unit.name}" readonly />
				</span>
			</div>

			<div class="text_div">
				<span class="text_id">賃借人</span>
				<span>
					<input class="text_read" name="hire" type="text" value="${unit.hire} " readonly />
				</span>
			</div>

			<div class="text_div">
				<span class="text_id">賃貸人</span>
				<span>
					<input class="text_read" name="hire" type="text" value="${unit.lease}" readonly />
				</span>
			</div>

			<div class="text_div">
				<span class="text_id">貸し賃</span>
				<span>
					<input class="text_read" name="hire" type="text" value="${rent_fee}" readonly />
				</span>
			</div>

			<div class="text_div">
				<span class="text_id">利用期間</span>
				<span>
					<input class="text_read" name="hire" type="text" value="${unit.period}日 " readonly />
				</span>
			</div>

			<div class="text_div">
				<span class="text_id">面積</span>
				<span>
					<input class="text_read" name="hire" type="text" value="${unit.size}㎡" readonly />
				</span>
			</div>

			<div class="text_div">
				<span class="text_id">入居日</span>
				<span>
					<input class="text_read" name="hire" type="text" value="${unit.coming} " readonly />
				</span>
			</div>

			<div class="text_div">
				<span class="text_id">契約期間</span>
				<span>
					<input class="text_read" name="hire" type="text" value="${unit.leaving} " readonly />
				</span>
			</div>


			<div id="btn_div">
				<c:set var="pageNo" value="${empty param.pageNp ? '1' : param.pageNo }" />
				<button class="submit_btn" type="button" onclick="location.href='modify.do?no=${unit.no }'">修正</button>
				<button class="submit_btn" type="button" onclick="button_event2('${unit.no}')">初期化</button>
				<button class="submit_btn" type="button" onclick="button_event('${unit.no}')">削除</button>
				<button class="submit_btn" type="button" onclick="location.href='list.do?pageNo=${pageNo}'">戻る</button>

			</div>
		</form>
	</div>
</body>
</html>