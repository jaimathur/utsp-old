<%@ page language = "java" import = "java.io.*, imageprocessing.*, java.util.Date;" %>

<html>
<%
long t1=System.nanoTime();//cal.getTimeInMillis();
long t2=0;

Date dt=new Date();
int nob=0,type=0;
String sline1="";
String inpath="";
int r1=0;
int r2=0;
int c1=0;
int c2=0;
int row=0;
int col=0;

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

nob=Integer.parseInt(request.getParameter("noband")+"");
//row=Integer.parseInt(request.getParameter("row")+"");
//col=Integer.parseInt(request.getParameter("col")+"");
r1=Integer.parseInt(request.getParameter("r1")+"");
r2=Integer.parseInt(request.getParameter("r2")+"");
c1=Integer.parseInt(request.getParameter("c1")+"");
c2=Integer.parseInt(request.getParameter("c2")+"");
inpath=request.getParameter("inpath")+"";

ReadImage ri=new ReadImage(inpath);






//Display disp=null;
//try{
//disp=new Display(1,1,1,inpath,"C:/out_original_img",nob,row,col);

//}
//catch(Exception e)
//{}
%>
<head>
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Pixel Data</title>
<style type="text/css">
html {height:100%;}
body {height:100%; margin:0; padding:0;}
#bg {position:fixed; top:0; left:0; width:100%; height:100%;}
#content {position:relative; z-index:1;}
</style>
</head>

<body>

<%
%>

<div id="bg">
  
  <img src="images/img082.jpg" width="100%" height="100%" alt="">
    <!--webbot bot="SaveResults" u-file="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\siplabs\_private\form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><p>
  <p></div>
<div id="content">
<%
try{
//out.println(inpath+" " +nob+" "+ row+" "+col); //disp.x[1][20]+"");

//r1--;
//r2--;
//c1--;
//c2--;
for(int b=0;b<nob;b++)
{%>


			

<table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%">
    <tr>
    	<td bordercolor="#000000" bgcolor="#008000" style="color: #FFFFFF; background-color: #008000" colspan="<%=(r2-r1+1)%>">
        <p align="left">PIXEL DATA OF BAND <%=(b+1)%></td>
    </tr>
    
  <%  
  for(int i=c1;i<=c2;i++)
  {
  %>
  <tr>
  <%
  	for(int j=r1;j<=r2;j++)
  	{
  	%>
  	<td><%=ri.imageData[b][i][j]%></td>
  	<%
  	}
  %>
  </tr>
  <%
  }  
 %>
 </table>
 <%
 }
 }
 catch(Exception e)
 {
 out.println(e.toString()+"");
 }
 
 t2=System.nanoTime();//cal.getTimeInMillis();
	out.println((t2)+"");
	

 %>

</div>

</body>

</html>