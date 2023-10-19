<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class = "container">
	<div class="card border-light mb-3">
  		<div class="card-header"><h2 >서비스 사용방법 안내서</h2></div>
  		<div class="card-body">
    		<h4 class="card-title">컨테이너 생성</h4>
    		<p class="card-text">1. Create Container 탭에 접속합니다.</p>
    		<p class="card-text">2. Service 항목에서 생성할 서비스를 선택한 뒤, 서비스 명을 입력합니다.</p>
    		<p class="card-text">### 주의!!! : 기존에 생성한 서비스명과 같은 이름으로 생성할 시, 기존 서비스는 삭제됩니다. 주의하세요.</p>
    		<p class="card-text">3. 전송 버튼을 눌러 생성합니다.</p>
    		<p class="card-text">4. 잠시 후, 생성된 서비스의 Domain 주소, Port 번호를 My Page에서 확인합니다.</p><br>
  		</div>
  		<div class="card-body">
    		<h4 class="card-title">컨테이너 삭제</h4>
    		<p class="card-text">1. My Page 탭에 접속합니다.</p>
    		<p class="card-text">2. 생성된 컨테이너의 이름을 확인합니다.</p>
    		<p class="card-text">3. 삭제 부분에 서비스 이름을 입력한 뒤, 삭제 버튼을 누릅니다.</p>
    		<p class="card-text">4. 다시 My Page 탭에서 삭제 완료를 확인합니다.</p><br>
  		</div>
  	</div>
  	<div class="card border-light mb-3">
  		<div class="card-header"><h2 >PuTTY</h2></div>
  		<div class="card-body">
    		<h4 class="card-title">PuTTY 클라이언트 설치</h4>
    		<p class="card-text">1. PuTTY 사이트에 접속합니다.</p>
    		<p>### PuTTY 사이트 주소 > <a href="https://www.putty.org/" target="_blank">PuTTY</a></p>
    		<p class="card-text">2. 첫번째에 위치한 Download PuTTY 버튼을 눌러 다운로드 페이지로 접속합니다.</p>
    		<p class="card-text">3. 각 OS에 맞는 버전을 다운로드 받습니다.</p>
    		<p class="card-text">4. 설치가 끝난 뒤, 실행합니다.</p><br>
    	</div>
    	<div class="card-body">
    		<h4 class="card-title">PuTTY를 이용한 컨테이너 접속 방법</h4>
    		<p class="card-text">1. My Page 탭에서 Domain 주소와 생성된 서비스의 Port 번호를 확인합니다.</p>
    		<p class="card-text">2. Host Name에 Domain 주소를 입력하고, 할당 받은 Port 번호를 Port에 입력합니다.</p>
    		<p class="card-text">3. Open 버튼을 눌러 접속한 뒤, 컨테이너 생성 시 출력된 ROOT 계정으로 접속합니다.</p><br>
  		</div>
	</div>
	<div class="card border-light mb-3">
  		<div class="card-header"><h2 >계정</h2></div>
  		<div class="card-body">
    		<h4 class="card-title">패스워드 찾기</h4>
    		<p class="card-text">### 패스워드의 경우, 초기화를 원칙으로 하고 있습니다.</p>
    		<p class="card-text">### 아래에 있는 관리자의 이메일로 패스워드 초기화를 위한 메일을 수신 바랍니다.</p>
    		<p class="card-text">### dyddns1560@naver.com</p>
    		<p class="card-text">### 반드시 초기화 패스워드를 이용하여 로그인 후, 패스워드 변경을 하시기 바랍니다.</p>
    	</div>
	</div>
</div>
</body>
</html>