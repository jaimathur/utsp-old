<%@ page language = "java" import = "java.io.*, java.util.Date, java.awt.*, javax.imageio.*, imageprocessing.*, java.awt.image.*;" %>

<html>
<%



String d6=request.getParameter("d6");

String inpath=request.getParameter("inpath");
String nn="";
if(inpath.lastIndexOf(".")>=0)
{
	nn="x";
}
else
{
	nn="nn";
}
AccuracyAssessment aa=new AccuracyAssessment(inpath,d6,nn);
long t1=System.nanoTime();
String msg=inpath+","+d6+","+nn;

int count=0;

%>
<head>
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Outputs of Accuracy Assessment</title>
<style type="text/css">
html {height:100%;}
body {height:100%; margin:0; padding:0;}
#bg {position:fixed; top:0; left:0; width:100%; height:100%;}
#content {position:relative; z-index:1;}
</style>
</head>

<body>

<%out.println(t1+"");%>


<div id="bg">
  <img src="images/img082.jpg" width="100%" height="100%" alt="">
    <!--webbot bot="SaveResults" u-file="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\siplabs\_private\form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><p>
  <p></div>
<div id="content">
<form name="form1" method="POST" action="--WEBBOT-SELF--">

<table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%">
  <tr>
    <td width="100%" bgcolor="#008000">
    <font color="#FFFFFF"><b>Overall Accuracy</b></font></td>
  </tr>
  


<tr>
<td>
<%=aa.overallaccuracy%> &nbsp;</td>
</tr>
</table>
</br>


<table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="918">
  <tr>
    <td width="912" colspan="2" bgcolor="#008000"><font color="#FFFFFF"><b>
    Producers Accuracy for Each Class/Feature</b></font></td>
  </tr>
  
  <tr>
    <td width="85" bgcolor="#008000"><font color="#FFFFFF"><b>Class</b></font></td>
    <td width="823" bgcolor="#008000"><font color="#FFFFFF"><b>Percentage(%)</b></font></td>
  </tr>
  
  <%try{

count=0;
while(count<aa.noc)
{

%>
<tr>
<td width="85" bgcolor="#008000"><font color="#FFFFFF">Class <%=(count+1)%></font></td>
<td width="823"><%=aa.accuracy[0][count]%>&nbsp;</td>
</tr>
<%
count++;
}
}catch(Exception e)
{out.println(e.toString()+" "+msg);
}
%>
</table>

</br>

<table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="918">
  <tr>
    <td width="912" colspan="2" bgcolor="#008000"><font color="#FFFFFF"><b>
    Users Accuracy for Each Class/Feature</b></font></td>
  </tr>
  
  <tr>
    <td width="85" bgcolor="#008000"><font color="#FFFFFF"><b>Class</b></font></td>
    <td width="823" bgcolor="#008000"><font color="#FFFFFF"><b>Percentage(%)</b></font></td>
  </tr>
  
  <%try{
 
count=0;
while(count<aa.noc)
{

%>
<tr>
<td width="85" bgcolor="#008000"><font color="#FFFFFF">Class <%=(count+1)%></font></td>
<td width="823"><%=aa.accuracy[1][count]%>&nbsp;</td>
</tr>
<%
count++;
}
}catch(Exception e)
{out.println(e.toString());
}
%>
</table>
</br>


<table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%">
  <tr>
    <td width="100%" bgcolor="#008000">
    <font color="#FFFFFF"><b>Kappa Coefficient</b></font></td>
  </tr>
  

<%try{
%>
<tr>
<td>
<%=aa.kappa%> &nbsp;</td>
</tr>
<%
}catch(Exception e)
{out.println(e.toString());
}
%>
</table>
<%out.println(t1+"");%>

</form>
  <!--webbot bot="SaveResults" u-file="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\siplabs\_private\form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><p style="text-align: left">
 

</div>
<%out.println(t1+"");%>

</body>

</html>