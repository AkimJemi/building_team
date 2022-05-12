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
alert( ${subReq.no } + "호실 추가 완료");
</script>
<%
} else if (SubSuccess.equals("update")) {
%>
<script type="text/javascript">
alert( ${sub.no } + "호실 수정 완료");
</script>
<%
}
}
%>
<%
if (request.getAttribute("NumExist") != null) {
%>
<script type="text/javascript">
alert( ${subReq.no } + "호실은 이미 존재합니다.");
</script>
<%
}
%>
</head>

<body>
	<c:if
		test="${errors.ele_ind  || errors.water_ind  ||errors.ele_basic ||errors.ele_ind  }">
		<script type="text/javascript">
			alert("빈 칸 없이 입력해주세요");
		</script>
	</c:if>

	<input type="hidden"
		value="${ ctxPath = pageContext.request.contextPath }" />
	<div class="container">
		<div id="main_div">
			<div id="main_text">영수증</div>
		</div>
		<form method="post" action="subRead.do">
			<div class="text_div">
				<span class="text_id">호실</span> <span><input type="text"
					name="no" value="${sub.no }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">상가명</span> <span><input type="text"
					name="water_ind" value="${unit.name }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">면적</span> <span><input type="text"
					name="ele_basic" value="${unit.size }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">개인 수도세</span> <span><input type="text"
					name="ele_ind" value="${sub.water_ind }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">공동 수도세</span> <span><input type="text"
					name="com_water" value="${recipt.com_pri_water  }" <%=readOnly%> /></span>
			</div>
			<div class="text_div_total">
				<span class="text_id1">수도세 총합</span> <span><input
					class="input1" type="text" name="ele_ind"
					value="${recipt.total_water }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">기본 전기세</span> <span><input type="text"
					name="ele_ind" value="${sub.ele_basic }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">개인 전기세</span> <span><input type="text"
					name="ele_ind" value="${sub.ele_ind }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">공동 전기세</span> <span><input type="text"
					name="ele_ind" value="${recipt.com_pri_ele }" <%=readOnly%> /></span>
			</div>
			<div class="text_div_total">
				<span class="text_id1">전기세 총합</span> <span><input type="text"
					class="input1" name="ele_ind" value="${recipt.total_ele}"
					<%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">난방비</span> <span><input type="text"
					name="ele_ind" value="${recipt.com_heat }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">청소비</span> <span><input type="text"
					name="com_clean" value="${recipt.com_clean }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">엘레베이터 유지비</span> <span><input
					type="text" name="com_ev" value="${recipt.com_ev  }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">에스커레이터 유지비</span> <span><input
					type="text" name="com_es" value="${recipt.com_es  }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">유지비</span> <span><input type="text"
					name="com_maintain" value="${recipt.com_maintain  }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">보험</span> <span><input type="text"
					name="com_insur " value="${recipt.com_insur  }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">인건비</span> <span><input type="text"
					name="ele_ind" value="${recipt.com_labor  }" <%=readOnly%> /></span>
			</div>
			<div class="text_div_total">
				<span class="text_id1">공동 관리비</span> <span><input type="text"
					class="input1" name="com_ele" value="${recipt.total_common}"
					<%=readOnly%> /></span> <input type="hidden" name="" value="" />
			</div>
			<div class="text_div">
				<span class="text_id">당월 부가세</span> <span><input type="text"
					name="ele_ind" value="${recipt.total_All }" <%=readOnly%> /></span>
			</div>
			<div class="text_div">
				<span class="text_id">납부기한</span> <span><input type="text"
					name="ele_ind" value="" <%=readOnly%> /></span>
			</div>
			 <input class="submit_btn"
				type="button" value="돌아가기" onclick="location.href = 'subList.do?uri=main'" />
		</form>
	</div>
</body>
</html>