<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%
	String pagefile=request.getParameter("page");
	if(pagefile == null) {pagefile = "newitem";}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="src/css/style.css">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="src/html/nav.html"/>
	
	<h1>Hello</h1>
</body>
</html>