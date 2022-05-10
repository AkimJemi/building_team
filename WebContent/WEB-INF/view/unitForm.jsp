<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<%
String a = "";
if (request.getParameter("readOnly") != null) {
	a = "readOnly";
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>상가정보 입력폼</title>
<style>
.Container_Main {
	display: flex;
	height: 500px;
	width: 100%;
	text-align: center;
	justify-content: center;
	flex-direction: center;
	align-items: center;
}

.Container_Inner {
	
}

.Container_Box_Main {
	font-size: 40px;
}

.Container_Box {
	display: flex;
	justify-content: space-between;
	margin: 5px;
}

.Container_label {
	
}
</style>


</head>
<body>
	<form method="post" action="write.do">
		<div class="Container_Main">
			<div class="Container_Inner">
				<div class="Container_Box_Main">상가정보</div>
				<div class="Container_Box">
					<div class="Container_label">호수 :</div>
					<input type="text" name="no" value="${subReq.no }" <%=a%> />
					<c:if test="${errors.no }">호수를 입력하세요</c:if>
				</div>
				<div class="Container_Box">
					<div class="Container_label">관리자 이름 :</div>
					<input type="text" name="name" value="${subReq.no }" <%=a%> />
					<c:if test="${errors.no }">호수를 입력하세요</c:if>
				</div>
				<div class="Container_Box">
					<div class="Container_label">임차인 :</div>
					<input type="text" name="hire" value="${subReq.no }" <%=a%> />
					<c:if test="${errors.no }">호수를 입력하세요</c:if>
				</div>
				<div class="Container_Box">
					<div class="Container_label">임대인 :</div>
					<input type="text" name="lease" value="${subReq.no }" <%=a%> />
					<c:if test="${errors.no }">호수를 입력하세요</c:if>
				</div>
				<div class="Container_Box">
					<div class="Container_label">임대료 :</div>
					<input type="text" name="rent_fee" value="${subReq.no }" <%=a%> />
					<c:if test="${errors.no }">호수를 입력하세요</c:if>
				</div>
				<div class="Container_Box">
					<div class="Container_label">사용기간 :</div>
					<input type="text" name="period" value="${subReq.no }" <%=a%> />
					<c:if test="${errors.no }">호수를 입력하세요</c:if>
				</div>
				<div class="Container_Box">
					<div class="Container_label">면적 :</div>
					<input type="text" name="size" value="${subReq.no }" <%=a%> />
					<c:if test="${errors.no }">호수를 입력하세요</c:if>
				</div>
				<div class="Container_Box">
					<div class="Container_label">입주일 :</div>
					<input type="text" name="coming" value="${subReq.no }" <%=a%> />
					<c:if test="${errors.no }">호수를 입력하세요</c:if>
				</div>
				<div class="Container_Box">
					<div class="Container_label">계약기간 :</div>
					<input type="text" name="leaving" value="${subReq.no }" <%=a%> />
					<c:if test="${errors.no }">호수를 입력하세요</c:if>
				</div>
			</div>
			<input type="hidden"
				value="${ ctxPath = pageContext.request.contextPath }" />
			<div class="Container_label">
				<input type="submit" value="등록" /> <input
					type="button" value="돌아가기"
					onclick="location.href = '${ctxPath}/index.jsp'" />
			</div>
		</div>
	</form>
</body>
</html>