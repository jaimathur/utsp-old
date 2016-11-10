<%@ page language = "java" import = "java.io.*, java.util.Date, java.awt.*, javax.imageio.*, imageprocessing.*, java.awt.image.*;" %>

<html>
<%
ReadImage ri=null;
long t1=System.nanoTime();
long t2=0;
String selected="---select---";
String sline="";
String sline1="";
int filter=0;
int display=1;
int kernel=0;
int maketable=0;
BufferedReader br=null;
int output=0;
int noband=0;
String disable_display="";
String disable_filter="";
String parameter="0";
String error_msg="";
String files[]=null;
String sampleFiles[]=null;
String gen="0";
String nob="0";
int bval=0;
int band=0;
String row="3";
String col="3";
String p1="0";
String p2="0";
String p3="0";
String p4="0";


String method="Erode";
String btype="Dilation-Erosion";
String setype="Square";
int inv=0;
File f;
int jp=0;
int tp=0;
String style="visibile: hide; visibility:hidden";
String check="";
String init="---select---";
String init1="";
String sb1="";
String sb2="";
String sb3="";
int img_subset=0;

int img_pointpixel=0;
String sub_band="0";
sub_band=noband+"";
int start=0;
String subm="0";
String inpath="";
String outpath="";

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


outpath="C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/";
try{

if(request.getParameter("bnd")!=null)
{
 		if(true)
 		{
 		band=0;
 	//	disable="disabled";
 		gen="0";
 			String noOfband[];
 			String filecheck="";
 			
 			selected=request.getParameter("D1");
 			
 			f=new File("C:/uploads/common");
 			sampleFiles=f.list();
 			for(int i=0;i<sampleFiles.length;i++)
 			{
 				if(sampleFiles[i].equals(selected))
 				{
 					inpath="C:/uploads/common/"+selected;
 					break;
 				}
 			}
 			if(!inpath.equals("C:/uploads/common/"+selected))
 			{
 				f=new File("C:/uploads/"+session_user);
 				sampleFiles=f.list();
 				for(int i=0;i<sampleFiles.length;i++)
 				{
 					if(sampleFiles[i].equals(selected))
 					{
 						inpath="C:/uploads/"+session_user+"/"+selected;
 						break;
 					}
 				}
	
 			
 			}
 			
 			//selected=request.getParameter("infilewithpath");
 			ri=new ReadImage(inpath,1);
 			noband=ri.b;
 			
 			
 			
 
 		}
 }
 }
 catch(Exception e)
 {
 	error_msg="error";
 }

try{
//------------new way--------------------//
	f=new File("c:/uploads/common/");
	sampleFiles=f.list();
	f=new File("c:/uploads/"+session_user);
	files=f.list();

//-------------------------------------//
	}
	catch(Exception e)
	{
		error_msg=error_msg+"1";

	//out.println(e.toString());
	}
try{

if((request.getParameter("D1")!=null)&&(!(request.getParameter("bnd")).equals("1")))
{
noband=Integer.parseInt(request.getParameter("noofband"));	
init=request.getParameter("D1");
	selected=init;
	sb1="1";
	sb2="2";
	sb3="3";
	String parm="";
if(request.getParameter("D2")!=null)	
{	sb1=request.getParameter("D2");
}
if(request.getParameter("D9")!=null)	
{	sb2=request.getParameter("D9");
}
if(request.getParameter("D10")!=null)	
{	sb3=request.getParameter("D10");
}

if(request.getParameter("D6")!=null)	
{	method=request.getParameter("D6");
}
if(request.getParameter("T3")!=null)	
{	p1=request.getParameter("T3");
	parm=parm+p1;
}
if(request.getParameter("T6")!=null)	
{	p2=request.getParameter("T6");
	parm=parm+" "+p2;

}
if(request.getParameter("T7")!=null)	
{	p3=request.getParameter("T7");
	parm=parm+" "+p3;

}
if(request.getParameter("T2")!=null)	
{	p4=request.getParameter("T2");
	parm=parm+" "+p4;

}

if((request.getParameter("indexing")).equals("1"))
{

//----------------------------method type------------------------------//
	int methd=0;
	if(method.equals("Simple Ratio"))
 	{ 
		System.out.println("Ratio");
		methd=0;
  	}
 	else if(method.equals("Square Root"))
 	{ 
		System.out.println("SQRT");	
		methd=1;	
  	}
 	else if(method.equals("Vegetation Index"))
 	{ 
		System.out.println("VegIndex");
		methd=2;
  	}
 	else if(method.equals("Normalized Difference Vegetation Index"))
 	{ 
		System.out.println("NDVI");
		methd=3;
  	}
 	else if(method.equals("Enhanced Vegetation Index"))
 	{ 
		System.out.println("EVI");
		methd=4;
	}
 	else if(method.equals("Normalized Difference Water Index"))
 	{ 
		System.out.println("NDWI");
		methd=5;
  	}
 	else if(method.equals("Soil Adjusted Vegetation Index"))
 	{ 
		System.out.println("SAVI");
		methd=6;
  	}
 	else if(method.equals("Modified Soil Adjusted Vegetation Index"))
 	{ 
		System.out.println("MSAVI2");
		methd=7;
  	} 	


	Indices index =new Indices(inpath,outpath,methd,Integer.parseInt(sb1),Integer.parseInt(sb2),Integer.parseInt(sb3),parm);
	/*
	PrintStream ps=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/param.txt",false));
	System.setOut(ps);
	System.out.println("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");
	
//----------------------------image name-------------------------------------------//


	if(selected.equals("inputimage"))
	{
		System.out.println("C:/uploads/common/" + init);	
	}
	else
	{
		System.out.println("C:/uploads/" +session_user+"/" + init);	
	}
	
//----------------------------Required Bands-------------------------------------//
	System.out.println(sb1);
	System.out.println(sb2);
	if(method.equals("Enhanced Vegetation Index"))
 	{ 
		System.out.println(sb3);
	}
	
//------------------------additional Parameters---------------------------------//
	System.out.println(p1);
	System.out.println(p2);
	System.out.println(p3);
	System.out.println(p4);

//-----------------------processing-------------------------------------------//	
				
	Process pr= Runtime.getRuntime().exec("C:\\VSIP\\indexing.exe C:\\uploads\\"+session_user+"\\param.txt");
	pr.waitFor();
	pr.destroy();
	
	
	*/
	error_msg="error in image processing";
	
	
	gen="1";
	t2=System.nanoTime();
t2=t2-t1;
}
}
}
catch(Exception e)
{
error_msg=error_msg+e.toString();
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
<title>Experiment 8: Indices</title>
</head>

<body bgcolor="#E1F1FB">


<%try{%>
<form name="form1" method="POST" action="--WEBBOT-SELF--">
 <input type="hidden" name="h6" style="visibility: hidden;" size="1" id="fp6" ><input type="hidden" name="h5" style="visibility: hidden;" size="1" id="fp5" ><input type="hidden" name="hh5" style="visibility: hidden;" size="1" id="fp3" >
 <input type="hidden" value="0" name="bnd" value="<%=band%>">
<input type="hidden" name="prevurl" value="">
<input type="hidden" name="type" value="">
<input type="hidden" name="sub" value="<%=subm%>">
<input type="hidden" name="noofband" value="<%=noband%>">
<input type="hidden" name="subsetband" value="<%=sub_band%>">
<input type="hidden" name="inverse" value="<%=inv%>">
<input type="hidden" name="generate" value="<%=gen%>">
<input type="hidden" name="bandvalue" value="<%=bval%>">
<input type="hidden" name="display" value="0">
<input type="hidden" name="indexing" value="0">
<input type="hidden" name="kernel" value="0">

<%//out.println(error_msg +" "+request.getParameter("D1")+selected);%>
<p align="center">

<table id="cnt1" border="1" cellspacing="0" width="808"  cellpadding="0" style="border-style:solid; border-collapse: collapse" bordercolor="#9999FF" >

	<tr>
    	<td width="806" height="79%" style="border-left:1px none #9999FF; border-right:1px none #9999FF; background-repeat: repeat-x; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" colspan="2" valign="top" bgcolor="#0E92E4">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="33">
          <tr>
            <td width="50%" height="30" style="border-bottom-style: solid; border-bottom-width: 1">
            <p style="margin-top: 4"><font size="5" color="#FFFFFF">Indices</font></td>
            <td width="50%" height="30" style="border-bottom-style: solid; border-bottom-width: 1">
            <p align="right" style="margin-top: 13"><font color="#FFFFFF">
            Virtual Satellite Image Processing and Analysis Lab, IIT Bombay</font></td>
          </tr>
        </table>
        </td>
  	</tr>
	
  	<tr>
    	<td width="806" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="317" height="12%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;Select Image</td>
    	<td width="488" height="12%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
        <select size="1" name="D1" style="width: 170;" value="" onchange ='band(this)'>
  <%if(selected.equals("---select---"))
  {%>
  <option selected>---select---</option>
  <%}
  else
  {%>
  <option>---select---</option>
  <%}
  if(sampleFiles.length>0)
  {
  	for(int i=0;i<sampleFiles.length;i++)
  	{
  		if((((sampleFiles[i]).toLowerCase()).lastIndexOf(".hdr")>0) ||(((sampleFiles[i]).toLowerCase()).lastIndexOf(".tif")>0)||(((sampleFiles[i]).toLowerCase()).lastIndexOf(".ctr")>0) ||(((sampleFiles[i]).toLowerCase()).lastIndexOf(".exe")>0) || (((sampleFiles[i]).toLowerCase()).lastIndexOf(".txt")>0) || (((sampleFiles[i]).toLowerCase()).lastIndexOf((session_user+"").toLowerCase())>0))
  		{}
  		else{
  		if(selected.equals(sampleFiles[i]))
		{%>	
  	  		<option selected><%=selected%></option>
    	<%}
    	else
    	{%>
    		<option><%=sampleFiles[i]%></option>
    	<%}
    	}
    }
  }
  if(files.length>0)
  {
  	for(int i=0;i<files.length;i++)
  	{
  		if((((files[i]).toLowerCase()).lastIndexOf(".hdr")>0)||(((files[i]).toLowerCase()).lastIndexOf(".tif")>0)||(((files[i]).toLowerCase()).lastIndexOf(".ctr")>0)||(((files[i]).toLowerCase()).lastIndexOf(".exe")>0)||(((files[i]).toLowerCase()).lastIndexOf(".txt")>0)||(((files[i]).toLowerCase()).lastIndexOf((session_user+"").toLowerCase())>0))
  		{
  		}
  		else{
  		if(selected.equals(files[i]))
		{%>	
  	  		<option selected><%=selected%></option>
    	<%}
    	else
    	{%>
    		<option><%=files[i]%></option>
    	<%}
    	}
    }
  }%>
</select>&nbsp;
        <a href="javascript:upload()">Upload more images</a></td>
 	</tr>
  
  	<tr>
    	<td width="806" height="2%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="806" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<b><i>Indexing Method 
        and Required Bands</i></b></td>
  	</tr>
  
  	<tr>
    	<td width="317" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
    	<td width="488" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="317" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Operation</td>
    	<td width="488" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	<select size="1" name="D6" value="" onchange='verify1(this)' style="width: 170;">
 			<%if(method.equals("Simple Ratio"))
 			{%> 
				<option selected>Simple Ratio</option>
  			<%}
 			 else
 			 {%>
				<option>Simple Ratio</option>
  			<%}%>
  			<%if(method.equals("Square Root"))
 			{%> 
				<option selected>Square Root</option>
  			<%}
 			 else
 			 {%>
				<option>Square Root</option>
  			<%}%>
  			<%if(method.equals("Vegetation Index"))
 			{%> 
				<option selected>Vegetation Index</option>
  			<%}
 			 else
 			 {%>
				<option>Vegetation Index</option>
  			<%}%>
			<%if(method.equals("Normalized Difference Vegetation Index"))
 			{%> 
				<option selected>Normalized Difference Vegetation Index</option>
  			<%}
 			 else
 			 {%>
				<option>Normalized Difference Vegetation Index</option>
  			<%}%>
  			<%if(method.equals("Enhanced Vegetation Index"))
 			{%> 
				<option selected>Enhanced Vegetation Index</option>
  			<%}
 			 else
 			 {%>
				<option>Enhanced Vegetation Index</option>
  			<%}%>
			<%if(method.equals("Normalized Difference Water Index"))
 			{%> 
				<option selected>Normalized Difference Water Index</option>
  			<%}
 			 else
 			 {%>
				<option>Normalized Difference Water Index</option>
  			<%}%>
			<%if(method.equals("Soil Adjusted Vegetation Index"))
 			{%> 
				<option selected>Soil Adjusted Vegetation Index</option>
  			<%}
 			 else
 			 {%>
				<option>Soil Adjusted Vegetation Index</option>
  			<%}%>
			<%if(method.equals("Modified Soil Adjusted Vegetation Index"))
 			{%> 
				<option selected>Modified Soil Adjusted Vegetation Index</option>
  			<%}
 			 else
 			 {%>
				<option>Modified Soil Adjusted Vegetation Index</option>
  			<%}%>
			
		 </select>
 		</td>
  	</tr>
  
  	<tr>
    	<td width="317" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<label for="fp2" id="l7">Number 
        Of Rows</label></td>
    	<td width="488" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
            <select size="1" name="D2" value="">
  <%
  try{
  for(int i=1;i<=noband;i++)
  {
  	if(sb1.equals(i+""))
  	{
  		%>
  	<option selected><%=sb1%></option>
  	<%}
  	else
  	{%>
  <option><%=i%></option>
  <%}
  }%>
  </select></td>
  	</tr>
  
  	<tr>
    	<td width="317" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<label for="fp2" id="l6">Number 
        Of Rows</label></td>
    	<td width="488" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
            <select size="1" name="D9" value="">
  <%for(int i=1;i<=noband;i++)
  {
  	if(sb2.equals(i+""))
  	{
  		%>
  	<option selected><%=sb2%></option>
  	<%}
  	else
  	{%>
  <option><%=i%></option>
  <%}
  }%>
  </select></td>
  	</tr>
  
  	<tr>
    	<td width="317" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<label for="fp2" id="l8">Number 
        Of Rows</label></td>
    	<td width="488" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	<select size="1" name="D10" value="">
  <%for(int i=1;i<=noband;i++)
  {
  	if(sb3.equals(i+""))
  	{
  		%>
  	<option selected><%=sb3%></option>
  	<%}
  	else
  	{%>
  <option><%=i%></option>
  <%}
  }
  }
  catch(Exception e)
  {
  }%>
  </select></td>
  	</tr>
  
  	<tr>
    	<td width="806" height="3%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="317" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<b><i>Additional Parameters</i></b></td>
    	<td width="488" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="806" height="2%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="317" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<label for="fp2" id="l2">Number 
        Of Rows</label><input type="hidden" name="h4" style="visibility: hidden;" size="1" id="fp2"></td>
    	<td width="488" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <input type="text" name="T3" size="5" value="<%=p1%>" ></td>
  	</tr>
  
  	<tr>
    	<td width="317" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<label for="fp2" id="l9">Number 
        Of Rows</label></td>
    	<td width="488" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <input type="text" name="T6" size="5" value="<%=p2%>" ></td>
  	</tr>
  
  	<tr>
    	<td width="317" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<label for="fp2" id="l10">Number 
        Of Rows</label></td>
    	<td width="488" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <input type="text" name="T7" size="5" value="<%=p3%>" ></td>
  	</tr>
  
  	<tr>
    	<td width="317" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<label for="fp1" id="l1">Number 
        Of Columns</label><input type="hidden" name="h1" style="visibility: hidden;" size="1" id="fp1"></td>
    	<td width="488" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <input type="text" name="T2" size="5" value="<%=p4%>" ></td>
  	</tr>
  
	<tr>
    	<td width="806" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  </td>
 	</tr>
	<tr>
    	<td width="806" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        &nbsp;</td>
 	</tr>
 	
	<tr>
    	<td width="806" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        &nbsp;<input type="button" value="Process" name="B1" onclick='process()' style="visibility:visible; height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" ></p>
        </td>
 	</tr>
 	
	<tr>
    	<td width="806" height="0%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        &nbsp;</td>
 	</tr>
	</table>
</form>
</div>
<%}
catch(Exception e)
{
}
out.println(t2+"");%>
<script language = "javascript" >

if(document.form1.D6.value=="Simple Ratio")
{
  		this.document.getElementById("l7").innerHTML="Choose Band 1";
  		this.document.getElementById("l6").innerHTML="Choose Band 2";
  		this.document.getElementById("l8").innerHTML="Not Required";
  		
  		document.form1.D10.disabled=true;
  		document.form1.T3.disabled=true;
  		this.document.getElementById("l2").innerHTML="Not Required";
  		this.document.getElementById("l9").innerHTML="Not Required";
  		this.document.getElementById("l10").innerHTML="Not Required";
  		this.document.getElementById("l1").innerHTML="Not Required";
  		document.form1.T6.disabled=true;
  		document.form1.T7.disabled=true;
  		document.form1.T2.disabled=true;	
			
		
		
  	}
  	else if(document.form1.D6.value=="Normalized Difference Water Index")
  	{
  		this.document.getElementById("l7").innerHTML="Choose NIR Band";
  		this.document.getElementById("l6").innerHTML="Choose SWIR Band";
  		this.document.getElementById("l8").innerHTML="Not Required";
  		
  		document.form1.D10.disabled=true;
  		document.form1.T3.disabled=true;
  		this.document.getElementById("l2").innerHTML="Not Required";
  		this.document.getElementById("l9").innerHTML="Not Required";
  		this.document.getElementById("l10").innerHTML="Not Required";
  		this.document.getElementById("l1").innerHTML="Not Required";
  		document.form1.T6.disabled=true;
  		document.form1.T7.disabled=true;
  		document.form1.T2.disabled=true;	
		
		
  	}
  	else if(document.form1.D6.value=="Enhanced Vegetation Index")
  	{
  		this.document.getElementById("l7").innerHTML="Choose Red Band";
  		this.document.getElementById("l6").innerHTML="Choose NIR Band";
  		this.document.getElementById("l8").innerHTML="Choose Blue Band";
  		
  		document.form1.D10.disabled=false;
  		document.form1.T3.disabled=false;
  		this.document.getElementById("l2").innerHTML="Gain Factor (e.g. 2.5)";
  		this.document.getElementById("l9").innerHTML="Canopy Background Adjustment (e.g. 1)";
  		this.document.getElementById("l10").innerHTML="Coefficient of Aerosol Resistance(C1) (e.g. 6)";
  		this.document.getElementById("l1").innerHTML="Coefficient of Aerosol Resistance(C2) (e.g. 7.5)";
  		document.form1.T6.disabled=false;
  		document.form1.T7.disabled=false;
  		document.form1.T2.disabled=false;	
			
		
		
  	}
  	else if(document.form1.D6.value=="Soil Adjusted Vegetation Index")
  	{
  		this.document.getElementById("l7").innerHTML="Choose Red Band";
  		this.document.getElementById("l6").innerHTML="Choose NIR Band";
  		this.document.getElementById("l8").innerHTML="Not Required";
  		
  		document.form1.D10.disabled=true;
  		document.form1.T3.disabled=false;
  		this.document.getElementById("l2").innerHTML="Soil Brightness Correction Factor (Range:0 to 1)";
  		this.document.getElementById("l9").innerHTML="Not Required";
  		this.document.getElementById("l10").innerHTML="Not Required";
  		this.document.getElementById("l1").innerHTML="Not Required";
  		document.form1.T6.disabled=true;
  		document.form1.T7.disabled=true;
  		document.form1.T2.disabled=true;	
		
		
  	}
  	else
  	{
  		this.document.getElementById("l7").innerHTML="Choose Red Band";
  		this.document.getElementById("l6").innerHTML="Choose NIR Band";
  		this.document.getElementById("l8").innerHTML="Not Required";
  		
  		document.form1.D10.disabled=true;
  		document.form1.T3.disabled=true;
  		this.document.getElementById("l2").innerHTML="Not Required";
  		this.document.getElementById("l9").innerHTML="Not Required";
  		this.document.getElementById("l10").innerHTML="Not Required";
  		this.document.getElementById("l1").innerHTML="Not Required";
  		document.form1.T6.disabled=true;
  		document.form1.T7.disabled=true;
  		document.form1.T2.disabled=true;
  			
		
		
  	}
function band(list)
  {
 
  	if(document.form1.D1.value=="---select---")
  	{
  		
  		alert("choose an image.");
  		
  	}
  	else
  	{
  	document.form1.bnd.value="1";
  	
  	document.form1.action="e8.jsp";
  	document.form1.submit();
  	
  	}
  	return;
  	
  }
function upload()
{
document.form1.prevurl.value=location.href;
    	//alert(document.form1.prevurl.value);
	document.form1.action="MultipleUploads.jsp";
	document.form1.submit();
}
 
  function verify1()
  {
  	
   	if(document.form1.D6.value=="Simple Ratio")
	{
  		this.document.getElementById("l7").innerHTML="Choose Band 1";
  		this.document.getElementById("l6").innerHTML="Choose Band 2";
  		this.document.getElementById("l8").innerHTML="Not Required";
  		
  		document.form1.D10.disabled=true;
  		document.form1.T3.disabled=true;
  		this.document.getElementById("l2").innerHTML="Not Required";
  		this.document.getElementById("l9").innerHTML="Not Required";
  		this.document.getElementById("l10").innerHTML="Not Required";
  		this.document.getElementById("l1").innerHTML="Not Required";
  		document.form1.T6.disabled=true;
  		document.form1.T7.disabled=true;
  		document.form1.T2.disabled=true;	
			
		
		
  	}
  	else if(document.form1.D6.value=="Normalized Difference Water Index")
  	{
  		this.document.getElementById("l7").innerHTML="Choose NIR Band";
  		this.document.getElementById("l6").innerHTML="Choose SWIR Band";
  		this.document.getElementById("l8").innerHTML="Not Required";
  		
  		document.form1.D10.disabled=true;
  		document.form1.T3.disabled=true;
  		this.document.getElementById("l2").innerHTML="Not Required";
  		this.document.getElementById("l9").innerHTML="Not Required";
  		this.document.getElementById("l10").innerHTML="Not Required";
  		this.document.getElementById("l1").innerHTML="Not Required";
  		document.form1.T6.disabled=true;
  		document.form1.T7.disabled=true;
  		document.form1.T2.disabled=true;	
		
		
  	}
  	else if(document.form1.D6.value=="Enhanced Vegetation Index")
  	{
  		this.document.getElementById("l7").innerHTML="Choose Red Band";
  		this.document.getElementById("l6").innerHTML="Choose NIR Band";
  		this.document.getElementById("l8").innerHTML="Choose Blue Band";
  		
  		document.form1.D10.disabled=false;
  		document.form1.T3.disabled=false;
  		this.document.getElementById("l2").innerHTML="Gain Factor (e.g. 2.5)";
  		this.document.getElementById("l9").innerHTML="Canopy Background Adjustment (e.g. 1)";
  		this.document.getElementById("l10").innerHTML="Aerosol Resistance Coefficient(C1) (e.g. 6)";
  		this.document.getElementById("l1").innerHTML="Aerosol Resistance Coefficient(C2) (e.g. 7.5)";
  		document.form1.T6.disabled=false;
  		document.form1.T7.disabled=false;
  		document.form1.T2.disabled=false;	
			
		
		
  	}
  	else if(document.form1.D6.value=="Soil Adjusted Vegetation Index")
  	{
  		this.document.getElementById("l7").innerHTML="Choose Red Band";
  		this.document.getElementById("l6").innerHTML="Choose NIR Band";
  		this.document.getElementById("l8").innerHTML="Not Required";
  		
  		document.form1.D10.disabled=true;
  		document.form1.T3.disabled=false;
  		this.document.getElementById("l2").innerHTML="Soil Brightness Correction Factor (Range:0 to 1)";
  		this.document.getElementById("l9").innerHTML="Not Required";
  		this.document.getElementById("l10").innerHTML="Not Required";
  		this.document.getElementById("l1").innerHTML="Not Required";
  		document.form1.T6.disabled=true;
  		document.form1.T7.disabled=true;
  		document.form1.T2.disabled=true;	
		
		
  	}
  	else
  	{
  		this.document.getElementById("l7").innerHTML="Choose Red Band";
  		this.document.getElementById("l6").innerHTML="Choose NIR Band";
  		this.document.getElementById("l8").innerHTML="Not Required";
  		
  		document.form1.D10.disabled=true;
  		document.form1.T3.disabled=true;
  		this.document.getElementById("l2").innerHTML="Not Required";
  		this.document.getElementById("l9").innerHTML="Not Required";
  		this.document.getElementById("l10").innerHTML="Not Required";
  		this.document.getElementById("l1").innerHTML="Not Required";
  		document.form1.T6.disabled=true;
  		document.form1.T7.disabled=true;
  		document.form1.T2.disabled=true;
  			
		
		
  	}

  }
  
  function process()
  {
  	if(document.form1.D1.value=="---select---")
  	{
  		alert("Please, First select an image");
  	}
  	else if(document.form1.D6.value=="Soil Adjusted Vegetation Index")
  	{
  		var p=parseFloat(document.form1.T3.value);
  		
  			if((p>=0)&&(p<=1))
	  		{
 		 		document.form1.bnd.value="0";

	  			document.form1.indexing.value="1";
  				document.form1.action="e8.jsp";
  				document.form1.submit();
  			}
  			else
  			{
  				alert("Soil Brightness Correction Factor should be between 0 and 1, inclusive of 0 and 1. Please try with correct values.");
  			}
  		  		
  	}
  	else
  	{
  				
					document.form1.indexing.value="1";
					document.form1.bnd.value="0";
					document.form1.action="e8.jsp";
					document.form1.submit();
	}
	
	
  }

if(document.form1.generate.value=="1")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "out_band_exp8.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult1");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "image_name");
    hiddenField.setAttribute("value", document.form1.D1.value);
    hiddenField.setAttribute("type", "hidden");
     form.appendChild(hiddenField);
     var mt="";
     mt=document.form1.D6.value;
    
 var hiddenField1 = document.createElement("input");              
    hiddenField1.setAttribute("name", "method");
    hiddenField1.setAttribute("value", mt);
    hiddenField1.setAttribute("type", "hidden");
     form.appendChild(hiddenField1);

    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("out_band_exp8.html", 'formresult1', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}

if(document.form1.generate.value=="1")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "output_exp8.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "image_name");
    hiddenField.setAttribute("value", document.form1.D1.value);
    hiddenField.setAttribute("type", "hidden");
     form.appendChild(hiddenField);
 var mt="";
     mt=document.form1.D6.value;
    
 var hiddenField1 = document.createElement("input");              
    hiddenField1.setAttribute("name", "method");
    hiddenField1.setAttribute("value", mt);
    hiddenField1.setAttribute("type", "hidden");
     form.appendChild(hiddenField1);


    
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("output_exp8.html", 'formresult', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}


                  </script>

</body>

</html>