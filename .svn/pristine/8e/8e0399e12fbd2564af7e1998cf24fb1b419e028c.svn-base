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
.head_text {
	font-weight: bold;
	font-size: 25px;
	border-bottom: 2px solid gray;
	color: black;
	text-align: left;
}
.no_a{
  color:#8C8C8C;
}
.no_a:hover{
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
   	text-decoration-line: none;
   	  color:#8C8C8C;
 }
 .page_a:hover{
 margin:0 10px;
   	text-decoration-line: none;
   	  color:#5d5d5d;
 }
#btn_div {
	float: right;
	margin-top: 30px;
}
#btn_div2 {
	float: left;
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
				<td class="head_text" colspan="4">商店情報</td>
			</tr>
			<tr class="trTarget" >
				<td class="td_title">商店号室</td>
				<td class="td_title">商店名</td>
				<td class="td_title">面積</td>
				<td class="td_title">賃貸人</td>
			</tr>
			<c:if test="${unitPage.hasNoUnits() }">
				<tr>
					<td>情報がありません。</td>
				</tr>
			</c:if>
			<c:forEach var="unit" items="${unitPage.content }">
				<tr class="trTarget">
					<td><a class="no_a"
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
							<a class="page_a" href="list.do?pageNo=${unitPage.startPage-5 }">前へ</a>
						</c:if> <c:forEach var="pNo" begin="${unitPage.startPage }"
							end="${unitPage.endPage }">
							<a class="page_a" href="list.do?pageNo=${pNo }">${pNo }</a>
						</c:forEach> <c:if test="${unitPage.endPage<unitPage.totalPages }">
							<a class="page_a" href="list.do?pageNo=${unitPage.startPage +5 }">次へ</a>
						</c:if></td>
				</tr>
			</c:if>
		</table>
		<span id="btn_div2">
		<button class="submit_btn" type="button" onclick="location.href='write.do'">商店登録</button>
		</span>
		<span id="btn_div">
			<c:set var="pageNo"
				value="${empty param.pageNp ? '1' : param.pageNo }" />
			<button class="submit_btn" type="button" onclick="location.href='<%=request.getContextPath()%>/main/read.do'">ビル情報</button>
			
			<button class="submit_btn" type="button" onclick="location.href='<%=request.getContextPath()%>/subList.do?uri=main'">管理費情報</button>
	</span>
		</div>
</body>
</html>