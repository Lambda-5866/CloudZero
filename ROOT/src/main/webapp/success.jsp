<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script>
<%
session = request.getSession();
Object snb = session.getAttribute("num");
String svc = request.getParameter("svc");
String svn = request.getParameter("svn");

String cmd = "sh /home/yw/shell/make_pod.sh" + " " + svc + " " + snb + " " + svn;
Runtime rt = Runtime.getRuntime();
rt.exec(cmd);
%>
<jsp:forward page="./mypage.jsp"/>;
</script>
</head>
<body>
</body>
</html>