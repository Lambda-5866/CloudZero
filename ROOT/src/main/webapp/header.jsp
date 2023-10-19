<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<nav class = "navbar navbar-expand navbar-dark bg-dark">
		<div class = "container">
			<div class = "navbar-header">
				<a class = "navbar-brand" href="./main.jsp">Home</a>
			</div>
			<div class = "navbar-header">
				<a class = "navbar-brand" href="./create.jsp">Create Container</a>
			</div>
			<div class = "navbar-header">
				<a class = "navbar-brand" href="./mypage.jsp">My Page</a>
			</div>
			<div class = "navbar-header">
				<a class = "navbar-brand" target='_blank' href="http://moonriver.tplinkdns.com:8989">Jenkins</a>
			</div>
				<%
				String snb4 = (String) session.getAttribute("num");
				if (snb4.equals("1834042")) {
				%>
			<div class = "navbar-header">
				<a class = "navbar-brand" target='_blank' href="https://moonriver.tplinkdns.com:30571">Dashboard</a>
			</div>
			<div class = "navbar-header">
				<a class = "navbar-brand" target='_blank' href="http://moonriver.tplinkdns.com/zabbix">Zabbix</a>
			</div>
				<%
				}
				%>
			<div class = "navbar-header">
				<a class = "navbar-brand" href="./logout.jsp">Logout</a>
			</div>
		</div>
	</nav>
</body>
</html>