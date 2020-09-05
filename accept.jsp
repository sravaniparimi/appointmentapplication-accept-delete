<%@page import="java.sql.*"%>
<%
Connection con = null;
PreparedStatement ps = null;
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/jnit";
String user = "root";
String pass = "1234567890";
con = DriverManager.getConnection(url, user, pass);
int id=Integer.parseInt(request.getParameter("id"));
String name=(String)session.getAttribute("name");
ps=con.prepareStatement("update appointment set status='Accepted',dname=? where aid=?");
ps.setInt(2,id);
ps.setString(1,name);
int x=ps.executeUpdate();
if(x!=0)
	response.sendRedirect("./appointmentdetails.jsp?msg=success");
%>
