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



String disp="0";
int win_no=0;
String bin_class="";



int kernel=0;
int maketable=0;
BufferedReader br=null;
int output=0;
int noband=0;
String disable="";
String disable_filter="disabled";
String parameter="0";
String error_msg="";
String files[]=null;
String sampleFiles[]=null;
String gen="0";
String nob="0";
int bval=0;
int band=0;
int row=0;
int col=0;
String maxno_class="";
Date dt=new Date();
int tr_c=0;

String method="Linear";
int inv=0;
File f;
int jp=0;
int tp=0;
String style="visibile: hide; visibility:hidden";
String check="";
String init="---select---";
String init1="";
String dir="";
String feature="";
String displacement="";
int img_subset=0;

int img_pointpixel=0;
String sub_band="0";
sub_band=noband+"";
int start=0;
String subm="0";
String outpath="";
String inpath="";
String sb1="";

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
 			
 			selected=request.getParameter("D2");
 			
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
	{//out.println(e.toString());
	}
try{

if((request.getParameter("D2")!=null)&&((request.getParameter("textureanalyze")).equals("1")))
{
init=request.getParameter("D2");
	selected=init;

		
        dir=request.getParameter("D4");
		feature=request.getParameter("D3");
		displacement=request.getParameter("T1");
		sb1=request.getParameter("D5");
	String winsize=request.getParameter("T2");	
	
	
	TextureAnalysis ta=new TextureAnalysis(inpath,Integer.parseInt(winsize),Integer.parseInt(displacement),Integer.parseInt(dir),Integer.parseInt(sb1),Integer.parseInt(feature),outpath+"out_tex");
	/*
	PrintStream ps=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/param.txt",false));
	System.setOut(ps);
	System.out.println("C:/uploads/common_bin/" + init);
	if(init.equals("inputband"))
	{
		System.out.println("1401 801");
		
	}
	else if(init.equals("Test1.img"))
	{
		System.out.println("938 734");
		
	}
	System.out.println(dir);
	System.out.println(feature);
	System.out.println(displacement);
	System.out.println(winsize);

	PrintStream ps1=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/out_path.txt",false));
	System.setOut(ps1);
	System.out.print("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");
	
	
	Process pr=null;
	
	pr= Runtime.getRuntime().exec("C:\\VSIP\\texture.exe C:\\uploads\\"+session_user+"\\param.txt" + " C:\\uploads\\"+session_user+"\\out_path.txt");
	
	pr.waitFor();
	pr.destroy();
	bin_class="";
	maxno_class=request.getParameter("class_no");
	*/

	
	
	gen="1";
}
}
catch(Exception e)
{
error_msg=error_msg+e.toString();
}
t2=System.nanoTime();
%>

<head>
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Experiment 14: Texture Analysis</title>
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
<input type="hidden" name="textureanalyze" value="0">



<input type="hidden" name="classify" value="0">


<%//out.println("krishna "+ selected +" " +request.getParameter("D2"));%>
<p align="center">

<table id="cnt1" border="1" cellspacing="0" width="808"  cellpadding="0" style="border-style:solid; border-width:1; border-collapse: collapse" bordercolor="#9999FF" >

	<tr>
    	<td width="808" height="79%" style="border-right:medium none #9999FF; background-repeat: repeat-x; border-left-style:none; border-left-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" colspan="2" valign="top" bgcolor="#0E92E4">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="33">
          <tr>
            <td width="50%" height="30" style="border-bottom-style: solid; border-bottom-width: 1">
            <p style="margin-top: 4"><font size="5" color="#FFFFFF">Texture 
            Analysis</font></td>
            <td width="50%" height="30" style="border-bottom-style: solid; border-bottom-width: 1">
            <p align="right" style="margin-top: 13"><font color="#FFFFFF">
            Virtual Satellite Image Processing and Analysis Lab, IIT Bombay</font></td>
          </tr>
        </table>
        </td>
  	</tr>
  
	<tr>
    	<td width="410" style="border-style: none; border-width: medium" bgcolor="#FFFFFF" >
        &nbsp;</td>
    	<td width="398" height="2%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="293" height="12%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;Select Image</td>
    	<td width="515" height="12%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">
        <select size="1" name="D2" style="width: 140;" value="" onchange ='band(this)' <%=disable%>>
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
  	//out.println(request.getParameter("D1")+"");
  	for(int i=0;i<sampleFiles.length;i++)
  	{
  			if((((sampleFiles[i]).toLowerCase()).lastIndexOf(".hdr")>0)||(((sampleFiles[i]).toLowerCase()).lastIndexOf(".tif")>0)||(((sampleFiles[i]).toLowerCase()).lastIndexOf(".ctr")>0) ||(((sampleFiles[i]).toLowerCase()).lastIndexOf(".exe")>0) || (((sampleFiles[i]).toLowerCase()).lastIndexOf(".txt")>0) || (((sampleFiles[i]).toLowerCase()).lastIndexOf((session_user+"").toLowerCase())>0))
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
</select><a href="javascript:upload()">Upload more images</a></td>
 	</tr>

  	<tr>
    	<td width="808" height="1%" colspan="2" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="404" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;Select 
		Band</td>
    	<td width="404" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
		<select size="1" name="D5" value="" >
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
    	<td width="404" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;Direction</td>
    	<td width="404" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        <select size="1" name="D4">
        <option value="0">Towards Right</option>
        <option value="1">Towards Bottom</option>
        <option value="2">Towards Right Bottom</option>
        <option selected value="3">Average of All</option>
        <option value="4">Left Bottom to Right</option>
        </select></td>
  	</tr>
  
  	<tr>
    	<td width="404" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;Texture 
        Feature</td>
    	<td width="404" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        <select size="1" name="D3">
        <option selected value="0">Angular Second Moment</option>
        <option value="1">Contrast</option>
        <option value="2">Inverse Difference Moment</option>
        <option value="3">Entropy</option>
        </select></td>
  	</tr>
  
  	<tr>
    	<td width="404" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;Displacement</td>
    	<td width="404" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        <input type="text" name="T1" size="7"> <i>(greater than equal to 1)</i></td>
  	</tr>
  
  	<tr>
    	<td width="404" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;Size 
        of Square Window</td>
    	<td width="404" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        <input type="text" name="T2" size="7"> <i>(greater than equal to 3, keep 
        the number odd)</i></td>
  	</tr>
  
  
 	
  	<tr>
    	<td width="808" height="1%" colspan="2" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  
 	
  	<tr>
    	<td width="808" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF" colspan="2">    
        &nbsp;<input type="button" name="B1" value="Process"  onclick='process();' style="height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" ></td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
 	
	</table>

       
 


  

</form>
<%out.println((t2-t1)+"");%>
<script language="javascript">
 function band(list)
  {
 
  	if(document.form1.D2.value=="---select---")
  	{
  		
  		alert("choose an image.");
  		
  	}
  	else
  	{
  	document.form1.bnd.value="1";
  	
  	document.form1.action="e14.jsp";
  	document.form1.submit();
  	
  	}
  	return;
  	
  }

function process()
{
if(document.form1.D2.value=="---select---")
{
	alert("choose an image");
	
}
else if((document.form1.T1.value=="")||(parseInt(document.form1.T1.value)<1))
{
	alert("Displacement value should be greater than or equal to zero.");
}
else if((document.form1.T2.value=="")||(parseInt(document.form1.T2.value)<3))
{
	alert("Window size should be greater than equal to 3.");
}
else
{
	document.form1.textureanalyze.value="1";
	document.form1.action="e14.jsp";
	document.form1.submit();
	
}

}


if(document.form1.generate.value=="1")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "output_exp14.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult");
    
    


    
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("output_exp14.html", 'formresult', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}



        </script>

</body>

</html>