<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" 
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script type="text/javascript">
		function checkValue()
		{	
			if(!document.userInfo.snb.value) {
				alert("학번을 입력하세요.");
				return false;
			}

			if(!document.userInfo.passwd.value) {
				alert("비밀번호를 입력하세요.");
				return false;
			}
			if(document.userInfo.passwd.value != document.userInfo.passwd2.value) {
				alert("비밀번호 확인을 동일하게 입력하세요.")
				return false;
			}
			if(isNaN(document.userInfo.snb.value)) {
				alert("학번은 숫자로 입력해주세요.");
				return false;
			}
		}
	</script>
	<title>Register</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<%! String register = "Register"; %>
	<div class = "jumbotron">
  		<div class = "container">
  			<h1 class = "display-3"><%= register %></h1>
  		</div>
  	</div>
  	<div class = "container">
  		<div class = "text-left">
  			<form action="./join.jsp" name="userInfo" onsubmit="return checkValue()">
      		<input type="text" name="snb" class="text-field" maxlength="7" minlength="7" placeholder="학번"><br>
      		<input type="password" name="passwd" class="text-field" placeholder="패스워드"><br>
      		<input type="password" name="passwd2" class="text-field" placeholder="패스워드 확인"><br>
      		<button class="btn btn-secondary rounded-pill px-3" type="submit">Sign Up</button><br>
    		</form>
    	</div>
	</div>
  	<%@ include file="./footer.jsp" %>
</body>
</html>