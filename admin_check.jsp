<%@ page  import="java.sql.*"  %>
<%
String un=request.getParameter("un");
String pw=request.getParameter("pw");
session.setAttribute("un",un);
session.setAttribute("pw",pw);


try
{

Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foxcomputing","root","root");
PreparedStatement ps=con.prepareStatement("select * from  admin where name='"+un+"' && pass='"+pw+"'");
ResultSet rs=ps.executeQuery();
if(rs.next())
{
response.sendRedirect("user_details.jsp");
}
else
{
out.println("enter correct user name and password");
}
}
catch(Exception e)
{
out.println(e.getMessage());
}

%>