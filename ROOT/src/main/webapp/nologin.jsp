<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<%@ include file="conn.jsp" %>

<%
			String snb = request.getParameter("snb");
			String pw = request.getParameter("pw");
			
    		try 
    		{
    			request.setCharacterEncoding("utf-8");
      		
      			String sql = "SELECT * FROM member where SNB = ?";
      		
      			PreparedStatement pstmt = conn.prepareStatement(sql);
      			
      			pstmt.setString(1, snb);
      			
      			ResultSet rs = pstmt.executeQuery();
      			
      			if (rs.next())
      			{      			
      				String sn = rs.getString(1);
      				String pwd = rs.getString(2);
      				if(sn.equals(snb))
      				{
      					if(pwd.equals(pw))
      					{
      						session.setAttribute("num", snb);
      						response.sendRedirect("main.jsp");
      					}
      					else
      					{
%>
      						<script>
							alert("로그인 실패.");
							history.go(-1);
							</script>
<%
      					}
      				}
      				else
      				{
%>
      					<script>
						alert("로그인 실패.");
						history.go(-1);
						</script>
<%
      				}
      			}
      			else
      			{
%>
  					<script>
					alert("회원정보가 없습니다.");
					history.go(-1);
					</script>
<%      				
      			}
      			rs.close();
				pstmt.close();
				conn.close();
    		}
    		catch (SQLException ex) 
    		{
%>
				<script>
				alert("로그인 실패.");
				history.go(-1);
				</script>
<%
    		}
%>