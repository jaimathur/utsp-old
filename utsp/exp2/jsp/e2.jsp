<%@ page language = "java" import = "java.io.*, java.awt.*, javax.imageio.*, imageprocessing.*, java.awt.image.*;" %>

<html>
<%

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

ReadImage ri=null;

String selected="---select---";
String sline="";
String sline1="";
int enhancement=0;
int display=1;
BufferedReader br=null;
int output=0;
int noband=0;
String disable_display="";
String disable_enhancement="disabled";
String parameter="0";
String error_msg="";
String files[]=null;
String sampleFiles[]=null;
String gen="0";
String nob="0";
int bval=0;
int band=0;

String method="Linear";
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
			} */
 		}
 		if(noband>3)
 		{
 			sb1="4";
 			sb2="3";
 			sb3="2";
 		}
 		else if(noband==1)
 		{
 			sb1="1";
 			sb2="1";
 			sb3="1";
 		}
 		else
 		{
 			sb1="1";
 			sb2="2";
 			sb3="3";
 		}
 		
 		
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
if((request.getParameter("display")).equals("1"))
{
	init=request.getParameter("D1");
	selected=init;
	sb1=request.getParameter("D2");
	sb2=request.getParameter("D3");
	sb3=request.getParameter("D4");
	if((sb1.equals(sb2))&&(sb2.equals(sb3)))
	{
		bval=Integer.parseInt(sb1);
	}
	else
	{
		bval=0;
	}
	
	PrintStream p=new PrintStream(new FileOutputStream("C:\\uploads\\"+session_user+"\\RGB.txt",false));
	System.setOut(p);
	System.out.println(sb1+" "+sb2+" "+sb3);
	
	PrintStream ps=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/win4pix.txt",false));
	System.setOut(ps);
	System.out.println("1");
	System.out.println("1");
	System.out.println("1");
	System.out.println("1");
	System.out.println("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");
	
	Process pr=null;
	
	if(selected.equals(init))
	{
	 	pr= Runtime.getRuntime().exec("C:\\VSIP\\img_disp.exe C:\\uploads\\common\\" + init + " C:\\uploads\\"+session_user+"\\RGB.txt" + " C:\\uploads\\"+session_user+"\\win4pix.txt");
	 	error_msg="error in sample image display";
	}
	else
	{
		pr= Runtime.getRuntime().exec("C:\\VSIP\\img_disp.exe C:\\uploads\\" +session_user+"\\"+ init + " C:\\uploads\\"+session_user+"\\RGB.txt"+ " C:\\uploads\\"+session_user+"\\win4pix.txt");
		
	}
	pr.waitFor();
	pr.destroy();
error_msg="error in user image display";
	enhancement=1;
	display=0;
	disable_display="disabled";
	disable_enhancement="";
	gen="1";
}
if((request.getParameter("enhance")).equals("1"))
{
	init=request.getParameter("D1");
	selected=init;
	sb1=request.getParameter("D2");
	sb2=request.getParameter("D3");
	sb3=request.getParameter("D4");
	method=request.getParameter("D6");
	parameter=request.getParameter("T2");
	
	if((sb1.equals(sb2))&&(sb2.equals(sb3)))
	{
		bval=Integer.parseInt(sb1);
	}
	else
	{
		bval=0;
	}
	
	
	PrintStream p=new PrintStream(new FileOutputStream("C:\\uploads\\"+session_user+"\\RGB.txt",false));
	System.setOut(p);
	System.out.println(sb1+" "+sb2+" "+sb3);
		
	if(selected.equals(init))
	{
		PrintStream ps=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/param.txt",false));
		System.setOut(ps);
		System.out.println("C:/uploads/common/" + init);	
		System.out.println(method);
		System.out.println(parameter);
		System.out.println("0");
		 System.out.println("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");
	
	}
	else
	{
		PrintStream ps=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/param.txt",false));
		System.setOut(ps);
		System.out.println("C:/uploads/" +session_user+"/" + init);	
		System.out.println(method);
		System.out.println(parameter);
		System.out.println("0");
		System.out.println("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");
	
	}
	Process pr= Runtime.getRuntime().exec("C:\\VSIP\\enhance.exe C:\\uploads\\"+session_user+"\\param.txt" + " C:\\uploads\\"+session_user+"\\rgb.txt");
	pr.waitFor();
	pr.destroy();
	error_msg="error in image processing";
	enhancement=0;
	display=1;
	disable_enhancement="disabled";
	disable_display="";
	gen="2";
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
<title>Experiment 2: Contrast Enhancement</title>
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
<input type="hidden" name="enhance" value="0">
<%//out.println(error_msg);%>
<p align="center" style="margin-top:5px;">
<table id="cnt1" border="1" cellspacing="0" width="849"  cellpadding="0" style="border-style:solid; border-collapse: collapse; " bordercolor="#9999FF" height="1" >

	<tr>
    	<td width="847" colspan="2" height="1" style="border-left:1px none #9999FF; border-right:1px none #9999FF; background-repeat: repeat-x; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" valign="top" bgcolor="#0E92E4" height="2">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="1">
          <tr>
            <td width="50%" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
            <p style="margin-top: 0; margin-bottom:0"><font size="5" color="#FFFFFF">Contrast Enhancement</font></td>
            <td width="50%" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
            <p align="right" style="margin-top: 0; margin-bottom:0"><font color="#FFFFFF">
            Virtual Satellite Image Processing and Analysis Lab, IIT Bombay</font></td>
          </tr>
        </table>
        </td>
  	</tr>
  	<tr>
    	<td width="847" height="1%" colspan="2" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="304" height="12%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">&nbsp;Select Image</td>
    	<td width="542" height="12%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">
        <select size="1" name="D1" style="width: 140;" value="" <%=disable_display%> onchange ='band(this)'>
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
</select><a href="javascript:upload()">Upload more images</a></td>
 	</tr>
  
  	<tr>
    	<td width="847" height="1%" colspan="2" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="847" height="1%" colspan="2" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;<i><b>Select Color 
        Composite</b></i></td>
  	</tr>
  
  	<tr>
    	<td width="847" height="1%" colspan="2" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="304" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;Choose Red Band</td>
    	<td width="542" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  <select size="1" name="D2" <%=disable_display%> value="">
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
    	<td width="304" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;Choose Green Band</td>
    	<td width="542" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  <select size="1" name="D3" <%=disable_display%> value="">
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
    	<td width="304" height="3%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;Choose Blue Band</td>
    	<td width="542" height="3%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  <select size="1" name="D4" <%=disable_display%> value="">
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
  }%>
  </select></td>
  	</tr>
  
  	<tr>
    	<td width="304" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;</td>
    	<td width="542" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="304" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">    
        &nbsp;<input type="button" value="Display" name="B2"  onclick='verify2()' <%=disable_display%> style="height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" ></td>
    	<td width="542" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="304" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;</td>
    	<td width="542" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="304" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;<i><b>Stretching</b></i></td>
    	<td width="542" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="304" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;</td>
    	<td width="542" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="304" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;Method</td>
    	<td width="542" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        	<select size="1" name="D6" value="" onchange='verify1(this)' <%=disable_enhancement%>>
 			<%if(method.equals("Linear"))
 			{%> 
				<option selected>Linear</option>
  			<%}
 			 else
 			 {%>
				<option>Linear</option>
  			<%}%>
			<%if(method.equals("StandardDeviation"))
 			{%> 
				<option selected>StandardDeviation</option>
  			<%}
 			 else
 			 {%>
				<option>StandardDeviation</option>
  			<%}%>
			<%if(method.equals("Histogram"))
 			{%> 
				<option selected>Histogram</option>
  			<%}
 			 else
 			 {%>
				<option>Histogram</option>
  			<%}%>
			<%if(method.equals("Logarithmic"))
 			{%> 
				<option selected>Logarithmic</option>
  			<%}
 			 else
 			 {%>
				<option>Logarithmic</option>
  			<%}%>
			<%if(method.equals("Exponential"))
 			{%> 
				<option selected>Exponential</option>
  			<%}
 			 else
 			 {%>
				<option>Exponential</option>
  			<%}%>
			<%if(method.equals("Decorrelation"))
 			{%> 
				<option selected>Decorrelation</option>
  			<%}
 			 else
 			 {%>
				<option>Decorrelation</option>
  			<%}%>
		 </select>
 		</td>
  	</tr>
  
  	<tr>
    	<td width="304" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;<label for="fp1" id="l1">Not Required</label><input type="text" name="T1" style="visibility: hidden;" size="1" id="fp1"></td>
    	<td width="542" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  <input type="text" name="T2" size="13" <%=disable_enhancement%>></td>
  	</tr>
  
	<tr>
    	<td width="847" height="1%" colspan="2" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;</td>
 	</tr>
	<tr>
    	<td width="847" height="1%" colspan="2" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        &nbsp;<input type="button" value="Process" name="B1"  <%=disable_enhancement%> onclick='process()' style="height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" ></p>
        </td>
 	</tr>
	<tr>
    	<td width="847" height="0%" colspan="2" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        &nbsp;</td>
 	</tr>
	</table>
	
</form>

</div>

<script language = "javascript" >
{

//var h=document.getElementById("cnt1").offsetHeight;
//h=h+50;
//document.getElementById("bg2").style.height=""+h+"px";


if(document.form1.T2.value=="")
{
document.form1.T2.value="0";
}

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
  	
  	document.form1.action="e2.jsp";
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
  	if(document.form1.D1.value=="---select---")
  	{
  		
  		alert("choose an image.");
  		
  	}
  	else
    {
    	//document.form1.type.value=document.form1.D6.value;
    		document.form1.display.value="1";
    	document.form1.bnd.value="0";
    	document.form1.action="e2.jsp";
  	    document.form1.submit();
  	    

   	}
  }
  function verify1()
  {
  	if(document.form1.D6.value=="StandardDeviation")
  	{
  		
  		document.form1.T2.disabled=false;
  		this.document.getElementById('l1').innerHTML="standard deviation(greater than 0)"
  	}
  	else if(document.form1.D6.value=="Exponential")
  	{
  		
  		document.form1.T2.disabled=false;
  		this.document.getElementById('l1').innerHTML="Exponential Factor(range: 0 to 2)"
  	}
  	else
  	{
  		document.form1.T2.value="0";
  		document.form1.T2.disabled=true;
  		

  		this.document.getElementById('l1').innerHTML="Not required"
  	
  	}
  }

  function process()
  {
  	if(document.form1.D1.value=="---select---")
  	{
  		
  		alert("choose an image.");
  		
  	}
  	else if((document.form1.D6.value=="StandardDeviation")&&(parseFloat(document.form1.T2.value)<=0))
  	{
  		
  		alert("standard deviation should be greater than zero");
  		
  	}
  	else if((document.form1.D6.value=="Exponential")&&((parseFloat(document.form1.T2.value)<0)||(parseFloat(document.form1.T2.value)>2)))
  	{
  		
  		alert("Exponential factor should be between 0 and 2, inclusive of 0 and 2");
  		
  	}
  	else
    {
    	//document.form1.type.value=document.form1.D6.value;
    		document.form1.enhance.value="1";
    	document.form1.bnd.value="0";
    	document.form1.action="e2.jsp";
    	document.form1.D1.disabled=false;
  	    document.form1.D2.disabled=false;
  	    document.form1.D3.disabled=false;
  	    document.form1.D4.disabled=false;
  	    document.form1.T2.disabled=false;

  	    document.form1.submit();
  	    

   	}
  }

if(document.form1.generate.value=="1")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "original_exp2.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult");
    
    var hiddenField = document.createElement("input");  
   	hiddenField.setAttribute("type", "hidden");            
    hiddenField.setAttribute("name", "image_name");
    
    hiddenField.setAttribute("value", document.form1.D1.value);
     form.appendChild(hiddenField);

     var hiddenField1 = document.createElement("input");  
     hiddenField1.setAttribute("type", "hidden");              
    hiddenField1.setAttribute("name", "nob");
    hiddenField1.setAttribute("value", document.form1.bandvalue.value);
    form.appendChild(hiddenField1);
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("original_exp2.html", 'formresult', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}
if(document.form1.generate.value=="2")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "original_exp2.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult");
    
    var hiddenField = document.createElement("input");    
    hiddenField.setAttribute("type", "hidden");            
    hiddenField.setAttribute("name", "image_name");
    hiddenField.setAttribute("value", document.form1.D1.value);
     form.appendChild(hiddenField);

     var hiddenField1 = document.createElement("input");    
     hiddenField1.setAttribute("type", "hidden");            
    hiddenField1.setAttribute("name", "nob");
    hiddenField1.setAttribute("value", document.form1.bandvalue.value);
    form.appendChild(hiddenField1);
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("original_exp2.html", 'formresult', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}

if(document.form1.generate.value=="2")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "out_enhancement.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult2");
    
    var hiddenField = document.createElement("input");   
    hiddenField.setAttribute("type", "hidden");             
    hiddenField.setAttribute("name", "image_name");
    hiddenField.setAttribute("value", document.form1.D1.value);
     form.appendChild(hiddenField);

     var hiddenField1 = document.createElement("input");      
     hiddenField1.setAttribute("type", "hidden");          
    hiddenField1.setAttribute("name", "nob");
    hiddenField1.setAttribute("value", document.form1.bandvalue.value);
    form.appendChild(hiddenField1);
    document.body.appendChild(form);

    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("out_enhancement.html", 'formresult2', 'scrollbars=yes,menubar=no,height=600,width=800,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}


                  </script>



</body>
</html>