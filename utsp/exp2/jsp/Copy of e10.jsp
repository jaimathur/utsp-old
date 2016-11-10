<%@ page language = "java" import = "java.io.*, java.awt.*, javax.imageio.*, imageprocessing.*, java.awt.image.*;" %>

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
String disable_filter="disabled";
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
					out.println(e.toString());
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

if((request.getParameter("D1")!=null)&&((request.getParameter("convert")).equals("1")))
{
noband=Integer.parseInt(request.getParameter("noofband"));	
init=request.getParameter("D2");
	selected=init;
	method=request.getParameter("D1");
	if(request.getParameter("D1").equals("HSV to RGB"))
	{
		sb1="1";
		sb2="2";
		sb3="3";
	}
	else
	{
		sb1=request.getParameter("D3");
		sb2=request.getParameter("D4");
		sb3=request.getParameter("D5");
	
	}
	
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
	
	PrintStream ps=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/param.txt",false));
	System.setOut(ps);
	System.out.println("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");
	
	if((selected.equals(init))||(selected.equals("HSV_sample1.tif")))
	{
	 	System.out.println("C:\\uploads\\common\\" + init);

	}
	else
	{
		System.out.println("C:\\uploads\\" +session_user+"\\"+ init);
		
	}

	System.out.println(method);
	
	Process pr=null;
	
	pr= Runtime.getRuntime().exec("C:\\VSIP\\color_transform.exe C:\\uploads\\"+session_user+"\\param.txt" + " C:\\uploads\\"+session_user+"\\RGB.txt");
	
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
<title>Experiment 10: Color Transform</title>
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



<input type="hidden" name="convert" value="0">


<%//out.println("krishna "+ selected +" " +request.getParameter("D2"));%>
<p align="center">

<table id="cnt1" border="1" cellspacing="0" width="808"  cellpadding="0" style="border-style:solid; border-width:1; border-collapse: collapse" bordercolor="#9999FF" >

	<tr>
    	<td width="808" height="79%" style="border-right:medium none #9999FF; background-repeat: repeat-x; border-left-style:none; border-left-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" colspan="2" valign="top" bgcolor="#0E92E4">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="33">
          <tr>
            <td width="50%" height="30" style="border-bottom-style: solid; border-bottom-width: 1">
            <p style="margin-top: 4"><font color="#FFFFFF" size="5">Color 
            Transform</font></td>
            <td width="50%" height="30" style="border-bottom-style: solid; border-bottom-width: 1">
            <p align="right" style="margin-top: 13"><font color="#FFFFFF">
            Virtual Satellite Image Processing and Analysis Lab, IIT Bombay</font></td>
          </tr>
        </table>
        </td>
  	</tr>
  
	<tr>
    	<td width="357" style="border-style: none; border-width: medium" bgcolor="#FFFFFF" >
        &nbsp;</td>
    	<td width="451" height="2%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">
        	&nbsp;</td>
  	</tr>
  
	<tr>
    	<td width="357" style="border-style: none; border-width: medium" bgcolor="#FFFFFF" >
        &nbsp;Select Color Transform</td>
    	<td width="451" height="2%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">
        	<select size="1" name="D1" value="" onchange ='selectImage(this)'>
 	        
            
            
            
            
            
            
            
            
            
            
            
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%if((request.getParameter("D1")!=null)&&(request.getParameter("D1").equals("HSV to RGB")))
            {%>
            <option selected>HSV to RGB</option>
            <option>RGB to HSV</option>
			<%}
			else
			{%>
			 <option selected>RGB to HSV</option>
            <option>HSV to RGB</option>
			
			<%}%>
		 </select></td>
  	</tr>
  
	<tr>
    	<td width="808" height="2%" colspan="2" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">
        &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="240" height="12%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;Select Image</td>
    	<td width="568" height="12%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">
        <select size="1" name="D2" style="width: 140;" value="" onchange ='band(this)'>
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
  		if((request.getParameter("D1")!=null)&&((request.getParameter("D1")).equals("HSV to RGB")))
  		{
  	
  			if((sampleFiles[i]).indexOf("HSV_")==0)
  			{
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
    	else
    	{
    		if((((sampleFiles[i]).toLowerCase()).lastIndexOf(".hdr")>0) ||((sampleFiles[i]).indexOf("HSV_")==0)||(((sampleFiles[i]).toLowerCase()).lastIndexOf(".ctr")>0) ||(((sampleFiles[i]).toLowerCase()).lastIndexOf(".exe")>0) || (((sampleFiles[i]).toLowerCase()).lastIndexOf(".txt")>0) || (((sampleFiles[i]).toLowerCase()).lastIndexOf((session_user+"").toLowerCase())>0))
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
  }
  if(files.length>0)
  {
  	for(int i=0;i<files.length;i++)
  	{
  	if((request.getParameter("D1")!=null)&&((request.getParameter("D1")).equals("HSV to RGB")))
  	{
  		if((files[i]).indexOf("HSV_")==0)
  		{
  		
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
    else
   	{
		if((((files[i]).toLowerCase()).lastIndexOf(".hdr")>0) ||((files[i]).indexOf("HSV_")==0)||(((files[i]).toLowerCase()).lastIndexOf(".ctr")>0)||(((files[i]).toLowerCase()).lastIndexOf(".exe")>0)||(((files[i]).toLowerCase()).lastIndexOf(".txt")>0)||(((files[i]).toLowerCase()).lastIndexOf((session_user+"").toLowerCase())>0))
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
    }
  }%>
</select><a href="javascript:upload()">Upload more images</a></td>
 	</tr>

<%if((request.getParameter("D1")!=null)&&((request.getParameter("D1")).equals("HSV to RGB")))
 	{
 	}
 	else
 	{%>  
  	<tr>
    	<td width="808" height="1%" colspan="2" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="808" height="1%" colspan="2" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;<i><b>Select Color 
        Composite</b></i></td>
  	</tr>
  
  	<tr>
    	<td width="808" height="1%" colspan="2" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
 	
  	<tr>
    	<td width="240" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Choose Red Band</td>
    	<td width="568" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  <select size="1" name="D3" value="">
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
    	<td width="240" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Choose Green Band</td>
    	<td width="568" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  <select size="1" name="D4" value="">
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
    	<td width="240" height="3%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Choose Blue Band</td>
    	<td width="568" height="3%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  <select size="1" name="D5" value="">
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
  <%}%>
  	<tr>
    	<td width="240" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
    	<td width="568" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="240" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;<input type="button" value="Process" name="B1"  onclick='verify2()' <%=disable_display%> style="height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" ></td>
    	<td width="568" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
 	
  	<tr>
    	<td width="240" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;</td>
    	<td width="568" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
 	
	</table>

       
     


  


</form>


<script language = "javascript" >
{

//var h=document.getElementById("cnt1").offsetHeight;
//h=h+50;
//document.getElementById("bg2").style.height=""+h+"px";




}
function selectImage(list)
{
	
	document.form1.action="e10.jsp";
	document.form1.submit();
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
  	
  	document.form1.action="e10.jsp";
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
  	if(document.form1.D2.value=="---select---")
  	{
  		
  		alert("choose an image.");
  		
  	}
  	else
    {
    	//document.form1.type.value=document.form1.D6.value;
    		//document.form1.display.value="1";
    	document.form1.convert.value="1";
		document.form1.bnd.value="0";
    	document.form1.action="e10.jsp";
  	    document.form1.submit();
  	    

   	}
  }
 
 

if(document.form1.generate.value=="1")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "output_exp10.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "transform");
    hiddenField.setAttribute("value", document.form1.D1.value);
    hiddenField.setAttribute("type","hidden");
     form.appendChild(hiddenField);

    
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("output_exp10.html", 'formresult', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}

                  </script>

</body>

</html>