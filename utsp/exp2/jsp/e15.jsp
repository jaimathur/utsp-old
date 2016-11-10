<%@ page language = "java" import = "java.io.*, java.util.Date, java.awt.*, javax.imageio.*, imageprocessing.*, java.awt.image.*;" %>

<html>
<%
long t1=System.nanoTime();
ReadImage ri=null;
Classification classific=null;
String selected="---select---";
String sline="";
String sline1="";
int filter=0;



String disp="0";
int win_no=0;
String bin_class="";


String d6="";
String binname="";
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
String trainingFiles[]=null;
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
String sb1="";
String sb2="";
String sb3="";
int img_subset=0;

int img_pointpixel=0;
String sub_band="0";
sub_band=noband+"";
int start=0;
String subm="0";
String inpath="C:/uploads/";
String outpath="";
String msg="";



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
 	msg="error";
 }


try{
//------------new way--------------------//
	f=new File("c:/uploads/common/");
	sampleFiles=f.list();
	f=new File("c:/uploads/"+session_user);
	files=f.list();
	f=new File("C:/uploads/"+session_user+"_classified/");
	trainingFiles=f.list();

//-------------------------------------//
	}
	catch(Exception e)
	{//out.println(e.toString());
	}
try{


if((request.getParameter("D2")!=null)&&((request.getParameter("classify")).equals("1")))
{

		
        sb1=request.getParameter("D3");
		sb2=request.getParameter("D4");
		sb3=request.getParameter("D5");
		d6=request.getParameter("D6");
		binname=request.getParameter("T1");	
		//userclassified="C:/uploads/"+session_user+"_classified/";
		f=new File("C:\\uploads\\"+session_user+"_classified");
		if(!f.exists())
		{
			f.mkdir();
		}
		
		
		
	//ri=new ReadImage(inpath);
	//ri.writeImage(Integer.parseInt(sb1),Integer.parseInt(sb2),Integer.parseInt(sb3),ri.imageData,ri.r,ri.c,outpath+"out_original_img");	
	
	//classific=new Classification(inpath,userclassified+request.getParameter("D6"),userclassified+request.getParameter("T1"),outpath+"out_parallelopiped",0,"000000");
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
<title>Experiment 15: Minimum Distance Classification</title>
<script type="text/javascript" src="jscolor/jscolor.js"></script>

</head>

<body bgcolor="#E1F1FB">



  		<form name="form1" method="POST" action="--WEBBOT-SELF--">
<input type="hidden" value="0" name="bnd" value="<%=band%>">
<input type="hidden" name="prevurl" value="">
<input type="hidden" name="classify" value="0">
<input type="hidden" name="generate" value="<%=gen%>">


<%//out.println("krishna "+ selected +" " +request.getParameter("D2"));%>
<p align="center">

<table id="cnt1" border="1" cellspacing="0" width="808"  cellpadding="0" style="border-style:solid; border-width:1; border-collapse: collapse" bordercolor="#9999FF" >

	<tr>
    	<td width="808" height="79%" style="border-right:medium none #9999FF; background-repeat: repeat-x; border-left-style:none; border-left-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" colspan="2" valign="top" bgcolor="#0E92E4">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="33">
          <tr>
            <td width="50%" height="30" style="border-bottom-style: solid; border-bottom-width: 1">
            <p style="margin-top: 4"><font size="5" color="#FFFFFF">Minimum Distance Classification</font></td>
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
		Signature File (training area file)</td>
    	<td width="404" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
		<select size="1" name="D6">
		<%
		String tempname[];
		for(int i=0;i<trainingFiles.length;i++)
		{
			if((trainingFiles[i].equals("trainingwindows.trn"))||(trainingFiles[i].lastIndexOf(".clr")>=0))
			{
			}
			else
			{
				if(trainingFiles[i].lastIndexOf(".trn")>=0)
				{
					tempname=trainingFiles[i].split("_1110_");
					if(i==0)
					{
		%>
		
		<option selected value="<%=trainingFiles[i]%>"><%=tempname[0]%></option>
		<%			}
					else
					{%>
		<option value="<%=trainingFiles[i]%>"><%=tempname[0]%></option>

		<%			}
				}
			}
		}
		%>
		
		
		</select></td>
  	</tr>
  
  	<tr>
    	<td width="404" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
    	<td width="404" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="808" height="1%" colspan="2" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;<i><b>Select Color 
        Composite (To see original image with classified image)</b></i></td>
  	</tr>
  
  	<tr>
    	<td width="808" height="1%" colspan="2" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Choose Red Band</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  <select size="1" name="D3" value="" <%=disable%>>
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
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Choose Green Band</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  <select size="1" name="D4" value="" <%=disable%>>
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
    	<td width="293" height="3%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Choose Blue Band</td>
    	<td width="515" height="3%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  <select size="1" name="D5" value="" <%=disable%>>
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
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
    	<td width="515" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
 	
  
  

  	 	
  
  

  	 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;Name of the output classified binary image</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	<input type="text" name="T1" size="13" value=""><i>(Please do not enter 
            extension of file)</i></td>
  	</tr>
  

  	 	
  	<tr>
    	<td width="808" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF" colspan="2">    
        &nbsp;<input type="button" name="B5" value="Classify"  onclick='process()' style="height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" >&nbsp;</td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
 	
	</table>

       <%out.println(t1+"");%>

<script language = "javascript" >
 {
//var tr_c=parseInt('<%=tr_c%>'+"");
 
//document.getElementById("T2").disabled=true;

// alert(tr_c+"");
 }
 function band(list)
  {
 
  	if(document.form1.D2.value=="---select---")
  	{
  		
  		alert("choose an image.");
  		
  	}
  	else
  	{
  	document.form1.bnd.value="1";
  	
  	document.form1.action="e15.jsp";
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
function process()
{
	if(document.form1.D2.value=="---select---")
  	{
  		
  		alert("choose an image.");
  		
  	}
	else if(document.form1.T1.value=="")
	{
		alert("Enter name for binary classified file. You can use it further for accuracy assessment.");
	}
	else
	{
		document.form1.classify.value=1;
		document.form1.action="e15.jsp";
		document.form1.submit();
	}
	
}

if(document.form1.generate.value=="1")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "output_exp15.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "inpath");
    hiddenField.setAttribute("value", '<%=inpath%>');
    hiddenField.setAttribute("type","hidden");
     form.appendChild(hiddenField);
//alert("b");
 	var hiddenField2 = document.createElement("input");              
    hiddenField2.setAttribute("name", "sb1");
    hiddenField2.setAttribute("value", '<%=sb1%>');
    hiddenField2.setAttribute("type","hidden");
     form.appendChild(hiddenField2);
     
     var hiddenField4 = document.createElement("input");              
    hiddenField4.setAttribute("name", "sb2");
    hiddenField4.setAttribute("value", '<%=sb2%>');
    hiddenField4.setAttribute("type","hidden");
     form.appendChild(hiddenField4);

var hiddenField5 = document.createElement("input");              
    hiddenField5.setAttribute("name", "sb3");
    hiddenField5.setAttribute("value", '<%=sb3%>');
    hiddenField5.setAttribute("type","hidden");
     form.appendChild(hiddenField5);


//alert("c");
	var hiddenField1 = document.createElement("input");              
    hiddenField1.setAttribute("name", "d6");
    hiddenField1.setAttribute("value", '<%=d6%>');
    hiddenField1.setAttribute("type","hidden");
     form.appendChild(hiddenField1);
     
     var hiddenField3 = document.createElement("input");              
    hiddenField3.setAttribute("name", "binname");
    hiddenField3.setAttribute("value", '<%=binname%>');
    hiddenField3.setAttribute("type","hidden");
     form.appendChild(hiddenField3);




    
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("output_exp15.html", 'formresult', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}

</script>   


  

</form>


   
</body>

</html>