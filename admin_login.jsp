
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by CSS Templates For Free
http://www.csstemplatesforfree.com
Released for free under a Creative Commons Attribution 2.5 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>fog computing</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
</head>

<style type="text/css">
.button {
	background:#25A6E1;
	background:-moz-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#25A6E1),color-stop(100%,#188BC0));
	background:-webkit-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-o-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-ms-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
	padding:4px10px;
	color:#FFFFFF;
	font-family:'Helvetica Neue',sans-serif;
	font-size:15px;
	border-radius:4px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border:1px solid #1A87B9
}
</style>
<style type="text/css">
.a{
background-color:white;
border-color:red;
border-size:1 px;

}

#b:hover{
background-color:#CC9999;
}
</style>

<script type="text/javascript">
function validation1()
{
var a=document.form1.un.value;
var b=document.form1.pw.value;
if(a=="")
{
alert("enter ur user name");
document.form1.un.focus();
return false;
}
if(b=="")
{
alert("enter ur password");
document.form1.pw.focus();
}
}


</script>


<body>
<div id="header">
 <div style="position:absolute; left:40px; top:28px; width: 699px; height: 46px;"> <font color="#ffffff" size="+1"><em>
  Fog  Computing:  Mitigating  Insider  Data  Theft
Attacks in the Cloud</em></font> 
  </div>
	<div id="menu">
		
    <ul>
      <li><a href="index.html" accesskey="1" title="">Home</a></li>
      <li id="menu a"><a href="register.jsp" accesskey="2" title="">signup</a></li>
      <li><a href="admin_login.jsp" accesskey="3" title="">admin</a></li>
      <li><a href="user_login.jsp" accesskey="4" title="">user</a></li>
    
    </ul>
	</div>
	
</div>
<div id="content">

<div style="position:absolute; left:28px; top:117px; width: 687px; height: 316px;"> 
  <table width="717" height="321" align="center" bgcolor="#FFFFFF" >
    <tr> 
	    <td width="204">&nbsp;</td>
        <td width="153" height="309"><img src="images/admin2.jpg" width="152" height="134"/></td>
        <td width="344" align="left"><table width="227" align="center" >
            <form action="admin_check.jsp" method="get" name="form1" onsubmit="return validation1()">
              <tr> 
                <td height="52" colspan="2" align="center"><font color="#3366CC" size="3"><strong><em><font color="#400040">Admin 
                  Login </font></em></strong></font></td>
              </tr>
              <tr> 
                <td width="90" height="39"><font color="#FFFFFF"><em><font color="#663333"><strong><font color="#400040">Username:</font></strong></font></em></font></td>
                <td width="144"><input type="text" name="un" class="a" /></td>
              </tr>
              <tr> 
                <td height="57"><em><font color="#663333"><strong><font color="#400040">Password:</font></strong></font></em></td>
                <td width="144"><input type="password" name="pw" class="a" /></td>
              </tr>
              <tr> 
                <td height="45" colspan="2" align="center"><input type="submit"   name="submit1" class="button" value="Login" /></td>
              </tr>
            </form>
          </table> </td>
    </tr>
  </table>
  </div>
</div>
<div id="footer">
	
  <p>&nbsp;</p>
</div>


</body>
</html>
