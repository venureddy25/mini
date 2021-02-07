<%
String fn=request.getParameter("fn");

String fid=request.getParameter("fid");

session.setAttribute("fn",fn);
session.setAttribute("fid",fid);
 response.sendRedirect("careerinsert7.jsp");

%>
