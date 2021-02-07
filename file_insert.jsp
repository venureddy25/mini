<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException,java.util.Calendar"%>

<%@ page import="java.sql.*,java.io.*"  %>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
     <%
		  java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "yyyy-MM-dd";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
	 String un=(String)session.getAttribute("un");

     String ds = sdf1.format(now);
	  String fn=request.getParameter("fn");
	   String fid=request.getParameter("fid");
	    String file1=request.getParameter("file1");
	   String f="D:\\apache-tomcat-6.0.18\\webapps\\111\\file\\";
String f1=f+file1;
File ff= new File(f1);
		 double size=ff.length();
		  double  size1=size/1024;
		  double size2=Math.round(size1*100.0)/100.0;
		  String size3=Double.toString(size2);
		  session.setAttribute("filesize",size3);
	
		  
String u="0";
String a="0";
		   FileInputStream fis;
			try
{

Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foxcomputing","root","root");
PreparedStatement ps=con.prepareStatement("insert into fileupload(uname,fname,fid,file,size,date,au,uau) values (?,?,?,?,?,?,?,?)");
fis=new FileInputStream(ff);
ps.setString(1,un);
ps.setString(2,fn);
ps.setString(3,fid);

ps.setBinaryStream(4, (InputStream)fis, (int)(ff.length()));
ps.setString(5,size3);
ps.setString(6,ds);
ps.setString(7,u);
ps.setString(8,a);
ps.executeUpdate();
response.sendRedirect("user_upload.jsp");
}
catch(Exception e)
{
out.println(e.getMessage());
}

%>




</body>
</html>
