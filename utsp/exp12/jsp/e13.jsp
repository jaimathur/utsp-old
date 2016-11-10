<%@ page language = "java" import = "java.io.*, java.util.Date, java.awt.*, javax.imageio.*, imageprocessing.*, java.awt.image.*;" %>

<html>
<%
long t1=System.nanoTime();
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



try{
//------------new way--------------------//
	
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

		selected=request.getParameter("D2");
 			
 			
 				
 			inpath="C:/uploads/"+session_user+"_classified/"+selected;
 						
       
		d6="C:/uploads/"+session_user+"_classified/"+request.getParameter("D6");
		
		//userclassified="C:/uploads/"+session_user+"_classified/";
		
		
		
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
<title>Experiment 13: Accuracy Assessment</title>
<script type="text/javascript" src="jscolor/jscolor.js"></script>

</head>

<body bgcolor="#E1F1FB">



  		<form name="form1" method="POST" action="--WEBBOT-SELF--">

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
            <p style="margin-top: 4"><font size="5" color="#FFFFFF">Accuracy Assessment</font></td>
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
    	<td width="293" height="12%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;Select 
		Binary Classified Image</td>
    	<td width="515" height="12%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">
        <select size="1" name="D2" style="width: 140;" >
 <%
		String tempnam;
		String tempnamsplit[];
		for(int i=0;i<trainingFiles.length;i++)
		{
			if((trainingFiles[i].lastIndexOf(".bmp")>=0)||(trainingFiles[i].lastIndexOf(".")<0))
			{
			tempnam=trainingFiles[i];
				if(tempnam.lastIndexOf(".bmp")>=0)
				{
				tempnam=tempnam.substring(0,tempnam.lastIndexOf("."));
				}
				else
				{
				tempnamsplit=tempnam.split("_1110_");
				tempnam=tempnamsplit[0];
				}
				if(i==0)
				{
		%>
		
		<option selected value="<%=trainingFiles[i]%>"><%=tempnam%></option>
		<%		}
				else
				{%>
		<option value="<%=trainingFiles[i]%>"><%=tempnam%></option>

		<%		}
			}
			else
			{
				
			}
		}
		%>
</select></td>
 	</tr>

  	<tr>
    	<td width="808" height="1%" colspan="2" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="404" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
		&nbsp;Select Signature File (test area file)</td>
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
function process()
{
	if(document.form1.D2.value=="---select---")
  	{
  		
  		alert("choose an image.");
  		
  	}
	else
	{
		document.form1.classify.value=1;
		document.form1.action="e13.jsp";
		document.form1.submit();
	}
	
}

if(document.form1.generate.value=="1")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "output_exp13.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "inpath");
    hiddenField.setAttribute("value", '<%=inpath%>');
    hiddenField.setAttribute("type","hidden");
     form.appendChild(hiddenField);
//alert("b");
 


//alert("c");
	var hiddenField1 = document.createElement("input");              
    hiddenField1.setAttribute("name", "d6");
    hiddenField1.setAttribute("value", '<%=d6%>');
    hiddenField1.setAttribute("type","hidden");
     form.appendChild(hiddenField1);
     
     




    
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("output_exp13.html", 'formresult', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}

</script>   


  

</form>


   
</body>

</html>