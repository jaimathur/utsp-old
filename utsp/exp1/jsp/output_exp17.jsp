<%@ page language = "java" import = "java.io.*, java.util.Date;" %>

<html>
<%
Date dt=new Date();
int classno=0;
int band=0;
String mainlines[]=null;
String subdiv[]=null;
String metric="";
classno=Integer.parseInt(request.getParameter("class"));
int not=Integer.parseInt(request.getParameter("twindows"));
band=Integer.parseInt(request.getParameter("band"));
metric=request.getParameter("metric");

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
String oname="C:/uploads/"+session_user+"_classified/";


FileInputStream fs1=null;
DataInputStream in1=null;
BufferedReader br1=null;
String fname="";
int count=0;
String sline1="";
if(metric.equals("Divergence"))
{
fname="C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/out_divergence.txt";
}
else
{
fname="C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/out_JM.txt";
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
<title>Outputs of Class Separability</title>
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
<form name="form1" method="POST" target="savef" action="savefile.jsp">

<%if(metric.equals("Divergence"))
{
try{
fs1=new FileInputStream(fname);
in1 =new DataInputStream(fs1);
br1=new BufferedReader(new InputStreamReader(in1));
%>


<table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%">
  <tr>
    <td width="100%" colspan="<%=(classno+1)%>" bgcolor="#008000"><b><font color="#FFFFFF">Divergence Between Classes</font></b></td>
  </tr>
  <tr>
    <td  bgcolor="#008000"><font color="#FFFFFF"> </font></td>
  

<%
count=0;
while(count<classno)
{
%>
  <td  bgcolor="#008000"><font color="#FFFFFF">Class <%=(count+1)%></font></td>

  <%
  count++;
  }%>
  </tr>

  <%
count=0;
sline1=br1.readLine();
sline1=br1.readLine();

while(count<classno)
{
%>
<tr>
<td width="10%" bgcolor="#008000"><font color="#FFFFFF">Class <%=(count+1)%></font></td>
<%
sline1=br1.readLine();
subdiv=sline1.split("\\s+");
for(int i=1;i<=classno;i++)
{
%>
<td><%=subdiv[i]%>&nbsp;</td>



<%
}
%>
</tr>
<%
count++;
}
%>
</table>
</br>


<table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%">
  <tr>
    <td width="100%" colspan="<%=(classno)%>" bgcolor="#008000"><b><font color="#FFFFFF">Average Divergence</font></b></td>
  </tr>


  <%
  sline1=br1.readLine();
  sline1=br1.readLine();
count=0;
while(count<classno)
{
%>
<tr>
<td width="10%" bgcolor="#008000"><font color="#FFFFFF">Class <%=(count+1)%></font></td>
<%
sline1=br1.readLine();
subdiv=sline1.split("\\s+");
%>
<td><%=subdiv[2]%>&nbsp;</td>

</tr>
<%
count++;
}
%>
</table>
</br>




<table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%">
  <tr>
    <td width="100%" colspan="<%=(classno+1)%>" bgcolor="#008000"><b><font color="#FFFFFF">Transformed Divergence Index Between Classes</font></b></td>
  </tr>
 <tr>
    <td  bgcolor="#008000"><font color="#FFFFFF"> </font></td>
  

<%
count=0;
while(count<classno)
{
%>
  <td  bgcolor="#008000"><font color="#FFFFFF">Class <%=(count+1)%></font></td>

  <%
  count++;
  }%>
  </tr>


  <%
  sline1=br1.readLine();
  sline1=br1.readLine();
  sline1=br1.readLine();
count=0;
while(count<classno)
{
%>
<tr>
<td width="10%" bgcolor="#008000"><font color="#FFFFFF">Class <%=(count+1)%></font></td>
<%
sline1=br1.readLine();
subdiv=sline1.split("\\s+");
for(int i=1;i<=classno;i++)
{
%>
<td><%=subdiv[i]%>&nbsp;</td>



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


<%}
else
{
try{
fs1=new FileInputStream(fname);
in1 =new DataInputStream(fs1);
br1=new BufferedReader(new InputStreamReader(in1));
%>


<table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%">
  <tr>
    <td width="100%" colspan="<%=(classno+1)%>" bgcolor="#008000"><b><font color="#FFFFFF">JM Distance Between Classes</font></b></td>
  </tr>
  <tr>
    <td  bgcolor="#008000"><font color="#FFFFFF"> </font></td>
  

<%
count=0;
while(count<classno)
{
%>
  <td  bgcolor="#008000"><font color="#FFFFFF">Class <%=(count+1)%></font></td>

  <%
  count++;
  }%>
  </tr>

  <%
count=0;
sline1=br1.readLine();
sline1=br1.readLine();

while(count<classno)
{
%>
<tr>
<td width="10%" bgcolor="#008000"><font color="#FFFFFF">Class <%=(count+1)%></font></td>
<%
sline1=br1.readLine();
subdiv=sline1.split("\\s+");
for(int i=1;i<=classno;i++)
{
%>
<td><%=subdiv[i]%>&nbsp;</td>



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





<%}%>


If you want to save the used training area/test area signature file, give it a name and click on save button.
<p>
<input type="text" name="enterfilename" id="saveT" value="">
<input type="button" value="Save" onclick='savefile()'>
</p>
<p>
<iframe name="savef" id="savef" width="531" height="53" marginwidth="1" marginheight="1" style="padding: 0" scrolling="no" border="0" frameborder="0"></iframe>
<input type="hidden" name="oldfilename" id="oldfilename" value=<%=oname%>>
<input type="hidden" name="newfilename" id="newfilename" value="">

<script language = "javascript" >
{
//alert("g");

}
function savefile()
{
	document.form1.newfilename.value='<%=oname%>'+document.form1.enterfilename.value+"_1110_"+'<%=not%>'+"_1110_"+'<%=classno%>';
	//document.form1.action="savefile.jsp";
	//alert("a");
	//document.form1.target="savef";
	//alert("a");
	document.form1.submit();
	//alert("a");
}

</script>
</form>
  <!--webbot bot="SaveResults" u-file="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\siplabs\_private\form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><p style="text-align: left">
 

</div>

</body>

</html></p>