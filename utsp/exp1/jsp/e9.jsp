<%@ page language = "java" import = "commonclasses.ReadImage, java.io.*, java.awt.*, javax.imageio.*, imageprocessing.*,java.awt.image.*;" %>

<html>
<%
//ReadImage ri=null;
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
String ctype="Random";
String btype="All";
String p1="0";
String p2="0";
String p3="";
String selectedcentre="---select---";
String bandstr="";
int countofband=0;

String method="Erode";
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
int genbands=0;
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
 			//ri=new ReadImage(inpath,1);
 			//noband=ri.b;



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
error_msg+="a";
if((request.getParameter("selectbands")).equals("1"))
{
	genbands=1;
	btype=request.getParameter("D8");
}
error_msg+="b";

if((request.getParameter("classify")).equals("1"))
{
error_msg+="c";


	btype=request.getParameter("D8");
	if(btype.equals("All"))
	{
		countofband=0;
		bandstr="0";
	}
	else
	{
		countofband=0;
		bandstr="";
		for(int i=1;i<=noband;i++)
		{
			if(request.getParameter("bsel"+i)!=null)
			{
				countofband++;
				bandstr=bandstr+i+" ";
			}
		}
		error_msg+="d";
	}
	p1=request.getParameter("T3");       //---------------classes--------------------//
	p2=request.getParameter("T5");       //-----------------max. itr-----------------//
	p3=request.getParameter("T4");       //-----------------final cluster center file--//
	error_msg+="e";
	if(request.getParameter("D9")!=null)
	{
		selectedcentre=request.getParameter("D9");
	}
	error_msg+="f";
	ctype=request.getParameter("D7");
	
	error_msg+="g";
	String ipimage="";

	if(selected.equals(init))
	{
		ipimage="C:/uploads/common/" + init;	
	}
	else
	{
		ipimage="C:/uploads/" +session_user+"/" + init;	
	}
	error_msg+="h";
//---------------------------------PROCESSING-------------------------------//
	error_msg+=Integer.parseInt(p1)+","+Integer.parseInt(p2)+","+countofband+","+bandstr+","+"C:\\uploads\\"+session_user + "\\" + p3+","+"C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/";

	ReadImage ri=new ReadImage(Integer.parseInt(p1),Integer.parseInt(p2),countofband,bandstr,"C:\\uploads\\"+session_user + "\\" + p3,"C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");
	if(ctype.equals("User Specified"))
	{
		ri.setCentre("C:\\uploads\\"+session_user + "\\" + selectedcentre);
		ri.readImage(ipimage);
	}
	else
	{
		ri.readImage(ipimage);
		ri.generateCentre();
	}	
	ri.iterate();
	ri.genOutput();
	ri.genFinalCentre();
	error_msg+="i";
//---------------------------------------------------------------------------//	
	
	
	
	filter=0;
	display=1;
	disable_filter="";
	
	gen="1";
	error_msg+="j";
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
<title>Experiment 9: K-Means Clustering</title>
</head>

<body bgcolor="#E1F1FB">



<form name="form1" method="POST" action="--WEBBOT-SELF--">
 <input type="hidden" name="h6" style="visibility: hidden;" size="1" id="fp6" ><input type="hidden" name="h1" style="visibility: hidden;" size="1" id="fp1"><input type="hidden" name="h5" style="visibility: hidden;" size="1" id="fp5" ><input type="hidden" name="h4" style="visibility: hidden;" size="1" id="fp2"><input type="hidden" name="hh5" style="visibility: hidden;" size="1" id="fp3" >
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
<input type="hidden" name="classify" value="0">
<input type="hidden" name="selectbands" value="0">

<%//out.println(error_msg);%>
<p align="center">

<table id="cnt1" border="1" cellspacing="0" width="808"  cellpadding="0" style="border-style:solid; border-collapse: collapse" bordercolor="#9999FF" >

	<tr>
    	<td width="806" height="79%" style="border-left:1px none #9999FF; border-right:1px none #9999FF; background-repeat: repeat-x; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" colspan="2" valign="top" bgcolor="#0E92E4">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="33">
          <tr>
            <td width="50%" height="30" style="border-bottom-style: solid; border-bottom-width: 1">
            <p style="margin-top: 4"><font size="5" color="#FFFFFF">K-Means Clustering</font></td>
            <td width="50%" height="30" style="border-bottom-style: solid; border-bottom-width: 1">
            <p align="right" style="margin-top: 13"><font color="#FFFFFF">
            Virtual Satellite Image Processing and Analysis Lab, IIT Bombay</font></td>
          </tr>
        </table>
        </td>
  	</tr>
  
  
  	<tr>
    	<td width="806" height="1%" colspan="2" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="383" height="12%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">&nbsp;&nbsp; Select Image</td>
    	<td width="422" height="12%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">
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
    	<td width="806" height="1%" colspan="2" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="383" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;<b><i>Clustering Parameters</i></b></td>
    	<td width="422" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="383" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;&nbsp; No. Of Bands To Be Used</td>
    	<td width="422" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
            <select size="1" name="D8" value="" onchange='verify1(this)' style="width: 170;" <%=disable_filter%>>
 			<%if(btype.equals("All"))
 			{%> 
				<option selected>All</option>
  			<%}
 			 else
 			 {%>
				<option>All</option>
  			<%}%>
			<%if(btype.equals("Custom"))
 			{%> 
				<option selected>Custom</option>
  			<%}
 			 else
 			 {%>
				<option>Custom</option>
  			<%}%>
			

		 </select></td>
  	</tr>
  <%if(genbands==1)
  {%>
  	<tr>
    	<td width="383" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;</td>
    	<td width="422" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        	&nbsp;</td>
  	</tr>
  	<tr>
    	<td width="383" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;<b><i>Select Desired Bands</i></b></td>
    	<td width="422" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        	&nbsp;</td>
  	</tr>
	<tr>
    	<td width="806" height="1%" colspan="2" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        &nbsp;
        <%for(int i=1;i<=noband;i++)
          {
          	%>
            	<input type="checkbox" id="bsel<%=(i+"")%>" name="bsel<%=(i+"")%>" value="ON">&nbsp; Band <%=i%><%if(i!=noband){%></br>&nbsp;<%}%>
            <%}
            %> 

        </td>
 	</tr>
  
  <%}%>
  	<tr>
    	<td width="383" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;&nbsp; Maximum No. Of Iteration</td>
    	<td width="422" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        	<input type="text" name="T5" size="5" value="<%=p2%>" <%=disable_filter%>></td>
  	</tr>
  
  	<tr>
    	<td width="383" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;&nbsp; Initial Cluster Centers</td>
    	<td width="422" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        	<select size="1" name="D7" value="" onchange='classtype(this)' style="width: 170;" <%=disable_filter%>>
 			<%if(ctype.equals("Random"))
 			{%> 
				<option selected>Random</option>
  			<%}
 			 else
 			 {%>
				<option>Random</option>
  			<%}%>
  			<%if(ctype.equals("User Specified"))
 			{%> 
				<option selected>User Specified</option>
  			<%}
 			 else
 			 {%>
				<option>User Specified</option>
  			<%}%>
			
			

		 </select></td>
  	</tr>
  
  	<tr>
    	<td width="383" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;&nbsp; Select Initial Cluster Centers File</td>
    	<td width="422" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        	<select size="1" name="D9" style="width: 170;" value="" <%=disable_filter%>>
  <%if(selectedcentre.equals("---select---"))
  {%>
  <option selected>---select---</option>
  <%}
  else
  {%>
  <option>---select---</option>
  <%}
  
  if(files.length>0)
  {
  	for(int i=0;i<files.length;i++)
  	{
  		if((files[i].toLowerCase()).lastIndexOf(".ctr")>0)
  		{
  			if(selectedcentre.equals(files[i]))
			{%>	
  	  			<option selected><%=selectedcentre%></option>
   		 	<%}
    		else
  		  	{%>
    			<option><%=files[i]%></option>
    		<%}
  		}
  		
    }
  }%>
</select></td>
  	</tr>
  
  	<tr>
    	<td width="383" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;&nbsp; Desired No. Of Classes (Maximum 256)</td>
    	<td width="422" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        	<input type="text" name="T3" size="5" value="<%=p1%>" <%=disable_filter%>></td>
  	</tr>
  
  	<tr>
    	<td width="383" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;&nbsp; Name of File, storing final cluster 
        centers</td>
    	<td width="422" height="1%" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        	<input type="text" name="T4" size="5" value="<%=p3%>" <%=disable_filter%>></td>
  	</tr>
  
  	<tr>
    	<td width="806" height="5%" colspan="2" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  &nbsp;</td>
  	</tr>
  
 	<tr>
    	<td width="806" height="1%" colspan="2" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        &nbsp;<input type="button" value="Process" name="B1" onclick='process()' style="visibility:visible; height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" ></p>
        </td>
 	</tr>
  
 	<tr>
    	<td width="806" height="0%" colspan="2" bgcolor="#FFFFFF" style="border-style: none; border-width: medium">  
        &nbsp;</td>
 	</tr>
	</table>
</form>
</div>

<script language = "javascript" >
  {
  



  	if(document.form1.D7.value=="User Specified")
  	{
  		document.form1.D9.disabled=false;
  		document.form1.T3.disabled=true;
  	}
  	else
  	{
		document.form1.D9.disabled=true;
		document.form1.T3.disabled=false;
  	}
  	
  }

function classtype(list)
  {
  	if(document.form1.D7.value=="User Specified")
  	{
  		document.form1.D9.disabled=false;
  		document.form1.T3.disabled=true;
  	}
  	else
  	{
		document.form1.D9.disabled=true;
		document.form1.T3.disabled=false;
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
  	
  	document.form1.action="e9.jsp";
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
  	if(document.form1.D8.value=="Custom")
  	{
		document.form1.bnd.value="0";
		document.form1.selectbands.value="1";
		document.form1.action="e9.jsp";
		document.form1.submit();
			
		
  	}

		
	
  }
  
  function process()
  {
  		var param1=parseInt(document.form1.T3.value);
  		var param2=parseInt(document.form1.T5.value);
  		
  		var count=0;
  		if(document.form1.D8.value=="Custom")
  		{
  			
			for(var i=1;i<=parseInt(document.form1.noofband.value);i++)
			{
					if(this.document.getElementById("bsel"+i).checked==true)
					{
						count++;
					}
				
			}
			
  		
  		}
  		
  		if((document.form1.D8.value=="Custom")&&(count==0))
		{
			alert("atleast one Band should be selected for classification. please try again.");
		}
  		else if(param2<=0)
  		{
  			alert("Maximum number of iteration should be greater than 0. please try again.");

  		}
  		else if((document.form1.D7.value=="User Specified")&&(document.form1.D9.value=="---Select---"))
  		{
  			alert("Valid Initial Cluster Centers File is Required. Either you dont have any cluster centers file or you need to select correct file.");

  		}
  		else if((document.form1.D7.value=="Random")&&((param1<=0)||(param1>256)))
  		{
  			alert("No. of desired classes should be greater than 0 and less than equal to 256. Please, try with correct values.");

  		}
  		else if(document.form1.T4.value=="")
  		{
  			alert("Enter the name of file to store the final cluster centers. It will be stored in your user space, you can use this file later. Dont give any extension with file name.");

  		}
  		else
  		{
  			document.form1.D1.disabled=false;
  			document.form1.D8.disabled=false;
  			document.form1.D7.disabled=false;
  			document.form1.D9.disabled=false;
			document.form1.T3.disabled=false;
			document.form1.T5.disabled=false;
			document.form1.T4.disabled=false;
  			document.form1.bnd.value="0";

	  		document.form1.classify.value="1";
  			document.form1.action="e9.jsp";
  			document.form1.submit();
  		}
  		
  }
  	
  

if(document.form1.generate.value=="1")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "out_exp9.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "image_name");
    hiddenField.setAttribute("value", document.form1.D1.value);
    hiddenField.setAttribute("type", "hidden");
     form.appendChild(hiddenField);

    
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("out_exp9.html", 'formresult', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}



                  </script>

</body>

</html>