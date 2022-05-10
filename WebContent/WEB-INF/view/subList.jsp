<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sub 리스트</title>
<style type="text/css">
.Containner_Main {
	display: flex;
	justify-content: center;
	text-align: center;
	align-items: center;
}

a {
	text-decoration: none;
}

.header {
	position: absolute;
	top: 50px;
	left: 50px;
	margin: 30px;
}

input {
	width: 100%;
}
</style>
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
<body class="Containner_Main">
	<div class="header">
		<a href="subRead.do">[ 추가하기 ] </a> <br /><br /> <a href="<%=request.getContextPath()%>/subList.do?uri=main">[ 뒤로가기 ] </a>
	</div>
	<form action="subList.do" method="post">
		<table border='1' width="700">
			<%-- <tr>
				<td colspan="7" height="50px">
					<c:set var="uriSetting" value="currentPage=${paging.currentPage}&startPage=${paging.startPage}&limit=${paging.limit }" />
					<input type="button" value="등록" onclick="location.href = 'subRead.do'" />
					<a href="<%=request.getContextPath()%>/index.jsp">[ 목록으로 ]</a> <a href="javascript:void(0)" onclick="autoInsert(5, '${uriSetting }')">[ 자동
						추가5 ]</a> <a href="javascript:void(0)" onclick="autoInsert(10, '${uriSetting }')">[ 자동 추가10 ]</a> <a href="javascript:void(0)"
						onclick="autoInsert(15, '${uriSetting }')">[ 자동 추가15 ]</a>
				</td>
			</tr> --%>
			<%-- <tr>
				<td colspan="7" height="50px">
					<c:set var="limitSetting" value="currentPage=${paging.currentPage}&startPage=${paging.startPage}" />
					<input type="hidden" name="limit" value="${paging.limit }" />
					${limitSetting }
					<input type="button" value="limit(5)" onclick="location.href = 'subList.do?limit=5&${limitSetting}'" />
					<input type="button" value="limit(10)" onclick="location.href = 'subList.do?limit=10&${limitSetting}'" />
					<input type="button" value="limit(15)" onclick="location.href = 'subList.do?limit=15&${limitSetting}'" />
					<input type="button" value="limit(20)" onclick="location.href = 'subList.do?limit=20&${limitSetting}'" />
				</td>
			</tr> --%>
			<tr>
				<td colspan="7" height="50px">
					<h1>수도세, 전기세 관리</h1>
				</td>
			</tr>
			<tr>
				<td colspan="7" height="50px">
					<input type="text" name="search" style="width: 80%; height: 20px; margin: 5px;" value="${ search.search}" />
					<input type="submit" value="검색" width="10px" height="10px" style="width: 70px; height: 30px;" />
				</td>
			</tr>
			<tr>
				<td>호수</td>
				<td>수도세</td>
				<td>전기 기본세</td>
				<td>전기 개인세</td>
				<td>수정</td>
				<td>삭제</td>
			</tr>
			<c:forEach var="sub" items="${sub }">
				<tr>
					<td>
						<a href="subRead.do?no=${sub.no }">${sub.no }</a>
					</td>
					<td>
						<c:out value="${sub.water_ind }" />
					</td>
					<td>${sub.ele_basic }</td>
					<td>${sub.ele_ind }</td>
					<td>
						<input type="button" value="수정" onclick="location.href = 'subModify.do?no=${sub.no }'" />
					</td>
					<td>
						<input type="button" value="삭제" onclick="deleteConfirm('${sub.no}')" />
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="22">
					<c:if test="${articlePage.startPage>5 }">
						<a href="subList.do?pageNo=${articlePage.startPage -5 }"> [이전]</a>
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