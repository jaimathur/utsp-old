<%@ page language = "java" import = "java.io.*, java.awt.*, javax.imageio.*, imageprocessing.*,java.awt.image.*;" %>

<html>
<%
ReadImage ri=null;
String selected="---select---";
String sline="";
String sline1="";
int filter=0;
int edge=1;
BufferedReader br=null;
int output=0;
int noband=0;
String parameter="0";
String error_msg="";
String files[]=null;
String sampleFiles[]=null;
String gen="0";
String nob="0";
int bval=0;
int band=0;
String thresh1="0";
String thresh2="0";
String thresh3="0";
String sigma="0";
String direction="Both";
String method="Sobel";
int inv=0;
File f;
int jp=0;
int tp=0;
String style="visibile: hide; visibility:hidden";
String check="";
String init="---select---";
String init1="";
String sb1="1";
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
			} */
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
init=request.getParameter("D1");
	selected=init;
	sb1=request.getParameter("D2");
	method=request.getParameter("D6");
	
	
	thresh1=request.getParameter("T6");
	
	
	

	PrintStream p=new PrintStream(new FileOutputStream("C:\\uploads\\"+session_user+"\\RGB.txt",false));
	System.setOut(p);
	System.out.println(sb1+"");
	
	
	
	
	PrintStream ps=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/param.txt",false));
	System.setOut(ps);
	if(selected.equals(init))
	{
		System.out.println("C:/uploads/common/" + init);	
	}
	else
	{
		System.out.println("C:/uploads/" +session_user+"/" + init);	
	}
	System.out.println("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");
	System.out.println(method);
	System.out.println(thresh1);
	if((method.equals("Sobel"))||(method.equals("Prewitt")))
	{
		direction=request.getParameter("D7");
		System.out.println(direction);
	}
	else if((method.equals("LoG"))||(method.equals("Canny")))
	{
		sigma=request.getParameter("T3");
		System.out.println(sigma);
	}
	
	/*PrintStream ps1=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/gradient.txt",false));
	System.setOut(ps1);
	if((method.equals("Sobel"))||(method.equals("Prewitt")))
	{
		thresh2=request.getParameter("T9");
		thresh3=request.getParameter("T10");
		System.out.println(method);
		System.out.println(thresh2);
		System.out.println(thresh3);
	}
	else
	{
		System.out.println("Sobel");
		System.out.println("0.5");
		System.out.println("0.5");

	}*/
	
	Process pr= Runtime.getRuntime().exec("C:\\VSIP\\edge.exe C:\\uploads\\"+session_user+"\\param.txt" + " C:\\uploads\\"+session_user+"\\rgb.txt");// + " C:\\uploads\\"+session_user+"\\gradient.txt");
	pr.waitFor();
	pr.destroy();
	
	
	gen="1";
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
<title>Experiment 5: Edge Detection</title>
</head>

<body bgcolor="#E1F1FB">




<form name="form1" method="POST" action="--WEBBOT-SELF--">
 <input type="hidden" value="0" name="bnd" value="<%=band%>">
<input type="hidden" name="prevurl" value="">
<input type="hidden" name="type" value="<%=method%>">
<input type="hidden" name="sub" value="<%=subm%>">
<input type="hidden" name="noofband" value="<%=noband%>">
<input type="hidden" name="subsetband" value="<%=sub_band%>">
<input type="hidden" name="inverse" value="<%=inv%>">
<input type="hidden" name="generate" value="<%=gen%>">
<input type="hidden" name="bandvalue" value="<%=bval%>">
<input type="hidden" name="display" value="0">
<input type="hidden" name="edge" value="0">
<input type="hidden" name="kernel" value="0">

<%//out.println(""+request.getParameter("D1"));%>
<p align="center">

<table id="cnt1" border="1" cellspacing="0" width="849"  cellpadding="0" style="border-style:solid; border-collapse: collapse; " bordercolor="#9999FF" height="1" >

	<tr>
    	<td width="847" height="1" colspan="3" style="border-left:1px none #9999FF; border-right:1px none #9999FF; background-repeat: repeat-x; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" valign="top" bgcolor="#0E92E4" height="2">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="1">
          <tr>
            <td width="50%" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
            <p style="margin-top: 0; margin-bottom:0"><font size="5" color="#FFFFFF">Edge Detection</font></td>
            <td width="50%" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
            <p align="right" style="margin-top: 0; margin-bottom:0"><font color="#FFFFFF">
            Virtual Satellite Image Processing and Analysis Lab, IIT Bombay</font></td>
          </tr>
        </table>
        </td>
  	</tr>  
  	<tr>
    	<td width="847" height="1%" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="321" height="12%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;Select Image</td>
    	<td width="145" height="12%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
        <select size="1" name="D1" style="width: 140;" value="" onchange ='band(this)'>
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
</select></td>
    	<td width="379" height="12%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
        <a href="javascript:upload()">Upload more images</a></td>
 	</tr>
  
  	
  	<tr>
    	<td width="321" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Choose  Band</td>
    	<td width="145" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  <select size="1" name="D2" value="">
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
    	<td width="379" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="847" height="5%" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="321" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<b><i>Edge Detection</i></b></td>
    	<td width="525" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="321" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
    	<td width="525" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="321" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Method</td>
    	<td width="525" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	<select size="1" name="D6" value="" onchange='verify1(this)' style="width: 90;">
 			<%if(method.equals("Sobel"))
 			{%> 
				<option selected>Sobel</option>
  			<%}
 			 else
 			 {%>
				<option>Sobel</option>
  			<%}%>
			<%if(method.equals("Prewitt"))
 			{%> 
				<option selected>Prewitt</option>
  			<%}
 			 else
 			 {%>
				<option>Prewitt</option>
  			<%}%>
			<%if(method.equals("Robert"))
 			{%> 
				<option selected>Robert</option>
  			<%}
 			 else
 			 {%>
				<option>Robert</option>
  			<%}%>
			<%if(method.equals("LoG"))
 			{%> 
				<option selected>LoG</option>
  			<%}
 			 else
 			 {%>
				<option>LoG</option>
  			<%}%>
			<%if(method.equals("Canny"))
 			{%> 
				<option selected>Canny</option>
  			<%}
 			 else
 			 {%>
				<option>Canny</option>
  			<%}%>
		  </select>
 		</td>
  	</tr>
  
  	<tr>
    	<td width="321" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  <label for="fp3" id="l3"><b>&nbsp;Edge 
        Threshold</b> (0 to 1)</label><input type="text" name="T5" style="visibility: hidden;" size="1" id="fp3"></td>
    	<td width="145" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <input type="text" name="T6" size="4" value="<%=thresh1%>"></td>
    	<td width="379" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
  	</tr>
  
  	
  
  	<tr>
    	<td width="321" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<label for="fp2">Sigma (greater than 0)</label><input type="text" name="T4" style="visibility: hidden;" size="1" id="fp2"></td>
    	<td width="145" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <input type="text" name="T3" size="4" value="<%=sigma%>" ></td>
    	<td width="379" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="321" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<label for="fp1">Direction</label><input type="text" name="T1" style="visibility: hidden;" size="1" id="fp1"></td>
    	<td width="145" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <select size="1" name="D7" id="fp4" style="width: 90;">
        <%if(direction.equals("Horizontal"))
 			{%> 
				<option selected>Horizontal</option>
  			<%}
 			 else
 			 {%>
				<option>Horizontal</option>
  			<%}%>
		<%if(direction.equals("Vertical"))
 			{%> 
				<option selected>Vertical</option>
  			<%}
 			 else
 			 {%>
				<option>Vertical</option>
  			<%}%>
		<%if(direction.equals("Both"))
 			{%> 
				<option selected>Both</option>
  			<%}
 			 else
 			 {%>
				<option>Both</option>
  			<%}%>
	    </select></td>
    	<td width="379" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
	<tr>
    	<td width="847" height="1%" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  </td>
 	</tr>
 	
	<tr>
    	<td width="847" height="1%" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        &nbsp;</td>
 	</tr>
	<tr>
    	<td width="847" height="1%" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        &nbsp;<input type="button" value="Process" name="B1" onclick='process()' style="visibility:visible; height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" ></p>
        </td>
 	</tr>
	<tr>
    	<td width="847" height="0%" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        &nbsp;</td>
 	</tr>
	</table>
</form>
</div>

<script language = "javascript" >
{




  	if(document.form1.D6.value=="Prewitt")
  	{
		//alert("a");
  		document.form1.T3.disabled=true;
  		document.form1.D7.disabled=false;
  	//	this.document.getElementById("l5").style.visibility="visible";
  	//	this.document.getElementById("l6").style.visibility="visible";
  		//document.form1.T9.disabled=false;
  		//document.form1.T10.disabled=false;
  		


  	}
	else if(document.form1.D6.value=="Sobel")
	{
		//alert("");
		document.form1.T3.disabled=true;
  		document.form1.D7.disabled=false;
  	//	this.document.getElementById("l5").style.visibility="visible";
  	//	this.document.getElementById("l6").style.visibility="visible";
  		//document.form1.T9.disabled=true;
  		//document.form1.T10.disabled=true;

	}
   	else if(document.form1.D6.value=="Robert")
  	{
  		document.form1.T3.disabled=true;
  		document.form1.D7.disabled=true;
  	//	this.document.getElementById("l5").style.visibility="hidden";
  	//	this.document.getElementById("l6").style.visibility="hidden";
  		//document.form1.T9.disabled=true;
  		//document.form1.T10.disabled=true;
  		

  	}
  	else
  	{
  		
		document.form1.T3.disabled=false;
  		document.form1.D7.disabled=true;
  	//	this.document.getElementById("l5").style.visibility="hidden";
  	//	this.document.getElementById("l6").style.visibility="hidden";
  		//document.form1.T9.disabled=true;
  		//document.form1.T10.disabled=true;
  		
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
  	
  	document.form1.action="e5.jsp";
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
 
/*  function verify2()
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
    	document.form1.action="e3.jsp";
  	    document.form1.submit();
  	    

   	}
  }
  */
 
  function verify1()
  {
  	if(document.form1.D6.value=="Prewitt")
  	{
		//alert("a");
  		document.form1.T3.disabled=true;
  		document.form1.D7.disabled=false;
  	//	this.document.getElementById("l5").style.visibility="visible";
  	//	this.document.getElementById("l6").style.visibility="visible";
  		//document.form1.T9.disabled=false;
  		//document.form1.T10.disabled=false;
  		


  	}
	else if(document.form1.D6.value=="Sobel")
	{
		//alert("");
		document.form1.T3.disabled=true;
  		document.form1.D7.disabled=false;
  	//	this.document.getElementById("l5").style.visibility="visible";
  	//	this.document.getElementById("l6").style.visibility="visible";
  		//document.form1.T9.disabled=true;
  		//document.form1.T10.disabled=true;

	}

   	else if(document.form1.D6.value=="Robert")
  	{
  		document.form1.T3.disabled=true;
  		document.form1.D7.disabled=true;
  	//	this.document.getElementById("l5").style.visibility="hidden";
  	//	this.document.getElementById("l6").style.visibility="hidden";
  		//document.form1.T9.disabled=true;
  		//document.form1.T10.disabled=true;
  		
	

  	}
  	else
  	{
  		
		document.form1.T3.disabled=false;
  		document.form1.D7.disabled=true;
  	//	this.document.getElementById("l5").style.visibility="hidden";
  	//	this.document.getElementById("l6").style.visibility="hidden";
  		//document.form1.T9.disabled=true;
  		//document.form1.T10.disabled=true;
  		
  	}
  }
  
  function process()
  {
  
  		var t1=parseFloat(document.form1.T6.value);
  	//var t2=parseFloat(document.form1.T9.value);
  	
  	//var t3=parseFloat(document.form1.T10.value);
  	var s=parseFloat(document.form1.T3.value);
  	var mt=document.form1.D6.value;
  	
	//document.write(r1);
	if(document.form1.D1.value=="---select---")
  	{
  		
  		alert("Please, choose an image.");
  		
  	}
  	else if(((mt=="Sobel")||(mt=="Prewitt"))&&(((t1<0)||(t1>1))))
  	{
  		
  		alert("Threshold values should lie between 0 and 1, inclusive of 0 and 1");
  		
  	}
  	else if(((mt=="Canny")||(mt=="LoG"))&&((t1<0)||(t1>1)))
  	{
  		
  		alert("Threshold values should lie between 0 and 1, inclusive of 0 and 1");
  		
  	}
  	else if(((mt=="Canny")||(mt=="LoG"))&&(s<=0))
  	{
  		
  		alert("Sigma should be greater than 0");
  	}
  	else if((mt=="Robert")&&((t1<0)||(t1>1)))
  	{
  		
  		alert("Threshold values should lie between 0 and 1, inclusive of 0 and 1");
  		
  	}
  	else
  	{
  		document.form1.bnd.value="0";
  		document.form1.edge.value="1";
    	document.form1.action="e5.jsp";
    	
  	    document.form1.submit();
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
    hiddenField.setAttribute("type","hidden");
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
    form.setAttribute("action", "out_edge.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult1");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "image_name");
    hiddenField.setAttribute("value", document.form1.D1.value);
    hiddenField.setAttribute("type","hidden");
     form.appendChild(hiddenField);

     var hiddenField1 = document.createElement("input");              
    hiddenField1.setAttribute("name", "method");
    hiddenField1.setAttribute("value", document.form1.D6.value);
    hiddenField1.setAttribute("type","hidden");
    form.appendChild(hiddenField1);
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("out_edge.html", 'formresult1', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}



                  </script>

</body>

</html>