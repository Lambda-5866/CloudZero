<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<%
	Connection conn = null;
	request.setCharacterEncoding("utf-8");
	String url = "jdbc:mysql://localhost:3306/web?useSSL=false&allowPublicKeyRetrieval=true";
	String user = "root";
	String password = "1234";
		
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, password);
%>