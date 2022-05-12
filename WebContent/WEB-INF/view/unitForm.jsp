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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600&display=swap"
   rel="stylesheet">

<meta charset="UTF-8">
<title>상가정보 입력폼</title>
<style>
body {
   font-family: 'Open Sans', sans-serif;
}

input {
   border: solid 1px #D5D5D5;
   border-radius: 2px;
   height: 20px;
   float: right;
   margin: 0 5px
}
.red_text {
   color: #DF4D4D;
}
input:focus {
   background-color: #E8F0FE;
   outline: none;
}

.container {
   width: 50%;
   margin: auto;
}

#main_div {
   border-bottom: solid 2px gray;
   margin-bottom: 20px;
   margin-top: 50px;
}

#main_text {
   font-weight: bold;
   font-size: 25px;
}

.text_div {
   margin: 10px;
   padding: 5px;
   border-bottom: solid 1px #EAEAEA;
}

.text_id {
   display: inline-block;
   width: 200px;
   font-weight: 400;
   font-size: 14px;
   color: #8C8C8C;
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
.hidden{
display: none;
}
</style>

</head>
<body>
   <div class="container">
      <div id=main_div>
         <span id="main_text">商店情報入力</span><span class="red_text">*下の必須入力事項をすべて入力してください。</span>
      </div>
      <form method="post" action="write.do">
         <div class="text_div">
            <span class="red_text">*</span><span class="text_id">号室</span> <span> <input type="text"
               name="no" value="${subReq.no }" <%=a%> required/></span>
            <c:if test="${errors.no }">号室を入力してください。</c:if>
         </div>

         <div class="text_div">
            <span class="red_text">*</span><span class="text_id">管理人　名前</span> <span> <input type="text"
               name="name" value="${subReq.no }" <%=a%> required/></span>
            <c:if test="${errors.no }">号室を入力してください。</c:if>
         </div>

         <div class="text_div">
            <span class="red_text">*</span><span class="text_id">賃借人</span> <span> <input type="text"
               name="hire" value="${subReq.no }" <%=a%> required/></span>
            <c:if test="${errors.no }">号室を入力してください。</c:if>
         </div>

         <div class="text_div">
            <span class="red_text">*</span><span class="text_id">賃貸人</span> <span> <input type="text"
               name="lease" value="${subReq.no }" <%=a%> required/></span>
            <c:if test="${errors.no }">号室を入力してください。</c:if>
         </div>

         <div class="text_div">
            <span class="red_text">*</span><span class="text_id">貸し賃</span> <span> <input type="text"
               name="rent_fee" value="${subReq.no }" <%=a%> /></span>
            <c:if test="${errors.no }">号室を入力してください。</c:if>
         </div>

         <div class="text_div">
            <span class="red_text">*</span><span class="text_id">利用期間</span> <span> <input type="text"
               name="period" value="${subReq.no }" <%=a%> required/></span>
            <c:if test="${errors.no }">号室を入力してください。</c:if>
         </div>

         <div class="text_div">
            <span class="red_text">*</span><span class="text_id">面積</span> <span> <input type="text"
               name="size" value="${subReq.no }" <%=a%> required /></span>
            <c:if test="${errors.no }">号室を入力してください。</c:if>
         </div>

         <div class="text_div">
            <span class="red_text">*</span><span class="text_id">入居日</span> <span> <input type="date"
               name="coming" value="${subReq.no }" <%=a%> /></span>
            <c:if test="${errors.no }">号室を入力してください。</c:if>
         </div>


         <div class="hidden">
            <span class="red_text">*</span><span class="text_id">契約期間</span> <span> <input type="date"
               name="leaving" value="2000-01-01" <%=a%>/></span>
            <c:if test="${errors.no }">号室を入力してください。</c:if>
         </div>

         <div id="btn_div">
            <input class="submit_btn" type="button"   onclick="location.href='<%=request.getContextPath()%>/unit/list.do'"value="戻る"/>
            <input type="hidden"
               value="${ ctxPath = pageContext.request.contextPath }" /> <input
               class="submit_btn" type="submit" value="登録" />
         </div>
      </form>
   </div>
</body>
</html>