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
ps=con.prepareStatement("delete from appointment where aid=?");
ps.setInt(1,id);
int x=ps.executeUpdate();
if(x!=0)
	response.sendRedirect("./appointment_status.jsp?msg=success");
%>
