<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	
</script>
<style type="text/css">
body {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 700px;
}

body * {
	
}

.Containner_Main {
	width: 700px;
	height: 700px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.Containner_Main_Inner {
	width: 90%;
	height: 90%;
	border: 5px;
}

.Containner_Main_Inner>.a {
	justify-content: center;
	align-items: center;
	text-align: center;
	width: 100%;
}

.Containner_Main_Inner section {
	height: 20%;
}

.Containner_Main_Inner article {
	height: 60%;
}

.Containner_Main_Inner footer {
	height: 20%;
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="Containner_Main">
		<div class="Containner_Main_Inner">
			<section class="a">a</section>
			<article class="a">
				<table>
					<tr>
						<%
						int column = 10;
						for (int i = 0; i < column; i++) {
						%>

						<th><%=i%></th>

						<%
						}
						%>
					</tr>
					<%
					for (int i = 0; i < column; i++) {
					%>
					<tr>
						<%
						int row = 10;
						for (int j = 0; j < row; j++) {
						%>
						<td>
							row<%=j%>
						</td>
						<%
						}
						%>
					</tr>
					<%
					}
					%>
					<!-- <table>
						<tr>
							<th></th>
							<th></th>
						</tr>
						<tr>
							<td></td>
							<td></td>
						</tr>
					</table> -->
				</table>
			</article>
			<footer class="a">c</footer>
		</div>
	</div>
</body>
</html>