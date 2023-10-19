<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<%@ include file="conn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String snb = request.getParameter("snb");
	String passwd = request.getParameter("passwd");

	PreparedStatement pstmt = null;
	
	try {
		String sql = "insert into member(snb, passwd) values(?,?);";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, snb);
		pstmt.setString(2, passwd);
		pstmt.executeUpdate();
%>					
		<script>
		alert("회원가입 성공.");
		window.close();
		</script>
<%
	} catch (SQLException ex) {
%>					
		<script>
		alert("회원가입 실패.");
		window.close();
		</script>
<%
	}
	finally {
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
%>