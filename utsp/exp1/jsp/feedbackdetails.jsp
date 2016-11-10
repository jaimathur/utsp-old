<%@ page language = "java" import = "java.io.*, java.util.Date, java.sql.*;" %>

<html>
<%
//------------------session check--------------//


String upath="Guest";
    Cookie cookies[]=request.getCookies();
	
    if(cookies!=null)
		{
			for(int i=0;i<cookies.length;i++)
			{
				
				if(cookies[i].getName().equals("uploadpath"))
				{
					upath=cookies[i].getValue();
					break;
					
				}
			}
		}
		
if(upath.equals("C:/uploads/common"))
{

ResultSet rs=null;
Connection connection = null; 
int select=1;
//if((request.getParameter("id")!=null)||(request.getParameter("sel")!=null))
//{
	if(request.getParameter("sel")!=null)
	{
		select=Integer.parseInt(request.getParameter("sel"));
	}
	try {
		String connectionURL = "jdbc:mysql://localhost:3306/krishna"; 
			Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		connection = DriverManager.getConnection(connectionURL, "root", "kktiwari");
			if(!connection.isClosed())
			{}//out.println("Successfully connected to " + "MySQL server using TCP/IP...");

		Statement stmt=null;
		stmt=connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
		rs=stmt.executeQuery("select * from feedback order by date desc");
		
	}
	catch(Exception ex){
		out.println(ex.toString());
	}

%>
<head>
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>User's Feedback</title>
<style type="text/css">
html {height:100%;}
body {height:100%; margin:0; padding:0;}
#bg {position:fixed; top:0; left:0; width:100%; height:100%;}
#content {position:relative; z-index:1;}
</style>
</head>

<body bgcolor="#FFFFFF">



<div id="content">
  <input type="button" value="20 Recent Feedbacks" name="B3" onclick="select1()" style="width: 180px; color: #FFFFFF; border-style: solid; border-width: 0; background-image: url('images/blackbutton.jpg')">
  <input type="button" value="All Feedbacks" name="B1" onclick="select2()" style="color: #FFFFFF; border-style: solid; border-width: 0; background-image: url('images/blackbutton.jpg')"></p>
	<form name="form1" method="POST" action="--WEBBOT-SELF--">
		<input type="hidden" name="sel" value=""> 
	</form>
<%if(select==1)
  {	
  int count=0;
	while((rs.next())&&(count<20))
  	{
%>
<table border="1" cellspacing="0" style="border-collapse: collapse; border-top-style:solid; border-bottom-style:solid; " bordercolor="#C0C0C0" width="100%" cellpadding="0" bgcolor="#C6E4F6"> 

 <tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0" bgcolor="#00CCFF">
    <p style="margin-top: 6; margin-bottom: 6"><font color="#FFFFFF"><b><%=rs.getString("userid")%></b></font></td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0" bgcolor="#00CCFF">
    <p style="margin-top: 6; margin-bottom: 6" align="right">
    <font color="#FFFFFF"><b><%=rs.getString("date")%></b></font></td>
  </tr>
 
 <tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">Name of the student/faculty</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("userid")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">Name of the institute</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q4")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">Name of the virtual lab</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2">Satellite Image Processing Lab</font></b></td>
  </tr>
  <tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">Which experiment no. did you perform</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("expno")%></font></b></td>
  </tr>
<tr>
    <td width="53%" colspan="2" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">1. Please tell your agreement with the following statements (Excellent, V 
	Good, Good, Average or Poor)</td>
    
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; a) To what degree was the actual lab environment simulated</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q1")%></font></b></td>
  </tr>
  <tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; b) The manuals were found to be helpful</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q2")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; c) The results of experiments were easily interpretable</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q3")%></font></b></td>
  </tr>

<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">2. How helpful do you feel the system is</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("feedback")%></font></b></td>
  </tr>
  <tr>
    <td width="53%" colspan="2" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">3. Please answer the following questions</td>
   
  </tr>

<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; a) Did you get the feel of “actual lab” while performing the experiments? </td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q5")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; b) Did you go through the manual/step by step method before performing the experiments live?</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q9")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; c) Could you measure and analyze the data successfully? </td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q10")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; d) Could you compare your results with the given typical results?</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q11")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; e) Do you think performing experiments through virtual labs are more challenging than the real lab experiments? </td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q12")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; f) Do you think doing experiments through virtual lab gives scope for more innovative and creative research work? 	</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q13")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">4. Specify problems/difficulties you faced while performing the experiments.</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("feedback1")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">5. Give most interesting thing about the experiments.</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("feedback2")%></font></b></td>
  </tr>



 
 
 
 
 
 
 


		
    	</table>
    	</br>
<%  
  		count++;
  	}
  }
  else
  {
  	while(rs.next())
  	{
%>
		<table border="1" cellspacing="0" style="border-collapse: collapse; border-top-style:solid; border-bottom-style:solid; " bordercolor="#C0C0C0" width="100%" cellpadding="0" bgcolor="#C6E4F6"> 

 <tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0" bgcolor="#00CCFF">
    <p style="margin-top: 6; margin-bottom: 6"><font color="#FFFFFF"><b><%=rs.getString("userid")%></b></font></td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0" bgcolor="#00CCFF">
    <p style="margin-top: 6; margin-bottom: 6" align="right">
    <font color="#FFFFFF"><b><%=rs.getString("date")%></b></font></td>
  </tr>
 
 <tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">Name of the student/faculty</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("userid")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">Name of the institute</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q4")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">Name of the virtual lab</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2">Satellite Image Processing Lab</font></b></td>
  </tr>
  <tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">Which experiment no. did you perform</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("expno")%></font></b></td>
  </tr>
<tr>
    <td width="53%" colspan="2" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">1. Please tell your agreement with the following statements (Excellent, V 
	Good, Good, Average or Poor)</td>
    
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; a) To what degree was the actual lab environment simulated</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q1")%></font></b></td>
  </tr>
  <tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; b) The manuals were found to be helpful</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q2")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; c) The results of experiments were easily interpretable</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q3")%></font></b></td>
  </tr>

<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">2. How helpful do you feel the system is</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("feedback")%></font></b></td>
  </tr>
  <tr>
    <td width="53%" colspan="2" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">3. Please answer the following questions</td>
   
  </tr>

<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; a) Did you get the feel of “actual lab” while performing the experiments? </td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q5")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; b) Did you go through the manual/step by step method before performing the experiments live?</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q9")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; c) Could you measure and analyze the data successfully? </td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q10")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; d) Could you compare your results with the given typical results?</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q11")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; e) Do you think performing experiments through virtual labs are more challenging than the real lab experiments? </td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q12")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">&nbsp;&nbsp;&nbsp; f) Do you think doing experiments through virtual lab gives scope for more innovative and creative research work? 	</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("q13")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">4. Specify problems/difficulties you faced while performing the experiments.</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("feedback1")%></font></b></td>
  </tr>
<tr>
    <td width="53%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6">5. Give most interesting thing about the experiments.</td>
    <td width="47%" valign="top" style="border: 1px solid #C0C0C0">
    <p style="margin-top: 6; margin-bottom: 6"><b><font size="2"><%=rs.getString("feedback2")%></font></b></td>
  </tr>



 
 
 
 
 
 
 


		
    	</table>
    	</br>
   <%  

  	}
  }

%>
	
</div>
<script language = "javascript" >
function select1()
{
  		document.form1.sel.value="1";
    	document.form1.action="feedbackdetails.jsp";
  	    document.form1.submit();
  	
}
function select2()
{
  		document.form1.sel.value="2";
    	document.form1.action="feedbackdetails.jsp";
  	    document.form1.submit();
  	
}
</script>

</body>
<%}%>
</html>