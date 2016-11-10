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
String msg="";
Cookie cookies[]=request.getCookies();
String name="";
String submitone="";
//String passwd="";
//out.println("krishna");
	if(request.getParameter("T1")==null)
	{submitone="kk";
	}
	else
	{
		int flag=0;
		if(cookies!=null)
		{
		
			for(int i=0;i<cookies.length;i++)
			{
			//out.println(cookies[i].getName()+"");
				if(cookies[i].getName().equals("uploadpath"))   //if(cookies[i].getName().equals("username"))
				{
				
					flag=1;
					if((cookies[i].getValue()).equals("C:/uploads/common"))
					{
						msg="kk";
						response.sendRedirect(response.encodeRedirectURL("simuadmin.html"));
					}
					else
					{
						response.sendRedirect(response.encodeRedirectURL("simu.html"));

					}
					break;
				}
			}
		}
		if(flag==0)
		{
			name=request.getParameter("T1");
			String passwd=request.getParameter("T2");
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
				ResultSet rs=stmt.executeQuery("select * from user where userid='" + name + "' and password='" + passwd + "'");
				if(rs.first())
				{
					//rs.close();
					Cookie cook=new Cookie("username",name);
					cook.setMaxAge(-2); //-----------------to be changed to either -ve or just remove the line, to make the cookie expire on exit of browser----change to 0 if cookie needed to be deleted--//
					response.addCookie(cook);
					
					String uploadpath="C:/uploads/";
					
					if((rs.getString("admin")).equals("y"))
					{
						uploadpath=uploadpath+"common";
					}
					else
					{
						uploadpath=uploadpath+name;
					}
					
					cook=new Cookie("uploadpath",uploadpath);
					cook.setMaxAge(-2); //-----------------to be changed to either -ve or just remove the line, to make the cookie expire on exit of browser----change to 0 if cookie needed to be deleted--//
					response.addCookie(cook);

					//session.setAttribute("username",name);
				//	response.sendRedirect(response.encodeRedirectURL("simu.html"));
					%>
					<script language = "javascript" >

						//document.cookie ="username=" + '<%=name%>' + "; path=/";
						//alert(""+document.cookie);
 						//parent.document.getElementById("session").value=name+"";
    						window.top.location.reload(true);
  				
                  		</script>

					<%
				
				
					//out.println("User already exists.....Choose another name");
				}	
				else
				{
					msg="Invalid Username/Password";
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
<%if(!(msg.equals("")))
{%> 
 <tr>
  <td width="100%" colspan="2">
  	
  </td>
  </tr>
 <%}%>          
 <%//out.println("krishna");
 //session.setAttribute("test","testing");
 //out.println(session.getAttribute("test"));%>       <tr>
                    <td width="100%" colspan="2">
                    <p style="margin-top: 1; margin-bottom: 20"><font size="5">
                    <b>Sign In|</b></font> 
                <a href="registration.jsp" style="text-decoration: none">
                    <font color="#000000">New User(register)</font></a></td>
                  </tr>
                  <tr>
                    <td width="30%">
                    <b>
                    <font size="3" face="Times New Roman">User Name</font></b></td>
                    <td width="70%">
                    <font size="3" face="Times New Roman">
                    <input type="text" name="T1" size="35"></font></td>
                  </tr>
                  <tr>
                    <td width="30%">
                    <p style="margin-top: 7"><b><font size="3" face="Times New Roman">Password</font></b></td>
                    <td width="70%"><font size="3" face="Times New Roman">
                    <input type="password" name="T2" size="35"></font></td>
                  </tr>
                  <tr>
                    <td width="100%" colspan="2"> 
                    </td>
                  </tr>

                  <tr>
                    <td width="100%" colspan="2"> 
                    <p style="margin-top: 15"> 
                    <input type="submit" value="Sign In" name="B1" onclick="verify();return false;">
                    <input type="hidden" id="subm" value="<%=submitone%>"></td>
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
//alert('<%=msg%>');
var h=document.getElementById("t1").offsetHeight;
h=h+60;
document.getElementById("table2").style.height=""+h+"px";
}

if(document.form1.subm.value=="kk")
{

document.form1.action="login.jsp";
document.form1.submit();
}
else
{
}





  function verify()
  {
    

    		document.form1.action="login.jsp"
  	    	document.form1.submit();
    
  }
                  </script>


</body>

</html>