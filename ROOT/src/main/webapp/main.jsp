<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>main</title>
<style>
	hr {
		height: 100px;
		background-color: grey;
	}
</style>
</head>
<body>
	<%@ include file="./header.jsp" %>
	<div class = "jumbotron">
  		<div class = "container">
  			<h1 class = "display-3">Home</h1>
  		</div>
  	</div>
  	<hr>
  	<div class = "container">
  		<h1 class = "display-3">Notice</h1>
  	</div>
  	<hr>
  	<br>
  	<%@ include file="./notice.jsp" %>
	<%	session = request.getSession();
		Object snb = session.getAttribute("num");
		if (snb == null) {
%>					
			<script>
			alert("세션이 만료되었습니다. 다시 로그인하세요.");
			location.href="./index.jsp"
			</script>
<%	
		}
	%>
	<%@ include file="./footer.jsp" %>
</body>
</html>