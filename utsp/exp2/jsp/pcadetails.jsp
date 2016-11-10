<%@ page language = "java" import = "java.io.*, java.util.Date;" %>

<html>
<%
Date dt=new Date();
int nob=0,type=0;
String fname="";
String method="";
String comatrix[]=null;
String eign[][]=null;
String sline1="";
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
<title>PCA Details</title>
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
<%
FileInputStream fs1=null;
DataInputStream in1=null;
BufferedReader br1=null;

fname=request.getParameter("image_name");
nob=Integer.parseInt(request.getParameter("nob")+"");
comatrix=new String[nob];
eign=new String[nob][2];
String pointPix[]=new String[nob];
int count=0;
method=request.getParameter("method");
try{
fs1=new FileInputStream("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/eigen_values.txt");
in1 =new DataInputStream(fs1);
br1=new BufferedReader(new InputStreamReader(in1));

while(count<nob)//(sline1=br1.readLine())!=null)
{
sline1=br1.readLine();
	eign[count][0]=sline1+"";
//	out.println(eign[count][0]);
	count++;
}
}catch(Exception e)
{//out.println("1");
}
try{
fs1=new FileInputStream("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/eigen_vectors.txt");
in1 =new DataInputStream(fs1);
br1=new BufferedReader(new InputStreamReader(in1));
count=0;
while(count<nob)//(sline1=br1.readLine())!=null)
{
sline1=br1.readLine();
	eign[count][1]=sline1+"";
	//out.println(eign[count][1]);
	count++;
}
}catch(Exception e)
{//out.println("2");
}
try{

if(method.equals("Covariance"))
{
//out.println("cov");
fs1=new FileInputStream("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/covariance.txt");
	type=0;
}
else
{
//out.println("cor");
	fs1=new FileInputStream("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/correlation.txt");
	type=1;
}

}catch(Exception e)
{//out.println("3"+e.toString());
}
try{

in1 =new DataInputStream(fs1);
br1=new BufferedReader(new InputStreamReader(in1));
count=0;
while(count<nob)//(sline1=br1.readLine())!=null)
{
sline1=br1.readLine();
	comatrix[count]=sline1+"";
	//out.println(comatrix[count]);
	count++;
}
}catch(Exception e)
{//out.println("3");
}
try{

%>


<table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%">
    <tr>
    	<td bordercolor="#000000" bgcolor="#008000" style="color: #FFFFFF; background-color: #008000" colspan="<%=(nob+1)%>">
        <p align="left"><%if(type==1)
{%>
CORRELATION TABLE
<%}
else{%>
COVARIANCE TABLE
<%}%></td>
    </tr>
    
<%
for(int i=0;i<=nob;i++)
{
	if(i!=0)
	{
		pointPix=comatrix[i-1].split("\\s+");
	}%>
<tr>
	<%for(int j=0;j<=nob;j++)
	{
		if(i==0)
		{%>
	
      <td  bordercolor="#000000" bgcolor="#008000" style="color: #FFFFFF; background-color: #008000">
      <%if(j!=0){%>Band <%=j%><%}%> </td>
    
<%			
		}
		else
		{
			if(j==0){%>	
      <td  bordercolor="#000000" bgcolor="#008000" style="color: #FFFFFF; background-color: #008000" width="70px">
      Band <%=i%> </td>
      	<%}
      	else{%>
      	<td ><%=pointPix[j-1]%>&nbsp;</td>

      	<%}%>
    
<%		}
	}%>
</tr>
<%}
%>
</table>

<%}
catch(Exception e)
{//out.println(e.toString());
}%>
</br>
<table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%">
    <tr>
    	<td bordercolor="#000000" bgcolor="#008000" style="color: #FFFFFF; background-color: #008000" colspan="2">
        <p align="left">EIGEN VALUES IN DECREASING ORDER AND THEIR CORRESPONDING EIGEN VECTORS</td>
    </tr>
	<tr>
    	<td bordercolor="#000000" bgcolor="#008000" style="color: #FFFFFF; background-color: #008000" colspan="1" width="150px">
        <p align="left">EIGEN VALUE</td>
    	<td bordercolor="#000000" bgcolor="#008000" style="color: #FFFFFF; background-color: #008000" colspan="1" >
        <p align="left">EIGEN VECTOR</td>
    
    </tr>
    

<%
String evector="";
for(int i=0;i<nob;i++)
{
evector="";
	//if(i!=0)
	//{
//		pointPix=comatrix[i-1].split("\\s+");
//	}%>
<tr>
	<td ><%=eign[i][0]%>&nbsp;</td>
	<%pointPix=eign[i][1].split("\\s+");
	for(int j=0;j<nob;j++)
	{
		if(!evector.equals(""))
		{
			evector+=", ";
		}
	evector=evector+pointPix[j];
	}
	%>
	<td >(<%=evector%>)&nbsp;</td>
</tr>
    
<%	
}%>
</table>
</div>

</body>

</html>