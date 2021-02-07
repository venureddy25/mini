<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.zip.*"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String u="0";
String a1="0";
	java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;
 String un=(String)session.getAttribute("un");
String fn1=(String)session.getAttribute("fn1");
 String fid1=(String)session.getAttribute("f");

//String size3="1.7";

//String mno=(String)session.getAttribute("mobilenum1");








String status="ondatabase";


String saveFile="";
//String contentType1=request.getAttribute("file");
String contentType = request.getContentType();




if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
%>
<%

/*

Connection connection = null;
String connectionURL = "jdbc:mysql://localhost:3306/foxcomputing";
ResultSet rs = null;
PreparedStatement ps = null;

try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root", "admin");
File f = new File(saveFile);
ps = connection.prepareStatement("INSERT INTO fileupload(?,?,?,?,?,?,?,?)");

ps.setString(1,un);
                ps.setString(2,app);
                ps.setString(3,id1);
fis = new FileInputStream(f);
         ps.setBinaryStream(4, (InputStream)fis, (int)(f.length()));
            ps.setString(5,size3);
ps.setString(6,strDateNew);
ps.setString(7,u);
ps.setString(8,a1);


int s = ps.executeUpdate();
 response.sendRedirect("user_upload.jsp");
if(s>0){
System.out.println("Uploaded successfully !");
}
else{
System.out.println("Error!");
}
}
catch(Exception e){e.printStackTrace();
}
}
*/
FileInputStream fis;
try{



		
		
					



	Class.forName("com.mysql.jdbc.Driver");	
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foxcomputing","root","root"); 

			PreparedStatement ps=con.prepareStatement("insert into fileupload(uname,fname,fid,file,size,date,au,uau) values(?,?,?,?,?,?,?,?)");
		//File f = new File(saveFile);
				ps.setString(1,un);
                ps.setString(2,fn1);
                ps.setString(3,fid1);
fis = new FileInputStream(ff);

		 double size=ff.length();
		  double  size1=size/1024;
		  double size2=Math.round(size1*100.0)/100.0;
		  String size3=Double.toString(size2);
		  session.setAttribute("filesize",size3);
         ps.setBinaryStream(4, (InputStream)fis, (int)(ff.length()));
            ps.setString(5,size3);
ps.setString(6,strDateNew);
ps.setString(7,u);
ps.setString(8,a1);
int x=ps.executeUpdate();
			
		
			response.sendRedirect("user_upload.jsp");
				
		} 
		
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}

	}
	
				
	
						
%>
</body>
</html>