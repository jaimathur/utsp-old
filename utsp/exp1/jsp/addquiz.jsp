<%@ page language = "java" import = "java.io.*, java.util.Date, java.util.*, java.awt.*, javax.imageio.*, java.awt.image.*, java.sql.*;" %>

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







String q="";
String a1="";
String a2="";
String a3="";
String a4="";
String ans="";

if(request.getParameter("T1")!=null)
{
	q=request.getParameter("T1");
	a1=request.getParameter("T2");
	a2=request.getParameter("T3");
	a3=request.getParameter("T4");
	a4=request.getParameter("T5");
	ans=request.getParameter("D1");
	
	
/*--------------------------------------------------------------------------------------------------------------*/		
	
	try {
		String connectionURL = "jdbc:mysql://localhost:3306/krishna"; 
		Connection connection = null; 
			Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		connection = DriverManager.getConnection(connectionURL, "root", "kktiwari");
			if(!connection.isClosed())
			{}//out.println("Successfully connected to " + "MySQL server using TCP/IP...");

		Statement stmt=null;
		stmt=connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
		stmt.executeUpdate("insert into quiz values('"+ q +"','"+ a1+"','"+a2 +"','"+ a3+"','"+ a4+"','"+ ans+"')");
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	catch(Exception ex)
	{
		out.println(ex.toString());
	}
}
%>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">

<title>Interpretation Of Image Viewer Outputs</title>
<style>
<!--
 table.MsoNormalTable
	{mso-style-parent:"";
	font-size:10.0pt;
	font-family:"Times New Roman"}
-->
</style>
</head>

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
    
    
     <form name="form1" method="POST" action="--WEBBOT-SELF--">
     
    <!--webbot bot="SaveResults" u-file="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\siplabs\_private\form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><table id="t1" border="0" cellspacing="0" width="100%">
  <tr>
    <td width="100%" valign="top" align="justify">
    	<p align="justify"><font size="6"><b>Add Quiz Questions</b></font></p>
        <p class="MsoNormal"><b>&nbsp;</b></p>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%">
          <tr>
            <td width="15%">Question</td>
            <td width="85%">
           
              <p>
              <input type="text" name="T1" size="105"></p>
            
            </td>
          </tr>
          <tr>
            <td width="15%">option A</td>
            <td width="85%">
              <input type="text" name="T2" size="105"></td>
          </tr>
          <tr>
            <td width="15%">option B</td>
            <td width="85%">
              <input type="text" name="T3" size="105"></td>
          </tr>
          <tr>
            <td width="15%">option C</td>
            <td width="85%">
              <input type="text" name="T4" size="105"></td>
          </tr>
          <tr>
            <td width="15%">option D</td>
            <td width="85%">
              <input type="text" name="T5" size="105"></td>
          </tr>
          <tr>
            <td width="15%">Correct Answer</td>
            <td width="85%"><select size="1" name="D1">
            <option selected value="a1">A</option>
            <option value="a2">B</option>
            <option value="a3">C</option>
            <option value="a4">D</option>
            </select></td>
          </tr>
          <tr>
            <td width="15%">
            <input type="button" value="Submit" name="B2" onclick="verify2()" style="height: 28px; width: 100px; color: #FFFFFF; border-style: solid; border-width: 0; background-image: url('images/blackbutton.jpg')">
            </td>
            <td width="85%">&nbsp;</td>
          </tr>
        </table>
       
<p align="justify">&nbsp;</p>
    </td>
  </tr>
</table>
   </form>
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

<script language="javascript">
{
var h=document.getElementById("t1").offsetHeight;
h=h+60;
document.getElementById("table2").style.height=""+h+"px";
}
function verify2()
{
//alert("");
if(document.form1.T1.value=="")
{
	alert("Choice of answer cannot be left blank");
}
else if(document.form1.T2.value=="")
{
	alert("Choice of answer cannot be left blank");
}
else if(document.form1.T3.value=="")
{
	alert("Choice of answer cannot be left blank");
}
else if(document.form1.T4.value=="")
{
	alert("Choice of answer cannot be left blank");
}
else if(document.form1.T5.value=="")
{
	alert("Choice of answer cannot be left blank");
}
else
{
document.form1.action="addquiz.jsp";
document.form1.submit();
}

}
        </script>



</body>
<%}%>

</html>