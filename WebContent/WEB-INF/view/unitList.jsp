<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>상가 목록</title>
<style type="text/css">
body {
	display: flex;
	justify-content: center;
	text-align: center;
	align-items: center;
}

form {
	margin-top: 30px;
	display: inline-block;
	height: 800px;
}

table {
	width: 700px;
}

.header {
	position: absolute;
	top: 50px;
	left: 50px;
	margin: 30px;
}

.header div {
	gap: 10px;
}

a {
	text-decoration-line: none;
}

.attribute td {
	padding: 3px;
	font-size: 10px;
}

.buttonArea {
	
}

.trTarget :nth-child(1) {
	width: 15%;
}

.trTarget :nth-child(3) {
	width: 15%;
}

.trTarget :nth-child(4) {
	width: 20%;
}

.trTarget :nth-child(2) {
	width: 40%;
}
</style>
</head>
<body>
	<form action="">
		<div class="header">
			<a href="write.do">[ 상가 등록 ]</a><br /> <a href="<%=request.getContextPath()%>/subList.do?uri=main">[ 관리비 정보 ]</a><br /> <br /> 
			<a href="<%=request.getContextPath()%>/logout.do">[ 로그아웃 ]</a>
		</div>
		<table border="1">
			<tr class="buttonArea">
				<td colspan="4">
					<h1>상가정보</h1>
				</td>
			</tr>
			<tr class="trTarget">
				<td>상가번호</td>
				<td>상호명</td>
				<td>면적</td>
				<td>임대인</td>
			</tr>
			<c:if test="${unitPage.hasNoUnits() }">
				<tr>
					<td>정보가 없습니다.</td>
				</tr>
			</c:if>
			<c:forEach var="unit" items="${unitPage.content }">
				<tr class="trTarget">
					<td>
						<a href="read.do?no=${unit.no }&pageNo=${unitPage.currentPage}"> <c:out value="${unit.no }" />
						</a>
					</td>
					<td>${unit.name }</td>
					<td>${unit.size }</td>
					<td>${unit.lease}</td>
				</tr>
			</c:forEach>
			<c:if test="${unitPage.hasUnits() }">
				<tr>
					<td colspan="4">
						<c:if test="${unitPage.startPage>5 }">
							<a href="list.do?pageNo=${unitPage.startPage-5 }">[이전]</a>
						</c:if>
						<c:forEach var="pNo" begin="${unitPage.startPage }" end="${unitPage.endPage }">
							<a href="list.do?pageNo=${pNo }">[${pNo }]</a>
						</c:forEach>
						<c:if test="${unitPage.endPage<unitPage.totalPages }">
							<a href="list.do?pageNo=${unitPage.startPage +5 }">[다음]</a>
						</c:if>
					</td>
				</tr>
			</c:if>
		</table>
	</form>
</body>
</html>