<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.io.SequenceInputStream" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>my page</title>
<script type="text/javascript">
	function deletePod()
	{
		if(!document.deleteCon.svn.value)
		{	
			alert("서비스를 입력하세요.");
			location.reload();
			return false;
		}
		else
		{
			alert("컨테이너 제거중입니다. My Page에서 확인해주세요.");
		}
	}
	function checkValue()
	{	
		if(!document.chPw.npw.value) {
			alert("기존 비밀번호를 입력하세요.");
			return false;
		}

		if(!document.chPw.cpw.value) {
			alert("변경 비밀번호를 입력하세요.");
			return false;
		}
		if(document.chPw.npw.value == document.chPw.cpw.value) {
			alert("기존 비밀번호와 다르게 변경하세요.")
			return false;
		}
	}
</script>
</head>
<body>
	<%@ include file="./header.jsp" %>
	<%! String msg = "My Page."; %>
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
	
	<div class = "jumbotron">
  		<div class = "container">
  			<h1 class = "display-3"><%= msg %>	<%= snb %></h1>
  		</div>
  	</div>
  	<div class = "container">
  		<div class="card border-light mb-3">
  			<div class="card-header"><h2>내 컨테이너</h2></div>
  			<div class="card-body">
  			<%
				String cmd = "sh /home/yw/shell/search_pod.sh" + " " + snb;

 				int lineCount = 0;
    				String line = "";
				Runtime rt = Runtime.getRuntime();
  				Process ps = null;
  
  				try{
    				ps = rt.exec(cmd);
    
    				BufferedReader br = 
      					new BufferedReader(
        					new InputStreamReader(
          						new SequenceInputStream(ps.getInputStream(), ps.getErrorStream())));
      
    			while((line = br.readLine()) != null){
			%>
			<%= line %><br>
			<%
    			}
    			br.close();
  				}catch(Exception e){
    				e.printStackTrace();
  				}
			%>
			</div>
		</div>
	</div>
	<div class = "container">
		<div class="card border-light mb-3">
  			<div class="card-header"><h2>컨테이너 삭제</h2></div>
  			<div class="card-body">
    			<h5 class="card-title">삭제할 컨테이너 입력</h5>
    			<h5 class="card-title">컨테이너 이름을 정확히 입력해주세요.</h5>
    			<h5 class="card-title">정확히 입력하지 않을 시, 삭제가 되지 않습니다.</h5>
    			<form action="./del.jsp" name="deleteCon" onsubmit="return deletePod()">
    				<p class="card-text"><input type="text" name="svn" class="text-field" placeholder="서비스명">
					<button class="btn btn-secondary rounded-pill px-3" type="submit">삭제</button><br>
				</form>
			</div>
	 	</div>
	</div>
	<div class = "container">
		<div class="card border-light mb-3">
  			<div class="card-header"><h2>패스워드 변경</h2></div>
  			<div class="card-body">
  				<form action="./chpw.jsp" name="chPw" onsubmit="return checkValue()">
    			<h5 class="card-title">기존 패스워드 입력</h5>
    			<p class="card-text"><input type="password" name="npw" class="text-field" placeholder="기존 패스워드">
    			<h5 class="card-title">변경 패스워드 입력</h5>
    			<p class="card-text"><input type="password" name="cpw" class="text-field" placeholder="변경 패스워드">
    			<button class="btn btn-secondary rounded-pill px-3" type="submit">변경</button><br>
				</form>
			</div>
	 	</div>
	</div>
		<%
			String snb6 = (String) session.getAttribute("num");
			if (snb6.equals("1834042")) {
		%>
		<div class = "container">
		<div class="card border-light mb-3">
  			<div class="card-header"><h2>대시보드 토큰</h2></div>
  			<div class="card-body">
				<%
				String cmd2 = "sh /home/yw/shell/token.sh";

				int lineCount2 = 0;
				String line2 = "";
				Runtime rt2 = Runtime.getRuntime();
				Process ps2 = null;

				try{
				ps2 = rt2.exec(cmd2);

				BufferedReader br2 = 
					new BufferedReader(
					new InputStreamReader(
  						new SequenceInputStream(ps2.getInputStream(), ps2.getErrorStream())));

				while((line2= br2.readLine()) != null){
				%>
				<%= line2 %><br>
				<%
				}
				br2.close();
				}catch(Exception e){
					e.printStackTrace();
				}
				%>
			</div>
	 	</div>
		</div>
		<%
		}
		%>
	<%@ include file="./footer.jsp" %>
</body>
</html>