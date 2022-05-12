<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>상가 목록</title>
<style type="text/css">
body {
	font-family: 'Open Sans', sans-serif;
}

.container {
	width: 50%;
	margin: auto;
}

table {
	width: 100%;
	border: none;
	margin-top: 50px;
}

td {
	border: none;
	color: #8C8C8C;
	text-align: center;
	height:35px;
	padding:0;
}
.td_title {
	color: #747474;
	text-align: center;
	height:35px;
	font-weight: bold;
	border-bottom: 1px solid gray;
}
a {
  text-decoration-line: none;
  color:#8C8C8C;
  }
a:hover {
  text-decoration-line: none;
  color:#5D5D5D;
  }
.head_text {
	font-weight: bold;
	font-size: 25px;
	border-bottom: 2px solid gray;
	color: black;
	text-align: left;
}

a {
	text-decoration-line: none;
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
#tr_page_a{
padding-top: 15px;
}
 .page_a{
 margin:0 10px;
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
		<table border="1">
			<tr>
				<td class="head_text" colspan="4">상가정보</td>
			</tr>
			<tr class="trTarget" >
				<td class="td_title">상가번호</td>
				<td class="td_title">상호명</td>
				<td class="td_title">면적</td>
				<td class="td_title">임대인</td>
			</tr>
			<c:if test="${unitPage.hasNoUnits() }">
				<tr>
					<td>정보가 없습니다.</td>
				</tr>
			</c:if>
			<c:forEach var="unit" items="${unitPage.content }">
				<tr class="trTarget">
					<td><a
						href="read.do?no=${unit.no }&pageNo=${unitPage.currentPage}">
							<c:out value="${unit.no }" />
					</a></td>
					<td>${unit.name }</td>
					<td>${unit.size }</td>
					<td>${unit.lease}</td>
				</tr>
			</c:forEach>
			<c:if test="${unitPage.hasUnits() }">
				<tr>
					<td id="tr_page_a" colspan="4"><c:if test="${unitPage.startPage>5 }">
							<a class="page_a" href="list.do?pageNo=${unitPage.startPage-5 }">이전</a>
						</c:if> <c:forEach var="pNo" begin="${unitPage.startPage }"
							end="${unitPage.endPage }">
							<a class="page_a" href="list.do?pageNo=${pNo }">${pNo }</a>
						</c:forEach> <c:if test="${unitPage.endPage<unitPage.totalPages }">
							<a class="page_a" href="list.do?pageNo=${unitPage.startPage +5 }">다음</a>
						</c:if></td>
				</tr>
			</c:if>
		</table>
		<div id="btn_div">
			<c:set var="pageNo"
				value="${empty param.pageNp ? '1' : param.pageNo }" />
			<button class="submit_btn" type="button" onclick="location.href='<%=request.getContextPath()%>/main/read.do'">건물정보</button>
			<button class="submit_btn" type="button" onclick="location.href='write.do'">상가등록</button>
			<button class="submit_btn" type="button" onclick="location.href='<%=request.getContextPath()%>/subList.do?uri=main'">관리비정보</button>
		</div>
	</div>
</body>
</html>