<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>상가정보</title>
<script type="text/javascript">
	function button_event(no) {

		if (confirm("정말 삭제하시겠습니까??") == true) { //확인

			location.href = "delete.do?no=" + no;

		} else { //취소

			return;

		}

	}
</script>
</head>
<body>

	<table border="1" width="100%">
		<tr>
			<td>호실</td>
			<td>${unit.no}호</td>
		</tr>
		<tr>
			<td>관리인</td>
			<td>${unit.name}</td>
		</tr>
		<tr>
			<td>임차인</td>
			<td>${unit.hire}</td>
		</tr>
		<tr>
			<td>임대인</td>
			<td>${unit.lease}</td>
		</tr>
		<tr>
			<td>임대료</td>
			<td>${rent_fee}원</td>
		</tr>
		<tr>
			<td>사용기간</td>
			<td>${unit.period}일</td>
		</tr>
		<tr>
			<td>면적</td>
			<td>${unit.size}㎡</td>
		</tr>
		<tr>
			<td>입주일</td>
			<td>${unit.coming}</td>
		</tr>
		<tr>
			<td>계약만료</td>
			<td>${unit.leaving}</td>
		</tr>

		<tr>
			<td colspan="2"><c:set var="pageNo"
					value="${empty param.pageNp ? '1' : param.pageNo }" /> <a
				href="list.do?pageNo=${pageNo}">[목록]</a> <a
				href="modify.do?no=${unit.no }">[상가정보수정]</a> <a
				href="javascript:void(0);" onclick="button_event('${unit.no}');">[삭제하기]</a>
			</td>
		</tr>

	</table>
</body>
</html>