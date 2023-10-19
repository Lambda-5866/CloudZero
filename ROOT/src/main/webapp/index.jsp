<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="conn.jsp"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type="text/javascript">
	function showPopup() {
		window.open("./register.jsp", "Searching",
				"width=700, height=500, left=100, top=50");
	}

	function login() {
		if (!document.lg.snb.value)
		{
			alert("학번을 입력하세요.");
			return false;
		}

		if(!document.lg.pw.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}
	}
</script>
<title>Home</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<%!String welcome = "Welcome to Cloud Zero Web Site!!";%>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><%= welcome %></h1>
		</div>
	</div>
	<div class="container">
		<div class="text-left">
			<form action="./nologin.jsp" name="lg" onsubmit="return login()">
			<input type="text" name="snb" class="text-field" placeholder="학번"><br>
			<input type="password" name="pw" class="text-field" placeholder="패스워드"><br>
			<button class="btn btn-secondary rounded-pill px-3" type="submit" onclick="return login()">로그인</button><br>
			</form>
			<button class="btn btn-secondary rounded-pill px-3" type="submit" onclick="showPopup()">회원가입</button><br>
		</div>
	</div><br>
	<%@ include file="./footer.jsp"%>
</body>
</html>