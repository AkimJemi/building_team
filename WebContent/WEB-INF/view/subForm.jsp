<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600&display=swap"
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

.text_id {
	display: inline-block;
	width: 200px;
	font-weight: 400;
	font-size: 14px;
	color: #8C8C8C;
}

.text_div input {
	text-align: right;
	float: right;
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
	<c:if test="${errors.ele_ind  || errors.water_ind  ||errors.ele_basic ||errors.ele_ind  }">
		<script type="text/javascript">
			alert("빈 칸 없이 입력해주세요");
		</script>
	</c:if>
	<input type="hidden" value="${ ctxPath = pageContext.request.contextPath }" />

	<div class="container">
		<div id=main_div>
			<span id="main_text">수도세</span>
		</div>
		<form method="post" action="subRead.do">
			<div class="text_div">
				<span class="text_id">호수</span>
				<span>
					<input type="text" name="no" value="${subReq.no }" <%=readOnly%> />
				</span>
			</div>

			<div class="text_div">
				<span class="text_id">수도세 </span>
				<span>
					<input type="text" name="water_ind" value="${subReq.water_ind }" <%=readOnly%> />
				</span>
			</div>

			<div class="text_div">
				<span class="text_id">전기 기본세</span>
				<span>
					<input type="text" name="ele_basic" value="${subReq.ele_basic }" <%=readOnly%> />
				</span>
			</div>

			<div class="text_div">
				<span class="text_id">전기 개인세</span>
				<span>
					<input type="text" name="ele_ind" value="${subReq.ele_ind }" <%=readOnly%> />
				</span>
			</div>
			<div id="btn_div">
				<input class="submit_btn" type="button" value="돌아가기" onclick="location.href = 'subList.do'" />
				<%
				if (readOnly.equals("readOnly")) {
				%>
				<input class="submit_btn" type="button" value="수정" onclick="location.href = 'subModify.do?no=${subReq.no }'" />
				<%
				} else {
				%>
				<input class="submit_btn" type="submit" value="등록" />
				<%
				}
				%>

			</div>
		</form>
	</div>
</body>
</html>