<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%@ page import="main.model.Main"%>
<%
String readOnly = "readOnly";
if (request.getAttribute("readOnly") != null && (Boolean) request.getAttribute("readOnly") == false) {
	readOnly = "";
}
%>

<html>
<head>
<meta charset="UTF-8">
<title>수도세, 전기세 페이지</title>
<style>
body {
	
}

.Container_Main {
	display: flex;
	height: 1000px;
	width: 100%;
	text-align: center;
	justify-content: center;
	flex-direction: center;
	align-items: center;
}

.Container_Box_Main {
	font-size: 40px;
}

.Container_label {
	margin: 10px 10px;
}

.Container_Box {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.Container_Box input {
	text-align: right;
	height: 80%;
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
	<form method="post" action="subRead.do">
		<div class="Container_Main">
			<div class="Container_Inner">
				<div class="Container_Box_Main">영수증</div>
				<div class="Container_Box">
					<div class="Container_label">호실 :</div>
					<input type="text" name="no" value="${sub.no }" <%=readOnly%> />
				</div>
				<div class="Container_Box">
					<div class="Container_label">상가명 :</div>
					<input type="text" name="water_ind" value="${unit.name }" <%=readOnly%> />
				</div>
				<div class="Container_Box">
					<div class="Container_label">면적 :</div>
					<input type="text" name="ele_basic" value="${unit.size }" <%=readOnly%> />

				</div>
				<div class="Container_Box">
					<div class="Container_label">개인 수도세 :</div>
					<input type="text" name="ele_ind" value="${sub.water_ind }" <%=readOnly%> />
				</div>
				<br />
				<div class="Container_Box">
					<div class="Container_label">공동 수도세 :</div>
					<input type="text" name="com_water" value="${recipt.com_pri_water  }" <%=readOnly%> />
				</div>
				<div class="Container_Box">
					<div class="Container_label">수도세 총합 :</div>
					<input type="text" name="ele_ind" value="${recipt.total_water }" <%=readOnly%> />
				</div>
				<div class="Container_Box">
					<div class="Container_label">기본 전기세 :</div>
					<input type="text" name="ele_ind" value="${sub.ele_basic }" <%=readOnly%> />
				</div>
				<div class="Container_Box">
					<div class="Container_label">개인 전기세 :</div>
					<input type="text" name="ele_ind" value="${sub.ele_ind }" <%=readOnly%> />
				</div>
				<div class="Container_Box">
					<div class="Container_label">공동 전기세 :</div>
					<input type="text" name="ele_ind" value="${recipt.com_pri_ele }" <%=readOnly%> />
				</div>
				<div class="Container_Box">
					<div class="Container_label">전기세 총합:</div>
					<input type="text" name="ele_ind" value="${recipt.total_ele}" <%=readOnly%> />
				</div>
				<div class="Container_Box">
					<div class="Container_label">난방비:</div>
					<input type="text" name="ele_ind" value="${recipt.com_heat }" <%=readOnly%> />
				</div>
				<div class="Container_Box">
					<div class="Container_label">청소비 :</div>
					<input type="text" name="com_clean" value="${recipt.com_clean }" <%=readOnly%> />
				</div>
				<div class="Container_Box">
					<div class="Container_label">엘레베이터 유지비 :</div>
					<input type="text" name="com_ev" value="${recipt.com_ev  }" <%=readOnly%> />
				</div>
				<div class="Container_Box">
					<div class="Container_label">에스커레이터 유지비 :</div>
					<input type="text" name="com_es" value="${recipt.com_es  }" <%=readOnly%> />
				</div>
				<div class="Container_Box">
					<div class="Container_label">유지비 :</div>
					<input type="text" name="com_maintain" value="${recipt.com_maintain  }" <%=readOnly%> />
				</div>
				<div class="Container_Box">
					<div class="Container_label">보험 :</div>
					<input type="text" name="com_insur " value="${recipt.com_insur  }" <%=readOnly%> />
				</div>
				<div class="Container_Box">
					<div class="Container_label">인건비 :</div>
					<input type="text" name="ele_ind" value="${recipt.com_labor  }" <%=readOnly%> />
				</div>
				<div class="Container_Box">
					<div class="Container_label">공동 관리비 :</div>
					<input type="text" name="com_ele" value="${recipt.total_common}" <%=readOnly%> />
					<input type="hidden" name="" value="" />
				</div>
				<div class="Container_Box">
					<div class="Container_label">당월 부가세 :</div>
					<input type="text" name="ele_ind" value="${recipt.total_All }" <%=readOnly%> />
				</div>
				<div class="Container_Box">
					<div class="Container_label">납부기한 :</div>
					<input type="text" name="ele_ind" value="" <%=readOnly%> />
				</div>

				<div class="Container_label">
					<input type="button" value="확인" onclick="location.href = 'subRead.do'" />
					<input type="button" value="돌아가기" onclick="location.href = 'subList.do'" />
				</div>
			</div>
		</div>
	</form>
</body>
</html>