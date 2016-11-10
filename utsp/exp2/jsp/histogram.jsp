<%@ page language = "java" import = "java.io.*, java.util.Date;" %>

<html>
<%
Date dt=new Date();
int nob=0;
int bval=0;
nob=Integer.parseInt(request.getParameter("id")+"");
//bval=Integer.parseInt(request.getParameter("id1")+"");

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
Process pr=null;
pr= Runtime.getRuntime().exec("C:\\VSIP\\histogram.exe C:\\uploads\\"+session_user+"\\param.txt");
pr.waitFor();
pr.destroy();

%>
<head>
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Histogram</title>
<style type="text/css">
html {height:100%;}
body {height:100%; margin:0; padding:0;}
#bg {position:fixed; top:0; left:0; width:100%; height:100%;}
#content {position:relative; z-index:1;}
</style>
</head>

<body>



<div id="bg">
  <img src="images/img082.jpg" width="100%" height="100%" alt="">
    <!--webbot bot="SaveResults" u-file="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\siplabs\_private\form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><p>
  <p></div>
<div id="content">
<form name="form1" method="POST" action="--WEBBOT-SELF--">
  	<%
  	if(nob>1)
  	{
  	for(int i=1;i<=nob;i++)
    {
    	if(nob==1){}
    	else{%>
    	
    	Histogram For Band Assigned To <%if(i==1){%>Red<%}
    	else if(i==2){
    	%>Green<%}
    	else{
    	%>Blue<%}}%>
    	<img id="pointer_div" src="output/<%=session_user%>/out_hist_bands<%=i%>.jpg?date=<%=dt%>" width="600" height="500">
 	<%}
 	}
 	else
 	{
 	%>
 	Histogram For the selected Band
 	<img id="pointer_div" src="output/<%=session_user%>/out_hist_bands1.jpg?date=<%=dt%>" width="600" height="500">
 	<%}%>

</form>
  <!--webbot bot="SaveResults" u-file="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\siplabs\_private\form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><p style="text-align: left">
 

</div>

</body>

</html>