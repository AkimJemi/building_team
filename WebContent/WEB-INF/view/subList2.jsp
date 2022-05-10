<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sub 리스트</title>
<style type="text/css">
body {
	display: flex;
	justify-content: center;
	text-align: center;
	align-items: center;
	height: 1000px;
}

form {
	height: 100%;
	display: inline-block;
}

.attribute td {
	padding: 3px;
	font-size: 10px;
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
	<form action="subList.do" method="post">
		<table border='1'>
			<tr>
				<td colspan="20" height="50px">
					<c:set var="uriSetting" value="currentPage=${paging.currentPage}&startPage=${paging.startPage}&limit=${paging.limit }" />
					<input type="button" value="등록" onclick="location.href = 'subRead.do'" />
					<a href="<%=request.getContextPath()%>/index.jsp">[ 목록으로 ]</a> <a href="javascript:void(0)" onclick="autoInsert(5, '${uriSetting }')">[ 자동
						추가5 ]</a> <a href="javascript:void(0)" onclick="autoInsert(10, '${uriSetting }')">[ 자동 추가10 ]</a> <a href="javascript:void(0)"
						onclick="autoInsert(15, '${uriSetting }')">[ 자동 추가15 ]</a>
				</td>
			</tr>
			<tr>
				<td colspan="20" height="50px">
					<c:set var="limitSetting" value="currentPage=${paging.currentPage}&startPage=${paging.startPage}" />
					<input type="hidden" name="limit" value="${paging.limit }" />
					${limitSetting }
					<input type="button" value="limit(5)" onclick="location.href = 'subList.do?limit=5&${limitSetting}'" />
					<input type="button" value="limit(10)" onclick="location.href = 'subList.do?limit=10&${limitSetting}'" />
					<input type="button" value="limit(15)" onclick="location.href = 'subList.do?limit=15&${limitSetting}'" />
					<input type="button" value="limit(20)" onclick="location.href = 'subList.do?limit=20&${limitSetting}'" />
				</td>
			</tr>
			<tr>
				<td colspan="20" height="50px">[ total : ${paging.total } , startPage : ${paging.startPage } , currentPage : ${paging.currentPage } , limit :
					${paging.limit } , endPage : ${ paging.endPage}] [ ${ search.search} ]</td>
			</tr>
			<tr>
				<td colspan="20" height="50px">
					<input type="text" name="search" style="width: 80%; height: 20px; margin: 5px;" value="${ search.search}" />
					<input type="submit" value="검색" style="width: 70px; height: 30px;" />
				</td>
			</tr>
			<tr class="attribute">
				<td>호실</td>
				<td>상가명</td>
				<td>면적</td>
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
				<td>임차인</td>
				<td>임대인</td>
				<td>영수증 확인</td>
			</tr>
						<!-- int no, int water_ind, int ele_basic, int ele_ind, String name,
			String hire, String lease, int rent_fee, String period, int size,
			Date coming, Date leaving, String memberid, String unitName,
			int total_size, int com_heat, int com_clean, int com_ev, int com_es,
			int com_maintain, int com_insur, int com_labor, int com_water,
			int com_ele -->
			<c:forEach var="sub" items="${sub }">
				<tr>
					<td>
						<a href="subRead.do?no=${sub.no }">${sub.no }</a>
					</td>
					<td>${sub.unitName }</td>
					<td>${sub.size }</td>
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
					<td>${sub.hire }</td>
					<td>${sub.lease }</td>
					<td>
						<input type="button" value="확인" onclick="location.href = 'receipt.do?no=${sub.no }'" />
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="20">
					<c:if test="${articlePage.startPage>5 }">
						<a href="list.do?pageNo=${articlePage.startPage -5 }"> [이전]</a>
					</c:if>
					<c:if test="${paging.total/paging.limit<=5 }">
						<c:forEach var="currentPage" begin="${paging.startPage }" end="${paging.total/paging.limit}">
							<a href="subList.do?currentPage=${ currentPage}&limit=${paging.limit }">[${currentPage }]</a>
						</c:forEach>
					</c:if>
					<c:if test="${paging.endPage>5 }">
						<a href="subList.do?startPage=${ paging.startPage-5}&limit=${paging.limit }&currentPage=${ paging.startPage -1}"> [이전]</a>
					</c:if>
					<c:if test="${paging.total/paging.limit>5 }">
						<c:forEach var="currentPage" begin="${paging.startPage }" end="${ paging.startPage +4 }">
							<a href="subList.do?currentPage=${ currentPage}&limit=${paging.limit }&startPage=${ paging.startPage}">[${currentPage }]</a>
						</c:forEach>
						<a href="subList.do?startPage=${ paging.endPage+1}&limit=${paging.limit }&currentPage=${ paging.endPage +1}">[다음]</a>
					</c:if>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>