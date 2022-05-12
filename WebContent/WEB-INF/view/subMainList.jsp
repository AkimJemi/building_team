<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sub 리스트</title>
<style type="text/css">
body {
	font-family: 'Open Sans', sans-serif;
}

.container {
	width: 85%;
	margin: auto;
}
#tr_title td{
font-size: 12px;
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

.input_btn {
	background-color: #353535;
	color: #EAEAEA;
	padding: auto 30px;
	border-radius: 2px;
	border: none;
}
.input_btn:hover {
	background-color: #8C8C8C;
	color: #EAEAEA;
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
<title>Insert title here</title>
</head>
<script type="text/javascript">
	
<%if (request.getAttribute("DeleteResult") != null) {
	boolean DeleteResult = (boolean) request.getAttribute("DeleteResult");
	if (DeleteResult == true) {%>
	alert("삭제 성공하였습니다.")
<%} else if (DeleteResult == false) {%>
	alert("삭제 실패하였습니다.")
<%}
}%>
	function autoInsert(num, uri) {
		alert(uri);
		location.href = 'subList.do?autoInsert=yes&num=' + num + "&" + uri;
	}
	function deleteConfirm(no) {
		if (confirm(no + "호실을 삭제하시겠습니까?") == true) {
			location.href = 'subDelete.do?no=' + no;
		} else {
			return;
		}
	}
</script>
<body>

	<div class="container">
		<form action="subList.do?uri=main" method="post">
			<table border='1'>
				<tr>
					<td class="head_text" colspan="4">관리자 페이지</td>
				</tr>
				<tr>
					<td colspan="22" height="50px"><input type="text"
						name="search" style="width: 80%; height: 20px; margin: 5px;"
						value="${ search.search}" /> <input class="input_btn"
						type="submit" value="검색" style="width: 70px; height: 30px;" /></td>
				</tr>
				<tr id="tr_title">
					<td>호실</td>
					<td>상가명</td>
					<td>개인 수도세</td>
					<td>공동 수도세</td>
					<td>기본 전기세</td>
					<td>개인 전기세</td>
					<td>공동 전기세</td>
					<td>난방비</td>
					<td>청소비</td>
					<td>엘레베이터 유지비</td>
					<td>에스커레이터 유지비</td>
					<td>유지비</td>
					<td>보험</td>
					<td>인건비</td>
					<td>입주일</td>
					<td>영수증 확인</td>
				</tr>
				<c:forEach var="sub" items="${sub }">
					<tr>
						<td><a href="subRead.do?no=${sub.no }">${sub.no }</a></td>
						<td>${sub.unitName }</td>
						<%-- <td>${sub.size }</td> --%>
						<td>${sub.water_ind }</td>
						<td>${sub.com_water }</td>
						<td>${sub.ele_basic }</td>
						<td>${sub.ele_ind }</td>
						<td>${sub.com_ele }</td>
						<td>${sub.com_heat }</td>
						<td>${sub.com_clean }</td>
						<td>${sub.com_ev }</td>
						<td>${sub.com_es }</td>
						<td>${sub.com_insur }</td>
						<td>${sub.com_labor }</td>
						<td>${sub.com_maintain }</td>
						<td>${sub.coming }</td>
						<%-- <td>${sub.hire }</td>
					<td>${sub.lease }</td> --%>
						<td><input class="submit_btn"  style="width:40px;height:25px; font-size:10px;"type="button" value="확인"
							onclick="location.href = 'receipt.do?no=${sub.no }'" /></td>
					</tr>
				</c:forEach>
				<tr>
					<td id="tr_page_a" colspan="22"><c:if
							test="${paging.total/paging.limit<=5 }">
							<c:forEach var="currentPage" begin="${paging.startPage }"
								end="${paging.total/paging.limit}">
								<a
									href="subList.do?uri=main&currentPage=${ currentPage}&limit=${paging.limit }">[${currentPage }]</a>
							</c:forEach>
						</c:if> <c:if test="${paging.endPage>5 }">
							<a
								href="subList.do?uri=main&startPage=${ paging.startPage-5}&limit=${paging.limit }&currentPage=${ paging.startPage -1}">
								[이전]</a>
						</c:if> <c:if test="${paging.total/paging.limit>5 }">
							<c:forEach var="currentPage" begin="${paging.startPage }"
								end="${ paging.startPage +4 }">
								<a
									href="subList.do?uri=main&currentPage=${ currentPage}&limit=${paging.limit }&startPage=${ paging.startPage}">[${currentPage }]</a>
							</c:forEach>
							<a
								href="subList.do?uri=main&startPage=${ paging.endPage+1}&limit=${paging.limit }&currentPage=${ paging.endPage +1}">[다음]</a>
						</c:if></td>
				</tr>
			</table>
		</form>
		<div id="btn_div">
			<button class="submit_btn" type="button" onclick="location.href='subList.do'" style="width:140px;">수도,	전기세 정보</button>
			<button class="submit_btn" type="button" onclick="location.href='<%=request.getContextPath()%>/unit/list.do'">뒤로가기</button>
		</div>
	</div>
</body>
</html>