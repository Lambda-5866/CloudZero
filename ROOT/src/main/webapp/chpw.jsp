<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<%@ include file="conn.jsp" %>

<%
	request.setCharacterEncoding("utf-8");
	session = request.getSession();
	Object snb = session.getAttribute("num");
	String npw = request.getParameter("npw");
	String cpw = request.getParameter("cpw");
	
	try {
		String sql = "select PASSWD from member where SNB = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setObject(1, snb);
		
		ResultSet rs = pstmt.executeQuery();
		while (rs.next())
		{
			String rsr = rs.getString(1);
			if (rsr.equals(npw))
			{
				try {
					String sql2 = "update member set PASSWD = ? where SNB = ?";
					PreparedStatement pstmt2 = conn.prepareStatement(sql2);
					pstmt2.setString(1, cpw);
					pstmt2.setObject(2, snb);
					pstmt2.executeUpdate();
%>					
					<script>
					alert("비밀번호 변경 성공. 다시 로그인하세요.");
					location.href="./1.jsp"
					</script>
<%	
					pstmt2.close();
					return;

				} catch (SQLException ex) {
%>
					<script>
					alert("비밀번호 변경 실패.");
					history.go(-1);
					return;
					</script>
<%
				}
				
			} else {
%>
				<script>
				alert("기존 비밀번호를 확인하세요.");
				history.go(-1);
				</script>
<%
				return;
			}
		}
		pstmt.close();
		conn.close();
	} catch (SQLException ex) {
%>
		<script>
		alert("비밀번호 변경 실패.");
		history.go(-1);
		return;
		</script>
<%
	}
%>
