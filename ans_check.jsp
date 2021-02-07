<%@ page  import="java.sql.*"  %>
<%

String name=(String)session.getAttribute("un");
String ans=(String)session.getAttribute("ans");

try
{

Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foxcomputing","root","root");
PreparedStatement ps=con.prepareStatement("select * from  signup where name='"+name+"' && answer='"+ans+"'");
ResultSet rs=ps.executeQuery();
if(rs.next())
{

response.sendRedirect("file1_download.jsp");

}
else
{

response.sendRedirect("file_download.jsp");

}
}

catch(Exception e)
{
out.println(e.getMessage());
}

%>
