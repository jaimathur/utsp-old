<%@ page language = "java" import = "java.io.*, java.util.Date, java.awt.*, javax.imageio.*, imageprocessing.*, java.awt.image.*;" %>

<html>
<%
Date dt=new Date();

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

String sb1=request.getParameter("sb1");
String sb2=request.getParameter("sb2");
String sb3=request.getParameter("sb3");
int count=0;
String inpath=request.getParameter("inpath");
String outpath="C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/";
String userclassified="C:/uploads/"+session_user+"_classified/";
String d6=request.getParameter("d6");
String binname=request.getParameter("binname");
ReadImage ri=null;
Classification classific=null;

ri=new ReadImage(inpath);
ri.writeImage(Integer.parseInt(sb1),Integer.parseInt(sb2),Integer.parseInt(sb3),ri.imageData,ri.r,ri.c,outpath+"out_original_img");	
	
classific=new Classification(inpath,userclassified+d6,userclassified+binname,outpath+"out_MLC",2,"000000");
long t1=System.nanoTime();

//String fname="C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/out_meanvectors.txt";


%>
<head>
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Outputs of Maximum Likelihood Classification</title>
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
<b>Original Image</b></br>
<img id="pointer_div" src="output/<%=session_user%>/out_original_img.bmp?date=<%=dt%>">
</br>
<b>Classified Image</b></br>
<img id="pointer_div" src="output/<%=session_user%>/out_MLC.bmp?date=<%=dt%>">
</br>
<table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%">
  <tr>
    <td width="100%" colspan="<%=(ri.b+1)%>" bgcolor="#008000"><b><font color="#FFFFFF">Mean Matrix</font></b></td>
  </tr>
  <tr>
    <td  bgcolor="#008000"><font color="#FFFFFF"> </font></td>
  

<%
count=0;
while(count<ri.b)
{
%>
  <td  bgcolor="#008000"><font color="#FFFFFF">Band <%=(count+1)%></font></td>

  <%
  count++;
  }%>
  </tr>

  <%try{
//fs1=new FileInputStream(fname);
//in1 =new DataInputStream(fs1);
//br1=new BufferedReader(new InputStreamReader(in1));
count=0;
while(count<classific.noc)
{
%>
<tr>
<td width="10%" bgcolor="#008000"><font color="#FFFFFF">Class <%=(count+1)%></font></td>
<%
//sline1=br1.readLine();
//subdiv=sline1.split("\\s+");
for(int i=0;i<ri.b;i++)
{
%>
<td><%=classific.mean[count][i]%>&nbsp;</td>



<%
}
%>
</tr>
<%
count++;
}
}catch(Exception e)
{//out.println("1");
}
%>
</table>
</br>
</br>


<table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%">
  <tr>
    <td width="100%" colspan="2" bgcolor="#008000"><b><font color="#FFFFFF">Determinants Matrix</font></b></td>
  </tr>
  
  <%try{
  //fname="C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/out_determinants.txt";

//fs1=new FileInputStream(fname);
//in1 =new DataInputStream(fs1);
//br1=new BufferedReader(new InputStreamReader(in1));
count=0;
while(count<classific.noc)
{
//sline1=br1.readLine();

%>
<tr>
<td width="10%" bgcolor="#008000"><font color="#FFFFFF">Class <%=(count+1)%></font></td>
<td><%=(float)Math.round(Math.exp(classific.determinant[count])*10000)/10000%>&nbsp;</td>
</tr>
<%
count++;
}
}catch(Exception e)
{//out.println("1");
}
%>
</table>




<%for(int i=0;i<classific.noc;i++)
{%>



</br>
<table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%">
  <tr>
    <td width="100%" colspan="<%=(ri.b+1)%>" bgcolor="#008000"><b><font color="#FFFFFF">Covariance Matrix For Class <%=(i+1)%></font></b></td>
  </tr>
  <tr>
    <td  bgcolor="#008000"><font color="#FFFFFF"> </font></td>
  

<%
count=0;
while(count<ri.b)
{
%>
  <td  bgcolor="#008000"><font color="#FFFFFF">Band <%=(count+1)%></font></td>

  <%
  count++;
  }%>
  </tr>
  <%
  try{
    //fname="C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/out_covariancevectors_class_"+(i+1)+".txt";

//fs1=new FileInputStream(fname);
//in1 =new DataInputStream(fs1);
//br1=new BufferedReader(new InputStreamReader(in1));
count=0;
while(count<ri.b)
{
%>
<tr>
<td width="10%" bgcolor="#008000"><font color="#FFFFFF">Band <%=(count+1)%></font></td>
<%
//sline1=br1.readLine();
//subdiv=sline1.split("\\s+");
for(int j=0;j<ri.b;j++)
{
%>
<td><%=classific.covariance[i][count][j]%>&nbsp;</td>



<%
}
%>
</tr>
<%
count++;
}
}catch(Exception e)
{//out.println("1");
}

%>
</table>
<%}
%>
<%out.println(t1+"");%>

</form>
  <!--webbot bot="SaveResults" u-file="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\siplabs\_private\form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><p style="text-align: left">
 

</div>

</body>

</html>