
<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>Chennai Sunday</title>
<script language="JavaScript">

</script>
</head>

<body>		
<%

	String fname = (String)session.getAttribute("fname");
         try{
		 
			byte[] ba= (byte[])session.getAttribute("resumeBlob");

		if(ba != null)
		{
	
			String filename=null;
			filename+=".doc";
			//byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("application/");
			response.setHeader("Content-Disposition","attachment; filename=\""+fname+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
		
			session.removeAttribute("budget");
					
			}
	
			}
			catch(Exception e)
			{
			out.println("Exception :"+e);
			}
		

		
%>

</body>
</html>