<%@ page language = "java" import = "java.io.*, java.awt.*, javax.imageio.*, imageprocessing.*,java.awt.image.*;" %>

<html>
<%
ReadImage ri=null;
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
String w1="0";
String w2="0";
String h1="0";
String h2="0";


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


if(request.getParameter("bnd")!=null)
{
	if((request.getParameter("bnd")+"").equals("1"))
 	{
 		band=0;
 	//	disable="disabled";
 		gen="0";
 		sb1="";
 		if(true)
 		{
 			String noOfband[];
 			
 			
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



 		/*	if(selected.equals("inputimage"))
 			{
 				noband=6;
 			}
 			else
 			{
 			      if(selected.lastIndexOf('.')>0)
 				    {//jpg=1;
		 		//	    out.println("vd");
		 		try{
					BufferedImage img=ImageIO.read(new File("c:/uploads/"+session_user+"/"+selected));
		 			tp=img.getType();
		 			if(tp==10||tp==11||tp==13)
		 			{
		 				jp=1;
		 				noband=1;
		 			}
		 			else
		 			{
		 				noband=3;
		 			}
		 		}
		 		catch(Exception e)
		 		{}
 				}
				else
				{
 					try{
 					
						FileInputStream fs1=new FileInputStream("c:/uploads/"+session_user+"/"+selected+".hdr");
						DataInputStream in1 =new DataInputStream(fs1);
						BufferedReader br1=new BufferedReader(new InputStreamReader(in1));
						while((sline1=br1.readLine())!=null)
						{//out.println(sline);
	
								noOfband=sline1.split("=");
								if(noOfband.length==2)
								{
								     if(((noOfband[0]).trim()).compareToIgnoreCase("bands")==0)
								     {
										noband=Integer.parseInt(noOfband[1].trim());
										break;
									}
								}		
						}
					}catch(Exception e)
					{
				//	out.println(e.toString());
					}
				}
			}*/
 		}
 		sb1="1";
 		
 	}
 	
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
	{//out.println(e.toString());
	}
try{

if((request.getParameter("D1")!=null)&&(!(request.getParameter("bnd")).equals("1")))
{
noband=Integer.parseInt(request.getParameter("noofband"));	
init=request.getParameter("D1");
	selected=init;
	
if(request.getParameter("D2")!=null)	
{	sb1=request.getParameter("D2");
}
if(request.getParameter("D6")!=null)	
{	method=request.getParameter("D6");
}
if(request.getParameter("D7")!=null)	
{	btype=request.getParameter("D7");
}
if(request.getParameter("D8")!=null)	
{	setype=request.getParameter("D8");
}

if((request.getParameter("kernel")).equals("1"))
{
	if(method.equals("Hit or Miss Transform"))
	{
		w2=request.getParameter("T6");
		h2=request.getParameter("T7");

	}
	disable_filter="disabled";
w1=request.getParameter("T3");
h1=request.getParameter("T2");
maketable=1;

}
if((request.getParameter("filter")).equals("1"))
{
	//init=request.getParameter("D1");
//	selected=init;
//	sb1=request.getParameter("D2");
//	sb2=request.getParameter("D3");
//	sb3=request.getParameter("D4");
w1=request.getParameter("T3");
h1=request.getParameter("T2");
w2=request.getParameter("T6");
h2=request.getParameter("T7");

	
	
	
	PrintStream ps=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/param.txt",false));
	System.setOut(ps);
	System.out.println("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");

	if(selected.equals(init))
	{
		System.out.println("C:/uploads/common/" + init);	
	}
	else
	{
		System.out.println("C:/uploads/" +session_user+"/" + init);	
	}
	System.out.println(sb1);
	if(method.equals("Hit or Miss Transform"))
	{
		System.out.println("Hitormiss transform");
	}
	else
	{
		System.out.println(method);
	}
	
	if(method.equals("Boundary Detection"))
	{
		System.out.println(btype);
	}
	String temp="";
	if(method.equals("Hit or Miss Transform"))
	{
		System.out.println(w1);
		System.out.println(h1);
		System.out.println(w2);
		System.out.println(h2);
		PrintStream ps1=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/strel1.txt",false));
		System.setOut(ps1);
		for(int i=1;i<=Integer.parseInt(w1);i++)
		{
			for(int j=1;j<=Integer.parseInt(h1);j++)
			{
				if(request.getParameter("tone"+i+""+j)!=null)
				{
					temp="1";				
				}
				else
				{
					temp="0";
				}
				System.out.print(temp+" ");
			}
			System.out.println("");
		}
		PrintStream ps2=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/strel2.txt",false));
		System.setOut(ps2);
		for(int i=1;i<=Integer.parseInt(w2);i++)
		{
			for(int j=1;j<=Integer.parseInt(h2);j++)
			{
				if(request.getParameter("ttwo"+i+""+j)!=null)
				{
					temp="1";
				}
				else
				{
					temp="0";
				}
				System.out.print(temp+" ");
			}
			System.out.println("");
		}
	}
	else if(setype.equals("Custom"))
	{
		System.out.println("CreateStructuralElement");
		System.out.println(h1);
		System.out.println(w1);
		PrintStream ps1=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/strel1.txt",false));
		System.setOut(ps1);
		for(int i=1;i<=Integer.parseInt(w1);i++)
		{
			for(int j=1;j<=Integer.parseInt(h1);j++)
			{
				if(request.getParameter("tone"+i+""+j)!=null)
				{
					temp="1";
				}
				else
				{
					temp="0";
				}
				System.out.print(temp+" ");
			}
			System.out.println("");
		}
		PrintStream ps2=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/strel2.txt",false));
		System.setOut(ps2);
		
	}
	else
	{
		System.out.println(setype);
		System.out.println(w1);
		System.out.println(h1);
		PrintStream ps1=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/strel1.txt",false));
		System.setOut(ps1);
		PrintStream ps2=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/strel2.txt",false));
		System.setOut(ps2);


	}
				
	Process pr= Runtime.getRuntime().exec("C:\\VSIP\\morphology.exe C:\\uploads\\"+session_user+"\\param.txt" + " C:\\uploads\\"+session_user+"\\strel1.txt" + " C:\\uploads\\"+session_user+"\\strel2.txt");
	pr.waitFor();
	pr.destroy();
	error_msg="error in image processing";
	filter=0;
	display=1;
	disable_filter="";
	
	gen="1";
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
<title>Experiment 7: Mathematical Morphology</title>
</head>

<body bgcolor="#E1F1FB">



<form name="form1" method="POST" action="--WEBBOT-SELF--">
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
<input type="hidden" name="filter" value="0">
<input type="hidden" name="kernel" value="0">

<%//out.println(""+request.getParameter("D1"));%>
<p align="center">

<table id="cnt1" border="1" cellspacing="0" width="849"  cellpadding="0" style="border-style:solid; border-collapse: collapse" bordercolor="#9999FF" height="1" >

	<tr>
    	<td width="100%" height="1" colspan="4" style="border-left:1px none #9999FF; border-right:1px none #9999FF; background-repeat: repeat-x; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" valign="top" bgcolor="#0E92E4" height="2">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="1">
          <tr>
            <td width="50%" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
            <p style="margin-top: 0; margin-bottom:0"><font size="5" color="#FFFFFF">Mathematical Morphology</font></td>
            <td width="50%" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
            <p align="right" style="margin-top: 0; margin-bottom:0"><font color="#FFFFFF">
            Virtual Satellite Image Processing and Analysis Lab, IIT Bombay</font></td>
          </tr>
        </table>
        </td>
  	</tr>
  	
  
  	<tr>
    	<td width="806" height="1" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="242" height="1" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;Select Image</td>
    	<td width="604" height="1" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
        <p style="margin-top: 0; margin-bottom: 0">
        <select size="1" name="D1" style="width: 170;" value="" onchange ='band(this)' <%=disable_filter%>>
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
  		if((((sampleFiles[i]).toLowerCase()).lastIndexOf(".hdr")>0)||(((sampleFiles[i]).toLowerCase()).lastIndexOf(".tif")>0) ||(((sampleFiles[i]).toLowerCase()).lastIndexOf(".ctr")>0) ||(((sampleFiles[i]).toLowerCase()).lastIndexOf(".exe")>0) || (((sampleFiles[i]).toLowerCase()).lastIndexOf(".txt")>0) || (((sampleFiles[i]).toLowerCase()).lastIndexOf((session_user+"").toLowerCase())>0))
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
    	<td width="242" height="1" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;Select Band</td>
    	<td width="604" height="1" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">  <select size="1" name="D2" value="" <%=disable_filter%>>
  <%for(int i=1;i<=noband;i++)
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
    	<td width="242" height="1" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;</td>
    	<td width="604" height="1" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	<p style="margin-top: 0; margin-bottom: 0">&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="242" height="19" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;<b><i>Morphology 
        operations</i></b></td>
    	<td width="604" height="19" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	<p style="margin-top: 0; margin-bottom: 0">&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="242" height="24" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;Operation</td>
    	<td width="604" height="24" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	<p style="margin-top: 0; margin-bottom: 0">  
        	<select size="1" name="D6" value="" onchange='verify1(this)' style="width: 170;" <%=disable_filter%>>
 			<%if(method.equals("Erode"))
 			{%> 
				<option selected>Erode</option>
  			<%}
 			 else
 			 {%>
				<option>Erode</option>
  			<%}%>
			<%if(method.equals("Dilate"))
 			{%> 
				<option selected>Dilate</option>
  			<%}
 			 else
 			 {%>
				<option>Dilate</option>
  			<%}%>
			<%if(method.equals("Opening"))
 			{%> 
				<option selected>Opening</option>
  			<%}
 			 else
 			 {%>
				<option>Opening</option>
  			<%}%>
			<%if(method.equals("Closing"))
 			{%> 
				<option selected>Closing</option>
  			<%}
 			 else
 			 {%>
				<option>Closing</option>
  			<%}%>
			<%if(method.equals("Top-hat filtering"))
 			{%> 
				<option selected>Top-hat filtering</option>
  			<%}
 			 else
 			 {%>
				<option>Top-hat filtering</option>
  			<%}%>
			<%if(method.equals("Boundary Detection"))
 			{%> 
				<option selected>Boundary Detection</option>
  			<%}
 			 else
 			 {%>
				<option>Boundary Detection</option>
  			<%}%>
  			<%if(method.equals("Hit or Miss Transform"))
 			{%> 
				<option selected>Hit or Miss Transform</option>
  			<%}
 			 else
 			 {%>
				<option>Hit or Miss Transform</option>
  			<%}%>
			

		 </select>
 		</td>
  	</tr>
  
  	<tr>
    	<td width="242" height="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;Boundary Detection 
        Method</td>
    	<td width="604" height="3" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	<p style="margin-top: 0; margin-bottom: 0">  
        	<select size="1" name="D7" value="" onchange='verify1(this)' style="width: 170;" <%=disable_filter%>>
 			<%if(btype.equals("Dilation-Erosion"))
 			{%> 
				<option selected>Dilation-Erosion</option>
  			<%}
 			 else
 			 {%>
				<option>Dilation-Erosion</option>
  			<%}%>
			<%if(btype.equals("Dilation-Original image"))
 			{%> 
				<option selected>Dilation-Original image</option>
  			<%}
 			 else
 			 {%>
				<option>Dilation-Original image</option>
  			<%}%>
			<%if(btype.equals("Original image-Erosion"))
 			{%> 
				<option selected>Original image-Erosion</option>
  			<%}
 			 else
 			 {%>
				<option>Original image-Erosion</option>
  			<%}%>
			
			

		 </select></td>
  	</tr>
  
  	<tr>
    	<td width="806" height="1" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="242" height="1" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;<b><i>Structuring 
        Element</i></b></td>
    	<td width="604" height="1" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="242" height="1" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;Select Structuring 
        Element</td>
    	<td width="604" height="1" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	<p style="margin-top: 0; margin-bottom: 0">  
        	<select size="1" name="D8" value="" onchange='verify2(this)' <%=disable_filter%>>
 			<%if(setype.equals("Square"))
 			{%> 
				<option selected>Square</option>
  			<%}
 			 else
 			 {%>
				<option>Square</option>
  			<%}%>
			<%if(setype.equals("Rectangle"))
 			{%> 
				<option selected>Rectangle</option>
  			<%}
 			 else
 			 {%>
				<option>Rectangle</option>
  			<%}%>
			<%if(setype.equals("Line"))
 			{%> 
				<option selected>Line</option>
  			<%}
 			 else
 			 {%>
				<option>Line</option>
  			<%}%>
			<%if(setype.equals("Diamond"))
 			{%> 
				<option selected>Diamond</option>
  			<%}
 			 else
 			 {%>
				<option>Diamond</option>
  			<%}%>
			<%if(setype.equals("Custom"))
 			{%> 
				<option selected>Custom</option>
  			<%}
 			 else
 			 {%>
				<option>Custom</option>
  			<%}%>
		
		 </select></td>
  	</tr>
  
  	<tr>
    	<td width="805" height="1" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="321" height="1" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;<b><label for="fp3"><i>Dimensions of 
        Structuring Element for Object&nbsp;&nbsp; Extraction</i></label></b><input type="hidden" name="hh5" style="visibility: hidden;" size="1" id="fp3" ></td>
    	<td width="484" height="1" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">  <b>  <i>Dimensions of 
        Structuring Element for Background Extraction</i></b></td>
  	</tr>
  
  	<tr>
    	<td width="242" height="20" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;<label for="fp2" id="l2">Number 
        Of Rows</label><input type="hidden" name="h4" style="visibility: hidden;" size="1" id="fp2"></td>
    	<td width="119" height="20" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">  
        <input type="text" name="T3" size="5" value="<%=w1%>" <%=disable_filter%>></td>
    	<td width="159" height="20" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
        <p style="margin-top: 0; margin-bottom: 0"><label for="fp5">No. of Rows in SE</label><label for="fp5" id="l4"> </label><input type="hidden" name="h5" style="visibility: hidden;" size="1" id="fp5" ></td>
    	<td width="324" height="20" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        <p style="margin-top: 0; margin-bottom: 0">    
        <input type="text" name="T6" size="5" value="<%=w2%>" <%=disable_filter%>></td>
  	</tr>
  
  	<tr>
    	<td width="242" height="21" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;<label for="fp1" id="l1">Number 
        Of Columns</label><input type="hidden" name="h1" style="visibility: hidden;" size="1" id="fp1"></td>
    	<td width="119" height="21" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">  
        <input type="text" name="T2" size="5" value="<%=h1%>" <%=disable_filter%>></td>
    	<td width="159" height="21" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">  <label for="fp6">No. of Columns in SE</label><label for="fp6" id="l5"> </label><input type="hidden" name="h6" style="visibility: hidden;" size="1" id="fp6" ></td>
    	<td width="324" height="21" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        <p style="margin-top: 0; margin-bottom: 0">    
        <input type="text" name="T7" size="5" value="<%=h2%>" <%=disable_filter%>></td>
  	</tr>
  
	<tr>
    	<td width="806" height="1" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">  </td>
 	</tr>
	<tr>
    	<td width="806" height="1" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;</td>
 	</tr>
 	<%if(maketable==1)
 	{%>
	<tr>
    	<td width="806" height="1" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
        <p style="margin-top: 0; margin-bottom: 0"><b><i> Tick The Elements of Structuring Element for Object Extraction</i></b></br></br>  
        &nbsp;
        <%for(int i=1;i<=(Integer.parseInt(w1));i++)
          {
          	for(int j=1;j<=(Integer.parseInt(h1));j++)
            {
            %>
            	<input type="checkbox" id="tone<%=(i+""+j)%>" name="tone<%=(i+""+j)%>" value="ON">
            <%}
            %> </br>&nbsp;

            <%
           }%>
        </td>
 	</tr>
 		<%if(method.equals("Hit or Miss Transform"))
 		{
 		%>
 			<tr>
    		  	<td width="806" height="1" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
                <p style="margin-top: 0; margin-bottom: 0"><b><i> Tick The Elements of Structuring Element for Background Extraction</i></b></br></br>  
  			      &nbsp;
  			      <%for(int i=1;i<=(Integer.parseInt(w2));i++)
  			        {
          				for(int j=1;j<=(Integer.parseInt(h2));j++)
            				{
            				%>
            					<input type="checkbox" id="ttwo<%=(i+""+j)%>" name="ttwo<%=(i+""+j)%>" value="ON">
            				<%}
            				%>
            			</br>&nbsp;

            		<%
           			}%>
       			 </td>
 			</tr>
 		<%}%>
 	<%}%>
	<tr>
    	<td width="806" height="27" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;<input type="button" value="Process" name="B1" onclick='process()' style="visibility:visible; height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" ></p>
        <p style="margin-top: 0; margin-bottom: 0"></p>
        </td>
 	</tr>
	<tr>
    	<td width="806" height="17" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <p style="margin-top: 0; margin-bottom: 0">&nbsp;</td>
 	</tr>
	</table>
</form>
</div>

<script language = "javascript" >
if(document.form1.D1.disabled==false)
{

	if(document.form1.D8.value=="Square")
  	{
  		
  		this.document.getElementById("l2").innerHTML="Width of SE";
  		this.document.getElementById("l1").innerHTML="Height of SE";
  		
  		
  		document.form1.T3.value="3";
  		document.form1.T2.disabled=true;
  	
  		
  	}
  	else if(document.form1.D8.value=="Rectangle")
    {
    	this.document.getElementById("l2").innerHTML="No. of Rows in SE";
  		this.document.getElementById("l1").innerHTML="No. of Columns in SE";
  		
  		
  		document.form1.T3.value="3";
  		document.form1.T2.value="3";
  		
  		
  		document.form1.T2.disabled=false;
  		
   	}
   	else if(document.form1.D8.value=="Line")
    {
    	this.document.getElementById("l2").innerHTML="Length of SE";
  		this.document.getElementById("l1").innerHTML="Angle of SE (in degrees)";
  		
  		
  		document.form1.T3.value="3";
  		document.form1.T2.value="0";
  
  		document.form1.T2.disabled=false;
  	
   	}
   	else if(document.form1.D8.value=="Diamond")
    {
    	this.document.getElementById("l2").innerHTML="Distance From Centre of SE";
  		this.document.getElementById("l1").innerHTML="Not Required";
  		
  		
  		document.form1.T3.value="3";
  		document.form1.T2.value="0";
  
  		document.form1.T2.disabled=true;

   	}
   	else if(document.form1.D8.value=="Custom")
    {
    	this.document.getElementById("l2").innerHTML="Width of SE";
  		this.document.getElementById("l1").innerHTML="Height of SE";
  		
  		
  		document.form1.T3.value="3";
  		document.form1.T2.value="3";
  
  		document.form1.T2.disabled=false;

   	}
   	
   	if(document.form1.D6.value=="Boundary Detection")
  	{
  		document.form1.D7.disabled=false;
  		document.form1.T6.disabled=true;
		document.form1.T7.disabled=true;
			document.form1.D8.disabled=false;

		
  	}
   	else if(document.form1.D6.value=="Hit or Miss Transform")
 	{
		document.form1.D7.disabled=true;
		document.form1.T6.disabled=false;
		document.form1.T7.disabled=false;
			document.form1.D8.disabled=true;
			document.form1.T2.disabled=false;
			this.document.getElementById("l2").innerHTML="No. of Rows in SE";
  		this.document.getElementById("l1").innerHTML="No. of Columns in SE";
  		


  	}
  	else
  	{
  			document.form1.D8.disabled=false;

  		document.form1.D7.disabled=true;
  		document.form1.T6.disabled=true;
		document.form1.T7.disabled=true;
		
  	}


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
  	
  	document.form1.action="e7.jsp";
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
 
  function verify2()
  {
  	if(document.form1.D8.value=="Square")
  	{
  		
  		this.document.getElementById("l2").innerHTML="Width of SE";
  		this.document.getElementById("l1").innerHTML="Height of SE";
  		
  		
  		document.form1.T3.value="3";
  		document.form1.T2.disabled=true;
  	
  		
  	}
  	else if(document.form1.D8.value=="Rectangle")
    {
    	this.document.getElementById("l2").innerHTML="No. of Rows in SE";
  		this.document.getElementById("l1").innerHTML="No. of Columns in SE";
  		
  		
  		document.form1.T3.value="3";
  		document.form1.T2.value="3";
  		
  		
  		document.form1.T2.disabled=false;
  		
   	}
   	else if(document.form1.D8.value=="Line")
    {
    	this.document.getElementById("l2").innerHTML="Length of SE";
  		this.document.getElementById("l1").innerHTML="Angle of SE (in degrees)";
  		
  		
  		document.form1.T3.value="3";
  		document.form1.T2.value="0";
  
  		document.form1.T2.disabled=false;
  	
   	}
   	else if(document.form1.D8.value=="Diamond")
    {
    	this.document.getElementById("l2").innerHTML="Distance From Centre of SE";
  		this.document.getElementById("l1").innerHTML="Not Required";
  		
  		
  		document.form1.T3.value="3";
  		document.form1.T2.value="0";
  
  		document.form1.T2.disabled=true;

   	}
   	else if(document.form1.D8.value=="Custom")
    {
    	this.document.getElementById("l2").innerHTML="Width of SE";
  		this.document.getElementById("l1").innerHTML="Height of SE";
  		
  		
  		document.form1.T3.value="3";
  		document.form1.T2.value="3";
  
  		document.form1.T2.disabled=false;

   	}
   	
   	if(document.form1.D8.value=="Custom")
   	{
   		
   		document.form1.B1.value="Define SE";
   	}
   	else
   	{
   			document.form1.B1.value="Process";
   	}
  }
  function defineker()
  {
  		   	//float r,c;
  	var r=parseFloat(document.form1.T2.value);
  	var c=parseFloat(document.form1.T3.value);
  	if(((r>0)&&(r%2>0))&&((c>0)&&(c%2>0)))
  	{
  		document.form1.bnd.value="0";
document.form1.D1.disabled=false;
  	    document.form1.D2.disabled=false;
  	    document.form1.D3.disabled=false;
  	    document.form1.D4.disabled=false;

  		document.form1.kernel.value="1";
  		document.form1.action="e3.jsp";
  		document.form1.submit();
  	}
  	else
  	{

  		alert("keep window size in odd figures. e.g., 3x3, 5x5, 7x7, etc.");
    }
 	//	document.form1.T3.value="asdf";
  }
  function verify1()
  {
  	if(document.form1.D6.value=="Boundary Detection")
  	{
  		document.form1.D7.disabled=false;
  		document.form1.T6.disabled=true;
		document.form1.T7.disabled=true;
			document.form1.D8.disabled=false;
			
		if(document.form1.D8.value=="Custom")
 	  	{
   		
   			document.form1.B1.value="Define SE";
   		}
   		else
   		{
   			document.form1.B1.value="Process";
   		}
		
  	}
   	else if(document.form1.D6.value=="Hit or Miss Transform")
 	{
		document.form1.D7.disabled=true;
		document.form1.T6.disabled=false;
		document.form1.T7.disabled=false;
			document.form1.D8.disabled=true;
			document.form1.B1.value="Define SE";

  	}
  	else
  	{
  			document.form1.D8.disabled=false;

  		document.form1.D7.disabled=true;
  		document.form1.T6.disabled=true;
		document.form1.T7.disabled=true;
		if(document.form1.D8.value=="Custom")
	   	{
   		
   			document.form1.B1.value="Define SE";
   		}
   		else
   		{
   			document.form1.B1.value="Process";
   		}
  	}
  	
  	if(document.form1.D6.value=="Hit or Miss Transform")
	{
		document.form1.T2.disabled=false;
		this.document.getElementById("l2").innerHTML="No. of Rows in SE";
  		this.document.getElementById("l1").innerHTML="No. of Columns in SE";
  		

	}
	else
	{
		if(document.form1.D8.value=="Square")
	  	{
  		
  			this.document.getElementById("l2").innerHTML="Width of SE";
  			this.document.getElementById("l1").innerHTML="Height of SE";
  		
  		
  			document.form1.T3.value="3";
  			document.form1.T2.disabled=true;
  	
  		
  		}
 	 	else if(document.form1.D8.value=="Rectangle")
    	{
    		this.document.getElementById("l2").innerHTML="No. of Rows in SE";
  			this.document.getElementById("l1").innerHTML="No. of Columns in SE";
  		
  		
  			document.form1.T3.value="3";
  			document.form1.T2.value="3";
  		
  		
  			document.form1.T2.disabled=false;
  		
   		}
  	 	else if(document.form1.D8.value=="Line")
    	{
    		this.document.getElementById("l2").innerHTML="Length of SE";
  			this.document.getElementById("l1").innerHTML="Angle of SE (in degrees)";
  		
  		
  			document.form1.T3.value="3";
  			document.form1.T2.value="0";
  
  			document.form1.T2.disabled=false;
  	
 	  	}
   		else if(document.form1.D8.value=="Diamond")
    	{
    		this.document.getElementById("l2").innerHTML="Distance From Centre of SE";
  			this.document.getElementById("l1").innerHTML="Not Required";
  		
  		
  			document.form1.T3.value="3";
  			document.form1.T2.value="0";
  
  			document.form1.T2.disabled=true;

   		}
   		else if(document.form1.D8.value=="Custom")
    	{
    		this.document.getElementById("l2").innerHTML="Width of SE";
  			this.document.getElementById("l1").innerHTML="Height of SE";
  		
  		
  			document.form1.T3.value="3";
  			document.form1.T2.value="3";
  
	  		document.form1.T2.disabled=false;

   		}

		
	}
  }
  
  function process()
  {
  	if(document.form1.D1.value=="---select---")
  	{
  		alert("Please, First selet an image");
  	}
  	else if(document.form1.B1.value=="Define SE")
  	{
  		var w1=parseInt(document.form1.T2.value);
  		var h1=parseInt(document.form1.T3.value);
  		
  		if(document.form1.D6.value=="Hit or Miss Transform")
  		{
			var w2=parseInt(document.form1.T6.value);
  			var h2=parseInt(document.form1.T7.value);
			if((w1>0)&&(h1>0)&&(w2>0)&&(h2>0))
	  		{
 		 		document.form1.bnd.value="0";

	  			document.form1.kernel.value="1";
  				document.form1.action="e7.jsp";
  				document.form1.submit();
  			}
  			else
  			{
  				alert("Width's and Height's should be greater than 0. Please try with correct values.");
  			}
  		  		
  		}
  		else if((w1>0)&&(h1>0))
  		{
 	 		document.form1.bnd.value="0";
			

	  		document.form1.kernel.value="1";
  			document.form1.action="e7.jsp";
  			document.form1.submit();
  		}
  		else
  		{
  			alert("Width and Height should be greater than 0. Please try with correct values.");
  		}

  	}
  	else
  	{
  		
  		var w1=parseInt(document.form1.T3.value);
	  	var h1=parseInt(document.form1.T2.value);
  	
  		var w2=parseInt(document.form1.T6.value);
  		var h2=parseInt(document.form1.T7.value);
		//document.write(r1);
		if(document.form1.D6.value=="Hit or Miss Transform")
		{
			var count=0;
			for(var i=1;i<=w1;i++)
			{
				for(var j=1;j<=h1;j++)
				{
					if(this.document.getElementById("tone"+i+""+j).checked==true)
					{
					count++;
					}
				}
			}
			if(count==0)
			{
				alert("atleast one element of SE should be checked in SE for object extraction. please try again.");
			}
			else
			{
				count=0;
				for(var i=1;i<=w2;i++)
				{
					for(var j=1;j<=h2;j++)
					{
						if(this.document.getElementById("ttwo"+i+""+j).checked==true)
						{
						count++;
						}
					}
				}
				if(count==0)
				{
					alert("atleast one element of SE should be checked in SE for background extraction. please try again.");
				}
				else
				{
					document.form1.D1.disabled=false;
					document.form1.T6.disabled=false;
					document.form1.T3.disabled=false;
					document.form1.T2.disabled=false;
					document.form1.T7.disabled=false;
					document.form1.D2.disabled=false;
					document.form1.D6.disabled=false;
					document.form1.D7.disabled=false;
					document.form1.D8.disabled=false;
					document.form1.filter.value="1";
					document.form1.bnd.value="0";
					document.form1.action="e7.jsp";
					document.form1.submit();
				}
			}
			
		}	
		else if(document.form1.D8.value=="Custom")	
		{
			var count=0;
			for(var i=1;i<=w1;i++)
			{
				for(var j=1;j<=h1;j++)
				{
					if(this.document.getElementById("tone"+i+""+j).checked==true)
					{
					count++;
					}
				}
			}
			if(count==0)
			{
				alert("atleast one element of SE should be checked in SE for object extraction. please try again.");
			}
			else
			{
				document.form1.D1.disabled=false;
				document.form1.T6.disabled=false;
				document.form1.T3.disabled=false;
				document.form1.T2.disabled=false;
				document.form1.T7.disabled=false;
				document.form1.D2.disabled=false;
				document.form1.D6.disabled=false;
				document.form1.D7.disabled=false;
				document.form1.D8.disabled=false;
				document.form1.filter.value="1";
				document.form1.bnd.value="0";
				document.form1.action="e7.jsp";
				document.form1.submit();

			}
		}
		else
		{
			if((document.form1.D8.value=="Square")&&(w1<=0))
			{
				alert("Width of Structuring Element should be greater than 0. Please try again.");
			}
			else if((document.form1.D8.value=="Rectangle")&&((w1<=0)||(h1<=0)))
			{
				if(w1<=0)
				{
					alert("No. of rows in SE should be greater than 0. Please try again.");
				}
				else
				{
					alert("No. of columns in SE should be greater than 0. Please try again.");
				}
			}
			else if((document.form1.D8.value=="Line")&&(w1<=0))
			{
					alert("Length of SE should be greater than 0. Please try again.");
				
			}
			else if((document.form1.D8.value=="Diamond")&&(w1<=0))
			{
				alert("Distance from centre of Structuring Element should be greater than 0. Please try again.");
			}
			else
			{
				document.form1.D1.disabled=false;
				document.form1.T6.disabled=false;
				document.form1.T3.disabled=false;
				document.form1.T2.disabled=false;
				document.form1.T7.disabled=false;
				document.form1.D2.disabled=false;
				document.form1.D6.disabled=false;
				document.form1.D7.disabled=false;
				document.form1.D8.disabled=false;
				document.form1.filter.value="1";
				document.form1.bnd.value="0";
				document.form1.action="e7.jsp";
				document.form1.submit();

			}
		}
	}  	
  }

if(document.form1.generate.value=="1")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "original_exp5.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "image_name");
    hiddenField.setAttribute("value", document.form1.D1.value);
    hiddenField.setAttribute("type", "hidden");
     form.appendChild(hiddenField);

    
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("original_exp5.html", 'formresult', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}
if(document.form1.generate.value=="1")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "out_mor.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult1");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "image_name");
    hiddenField.setAttribute("value", document.form1.D1.value);
    hiddenField.setAttribute("type", "hidden");
     form.appendChild(hiddenField);
     var mt="";
     mt=document.form1.D6.value;
     if(document.form1.D7.disabled==false)
     {
     	mt=mt+" ("+document.form1.D7.value+")";
     }
 var hiddenField1 = document.createElement("input");              
    hiddenField1.setAttribute("name", "method");
    hiddenField1.setAttribute("value", mt);
    hiddenField1.setAttribute("type", "hidden");
     form.appendChild(hiddenField1);

    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("out_mor.html", 'formresult1', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}


                  </script>

</body>

</html>