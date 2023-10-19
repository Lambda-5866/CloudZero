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
<style>
  table {
    width: 100%;
    border: 5px solid #bcbcbc;
  }
</style>
<script type="text/javascript">
	function createPod()
	{
		var regExp = /[^a-zA-Z0-9]/g;
		if(!document.createCon.svc.value)
		{	
			alert("서비스를 선택하세요.");
			location.reload();
			return false;
		}
		if(!document.createCon.svn.value)
		{
			alert("서비스명을 입력하세요.");
			location.reload();
			return false;
		}
		if (regExp.test(document.createCon.svn.value))
		{
			alert("서비스명은 영문과 숫자로만 입력해주세요.");
			location.reload();
			return false;
		}
		else
		{
			alert("컨테이너 생성 중입니다. 최소 5분 정도 소요됩니다. 생성이 완료되면 My Page 탭에서 확인해주세요.");
		}
	}
</script>
</head>
<body>
	<%@ include file="./header.jsp" %>
	<%! String msg = "Set Your Container."; %>
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
  			<h1 class = "display-3"><%= msg %></h1>
  		</div>
  	</div><br>
  	<div class = "container">
  		<div class="card border-light mb-3">
  			<div class="card-header"><h2>서비스</h2></div>
  			<div class="card-body">
    			<form action="./success.jsp" name="createCon" onsubmit="return createPod()">
        			<table>
            			<tr>
                			<td>
                    			<div class="radio">
                        			<label><input type="radio" name="svc" value="nginx">Nginx</label>
                    			</div>
                    		</td>
                    		<td>
                    			<div class="radio">
	                            	<label><input type="radio" name="svc" value="python">Python</label>
    	                    	</div>
        	        		</td>
        	        		<td>
                    			<div class="radio">
                        			<label><input type="radio" name="svc" value="ruby">Ruby</label>
                    			</div>
                    		</td>
                    		<td>
                    			<div class="radio">
                        			<label><input type="radio" name="svc" value="ubuntu">Ubuntu</label>
         		           		</div>
                			</td>
            	        </tr>
                	    <tr>
                			<td>
                    			<div class="radio">
	                            	<label><input type="radio" name="svc" value="node">Node.js</label>
    	                    	</div>
        	        		</td>
        	        		<td>
                    			<div class="radio">
                        			<label><input type="radio" name="svc" value="kalilinux/kali-rolling">Kali</label>
                    			</div>
                    		</td>
                    		<td>
                    			<div class="radio">
                        			<label><input type="radio" name="svc" value="php">PHP</label>
         		           		</div>
                			</td>
                			<td>
                    			<div class="radio">
	                            	<label><input type="radio" name="svc" value="golang">Go Lang</label>
    	                    	</div>
        	        		</td>
                    	</tr>
                    	<tr>
        	        		<td>
                    			<div class="radio">
                        			<label><input type="radio" name="svc" value="httpd">HTTP</label>
                    			</div>
                    		</td>
                    		<td>
                    			<div class="radio">
	                            	<label><input type="radio" name="svc" value="tomcat">Tomcat</label>
    	                    	</div>
        	        		</td>
        	        		<td>
                    			<div class="radio">
	                            	<label><input type="radio" name="svc" value="debian">Debian</label>
    	                    	</div>
        	        		</td>
                    	</tr>
                	</table>
                	<p class="card-text"><input type="text" name="svn" class="text-field" placeholder="서비스명">
                	<button class="btn btn-secondary rounded-pill px-3" type="submit">전송</button><br>
    			</form>
        	</div>
        </div>
    </div><br>
	<%@ include file="./footer.jsp" %>
</body>
</html>