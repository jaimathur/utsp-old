<%@ page language = "java" import = "java.io.*, java.util.Date;" %>

<html>
<%
Date dt=new Date();
int nob=0;
String fname="";
fname=request.getParameter("image_name");
nob=Integer.parseInt(request.getParameter("nob")+"");
int nor=Integer.parseInt(request.getParameter("krow")+"");
int noc=Integer.parseInt(request.getParameter("kcol")+"");
int iskernel=Integer.parseInt(request.getParameter("iskernel")+"");

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

%>
<head>
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Smoothening Output</title>
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
Smoothened Image(<%=fname%>)</br>
<img id="pointer_div" src="output/<%=session_user%>/out_filter_img.jpg?date=<%=dt%>"></br>
</br>
Mask Used
</br>
<%
if(iskernel==1)
{
String sline1;
String kvalues[];
FileInputStream fs1=null;
DataInputStream in1=null;
BufferedReader br1=null;
try{
fs1=new FileInputStream("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/out_kernel.txt");
in1 =new DataInputStream(fs1);
br1=new BufferedReader(new InputStreamReader(in1));

%>
<table border="1">
<% for(int i=0;i<nor;i++)
{
sline1=br1.readLine();
kvalues=sline1.split("\\s+");
%>	
	<tr>
<%		for(int j=0;j<noc;j++)
		{
%>			<td>
				<%=kvalues[j]%>
			</td>
<%		}
%>
	</tr>
<%}%>
</table>
<%}catch(Exception e)
{}
}%>

 <%
 	if(nob==0)
 	{
 	for(int i=1;i<=3;i++)
    {
    	%>Histogram After Smoothening For Band Assigned To <%if(i==1){%>Red<%}
    	else if(i==2){
    	%>Green<%}
    	else{
    	%>Blue<%}%>
 of Image: <%=fname%></br>
    	<img id="pointer_div" src="output/<%=session_user%>/out_hist_afterenhancement_band<%=i%>.jpg?date=<%=dt%>"  width="600" height="500"></br>

 	<% }
 	}
 	else
 	{
 	%>
 	</br>Histogram after smoothening of band<%=nob%> of image <%=fname%></br>
 	<img id="pointer_div" src="output/<%=session_user%>/out_hist_afterenhancement.jpg?date=<%=dt%>"  width="600" height="500"></br>

 	<%}%>

</form>
  <!--webbot bot="SaveResults" u-file="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\siplabs\_private\form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><p style="text-align: left">
 

</div>

</body>

</html>