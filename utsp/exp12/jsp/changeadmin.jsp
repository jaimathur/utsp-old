<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>

<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>SIPLabs - IIT Bombay</title>
</head>

<% 

//----------------------------------------------------for session check----------------------//
String session_user="";

Cookie cookies[]=request.getCookies();
if(cookies!=null)
{
		
	for(int i=0;i<cookies.length;i++)
	{
			//out.println(cookies[i].getName()+"");
		if(cookies[i].getName().equals("username"))
		{
					
			session_user=cookies[i].getValue();
			break;
		}
	}
}
//-------------------------------------------------------------------------------------------//


String msg="";
//Cookie cookies[]=request.getCookies();
String name="";
//String submitone="";
//String passwd="";
//out.println("krishna");
	if(request.getParameter("T1")==null)
	{//submitone="kk";
	}
	else
	{
		int flag=0;
		
		if(flag==0)
		{
			name=request.getParameter("T1");
			String passwd=request.getParameter("T2");
			String oldpasswd=request.getParameter("T3");
		//out.println("krishna");
//*--------------------------------------------------------------------------------------------------------------*		

			try {
				String connectionURL = "jdbc:mysql://localhost:3306/krishna"; 
				Connection connection = null; 

				Class.forName("com.mysql.jdbc.Driver").newInstance(); 
				connection = DriverManager.getConnection(connectionURL, "root", "kktiwari");

				if(!connection.isClosed())
				{}
					//out.println("Successfully connected to " + "MySQL server using TCP/IP...");


				Statement stmt=null;
				stmt=connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
				ResultSet rs=stmt.executeQuery("select * from user where userid='" + session_user + "' and password='" + oldpasswd + "'");
				if(rs.first())
				{
					//rs.close();
					int a=stmt.executeUpdate("update user set userid='" + name + "', password='" + passwd + "' where userid='" + session_user + "'");
					msg="Administrator changed successfully. Please sign out.";
					
					
					
				
				
					//out.println("User already exists.....Choose another name");
				}	
				else
				{
					msg="Invalid Old Password";
					//session.setAttribute("username",name);
					//response.sendRedirect(response.encodeRedirectURL("simu.html"));
					//out.println("User Registered");
				}
		


				rs.close();
				connection.close();   
			}
			catch(Exception ex){
				out.println(ex.toString());
			}
		}
}
%>
<body topmargin="0" leftmargin="0">
<%=msg%>
 
<table id="table2" border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" cellpadding="0" bgcolor="#FFFFFF">
  <tr>
    <td width="15" height="15">
    <img border="0" src="images/cornertl.jpg" width="100%" height="100%"></td>
    <td height="15">
    <img border="0" src="images/sidet.jpg" width="100%" height="100%"></td>
    <td width="15" height="15">
    <img border="0" src="images/cornertr.jpg" width="100%" height="100%"></td>
  </tr>
  <tr>
    <td width="15">
    <img border="0" src="images/sidel.jpg" width="100%" height="100%"></td>
    <td valign="top">
    
    
    
    <table id="t1" border="0" cellspacing="0" width="100%">
  <form name="form1" method="POST" action="--WEBBOT-SELF--">
       <tr>
                    <td width="100%" colspan="2">
                    <p style="margin-top: 1; margin-bottom: 20"><font size="5">
                    <b>Change Administrator</b></font></td>
                  </tr>
                  <tr>
                    <td width="30%">
                    <b>
                    <font size="3" face="Times New Roman">New User Name</font></b></td>
                    <td width="70%">
                    <font size="3" face="Times New Roman">
                    <input type="text" name="T1" size="35"></font></td>
                  </tr>
                  <tr>
                    <td width="30%">
                    <b><font size="3" face="Times New Roman">New Password</font></b></td>
                    <td width="70%"><font size="3" face="Times New Roman">
                    <input type="password" name="T2" size="35"></font></td>
                  </tr>
                  <tr>
                    <td width="30%">
                    <b><font face="Times New Roman">Confirm</font><font size="3" face="Times New Roman"> Password</font></b></td>
                    <td width="70%"><input type="password" name="T4" size="35"></td>
                  </tr>
                  <tr>
                    <td width="30%">
                    <p style="margin-top: 7"><b><font face="Times New Roman">Old</font><font size="3" face="Times New Roman"> Password</font></b></td>
                    <td width="70%"><input type="password" name="T3" size="35"></td>
                  </tr>
                  <tr>
                    <td width="100%" colspan="2"> 
                    </td>
                  </tr>

                  <tr>
                    <td width="100%" colspan="2"> 
                    <p style="margin-top: 15"> 
                    <input type="submit" value="Change" name="B1" onclick="verify();return false;">
                    </td>
                  </tr>
                   </form>
                </table>

				


                 
                 
                 
    </td>
    <td width="15">
    <img border="0" src="images/sider.jpg" width="100%" height="100%"></td>
  </tr>
  <tr>
   <td width="15" height="15">
    <img border="0" src="images/cornerbl.jpg" width="100%" height="100%"></td>
    <td height="15">
    <img border="0" src="images/sideb.jpg" width="100%" height="100%"></td>
    <td width="15" height="15">
    <img border="0" src="images/cornerbr.jpg" width="100%" height="100%"></td>
  </tr>
</table>

<script language = "javascript" >
{
var h=document.getElementById("t1").offsetHeight;
h=h+60;
document.getElementById("table2").style.height=""+h+"px";
}

  function verify()
  {
    
			if(document.form1.T2.value==document.form1.T4.value)
			{
    			document.form1.action="changeadmin.jsp";
  	    		document.form1.submit();
  	    	}
  	    	else
  	    	{
  	    		alert("Confirm password doesn't match with new password. Please try again.");
  	    	}
    
  }
                  </script>


</body>

</html>