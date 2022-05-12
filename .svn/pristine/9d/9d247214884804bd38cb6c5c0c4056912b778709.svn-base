<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<%
String readOnly = "readOnly";
if (request.getAttribute("readOnly") != null && (Boolean) request.getAttribute("readOnly") == false) {
	readOnly = "";
}
%>
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
.container {
	width: 50%;
	margin: auto;
}

input {
	border: none;
	border-radius: 2px;
	height: 20px;
	float: right;
	text-align: right;
}

input:focus {
	outline: none;
}

.input1 {
	border: none;
	border-radius: 2px;
	height: 20px;
	float: right;
	background-color: #EAEAEA;
	color: #515151;
}

.input1:focus {
	outline: none;
}

#main_div {
	border-bottom: solid 2px gray;
	margin-bottom: 20px;
	margin-top: 50px;
}

#main_text {
	font-weight: bold;
	font-size: 25px;
	text-align: center;
}

.text_div {
	margin: 3px 10px 0 10px;
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
.text_id1 {
	display: inline-block;
	width: 200px;
	font-weight: 400;
	font-size: 14px;
	color: #515151;
	font-weight: bold;
}

.text_div_total {
	margin: 0 5px 10px 5px;
	padding: 5px;
	border-bottom: solid 1px #EAEAEA;
	background-color: #EAEAEA;
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
	margin: 10px 5px;
}

.submit_btn:hover {
	background-color: #8C8C8C;
	color: #EAEAEA;
}
</style>
<%
if (request.getAttribute("SubSuccess") != null) {
	String SubSuccess = (String) request.getAttribute("SubSuccess");
	if (SubSuccess.equals("insert")) {
%>
<script type="text/javascript">
alert( ${subReq.no } + "号室追加完了");
</script>
<%
} else if (SubSuccess.equals("update")) {
%>
<script type="text/javascript">
alert( ${sub.no } + "号室修正完了");
</script>
<%
}
}
%>
<%
if (request.getAttribute("NumExist") != null) {
%>
<script type="text/javascript">
alert( ${subReq.no } + "号室が存在します。");
</script>
<%
}
%>
</head>

<body>
	<c:if
		test="${errors.ele_ind  || errors.water_ind  ||errors.ele_basic ||errors.ele_ind  }">
		<script type="text/javascript">
			alert("空欄なしに入力してください。");
		</script>
	</c:if>

	<input type="hidden"
		value="${ ctxPath = pageContext.request.contextPath }" />
	<div class="container">
		<div id="main_div">
			<div id="main_text">領収証</div>
		</div>
		<form method="post" action="subRead.do">
			<div class="text_div">
				<span class="text_id">号室</span> <span><input type="text"
					name="no" value="${sub.no }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">商店名</span> <span><input type="text"
					name="name" value="${unit.name }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">面積</span> <span><input type="text"
					name="size" value="${unit.size }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">個人水道代</span> <span><input type="text"
					name="water_ind" value="${sub.water_ind }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">公共水道代</span> <span><input type="text"
					name="com_pri_water" value="${recipt.com_pri_water  }" <%=readOnly%> /></span>
			</div>
			<div class="text_div_total">
				<span class="text_id1">水道代　合計</span> <span><input
					class="input1" type="text" name="total_water"
					value="${recipt.total_water }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">基本電気代</span> <span><input type="text"
					name="ele_basic" value="${sub.ele_basic }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">個人電気代</span> <span><input type="text"
					name="ele_ind" value="${sub.ele_ind }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">公共電気代</span> <span><input type="text"
					name="com_pri_ele" value="${recipt.com_pri_ele }" <%=readOnly%> /></span>
			</div>
			<div class="text_div_total">
				<span class="text_id1">電気代　合計</span> <span><input type="text"
					class="input1" name="total_ele" value="${recipt.total_ele}"
					<%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">光熱費</span> <span><input type="text"
					name="com_heat" value="${recipt.com_heat }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">掃除費用</span> <span><input type="text"
					name="com_clean" value="${recipt.com_clean }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">エレベーター維持費</span> <span><input
					type="text" name="com_ev" value="${recipt.com_ev  }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">エレベーター維持費</span> <span><input
					type="text" name="com_es" value="${recipt.com_es  }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">維持費</span> <span><input type="text"
					name="com_maintain" value="${recipt.com_maintain  }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">保険料</span> <span><input type="text"
					name="com_insur " value="${recipt.com_insur  }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">人件費</span> <span><input type="text"
					name="ele_ind" value="${recipt.com_labor  }" <%=readOnly%> /></span>
			</div>
			<div class="text_div_total">
				<span class="text_id1">公共管理費</span> <span><input type="text"
					class="input1" name="com_ele" value="${recipt.total_common}"
					<%=readOnly%> /></span> <input type="hidden" name="" value="" />
			</div>
			<div class="text_div">
				<span class="text_id">当月付加税 </span> <span><input type="text"
					name="ele_ind" value="${recipt.total_All }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">納付期限</span> <span><input type="text"
					name="ele_ind" value="毎月25日" <%=readOnly%> /></span>
			</div>
			 <input class="submit_btn" style="text-align: center" type="button" value="戻る" onclick="location.href = 'subList.do?uri=main'" />
		</form>
	</div>
</body>
</html>