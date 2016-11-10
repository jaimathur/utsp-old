<%@ page language = "java" import = "java.io.*, java.awt.*, javax.imageio.*, imageprocessing.*,java.awt.image.*;" %>

<html>
<%
ReadImage ri=null;
String selected="---select---";
String sline="";
String sline1="";
BufferedReader br=null;
int noband=0;
String disable="disabled";

String files[]=null;
String sampleFiles[]=null;
String gen="0";
String nob="0";
int band=0;
String sb1="";
String method="0";
int inv=0;
File f;
int jp=0;
int tp=0;
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
 		disable="disabled";
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
 				  {
		 		
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
						{	
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
					//out.println(e.toString());
					}
				}
			} */
 		}
 	}
 	
 }
 sb1=noband+"";
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


	String check="";
	String init="---select---";
	String init1="";
	
	
	
	
	
	if(request.getParameter("D1")==null || (request.getParameter("bnd")).equals("1"))
	{
	}
	else
	{
		noband=Integer.parseInt(request.getParameter("noofband")+"");
		if((request.getParameter("D6")).equals("Covariance"))
		{
		     method="0";
		}
		else
		{
			method="1";
		}
		gen=request.getParameter("generate");
		disable="";
		init=request.getParameter("D1");
		selected=init;
		if(gen.equals("1"))
		{
			sb1=request.getParameter("D7");
			inv=1;
			disable="";
		}
		else
		{
			sb1="0";
			inv=0;
		}
	
		
		
		
		
		Process pr=null;
		if(selected.equals(init))                 //-----------for sample images-----------------------//
		{
			PrintStream p=new PrintStream(new FileOutputStream("C:\\uploads\\" + session_user + "\\param.txt",false));
			System.setOut(p);
			System.out.println("C:/uploads/common/" + init);
			System.out.println(method);
			System.out.println(sb1);
			System.out.println("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");
		
			if(!(gen.equals("1")))
			{
				sb1=noband+"";
			}
		 	pr= Runtime.getRuntime().exec("C:\\VSIP\\pca.exe C:\\uploads\\"+session_user+"\\param.txt");
		 	
		 	gen="1";
		 	disable="";
		}
		else                                              //------------for user images-----------------------//
		{
			PrintStream p=new PrintStream(new FileOutputStream("C:\\uploads\\"+session_user+"\\param.txt",false));
			System.setOut(p);
			System.out.println("C:/uploads/" +session_user+"/" + init);
			System.out.println(method);
			System.out.println(sb1);
			System.out.println("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");
		
			if(!(gen.equals("1")))
			{
				sb1=noband+"";
			}
		
			pr= Runtime.getRuntime().exec("C:\\VSIP\\pca.exe C:\\uploads\\"+session_user+"\\param.txt");
			
			gen="1";
			disable="";
		}
		pr.waitFor();
		pr.destroy();
	
		
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
<title>Experiment 4: Principal Component Analysis(PCA)</title>
</head>

<body bgcolor="#E1F1FB">




<form name="form1" method="POST" action="--WEBBOT-SELF--">
 <input type="hidden" value="0" name="bnd" value="<%=band%>">
<input type="hidden" name="prevurl" value="">
<input type="hidden" name="type" value="">
<input type="hidden" name="noofband" value="<%=noband%>">
<input type="hidden" name="inverse" value="<%=inv%>">
<input type="hidden" name="generate" value="<%=gen%>">

<p align="center">

<table id="cnt1" border="1" cellspacing="0" width="849"  cellpadding="0" style="border-style:solid; border-collapse: collapse; " bordercolor="#9999FF" height="1" >

	<tr>
    	<td width="847" height="1" colspan="3" style="border-left:1px none #9999FF; border-right:1px none #9999FF; background-repeat: repeat-x; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" valign="top" bgcolor="#0E92E4" height="2">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="1">
          <tr>
            <td width="50%" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
            <p style="margin-top: 0; margin-bottom:0"><font size="5" color="#FFFFFF">Principal Component Analysis(PCA)</font></td>
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
    	<td width="295" height="12%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;Select Image</td>
    	<td width="152" height="12%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
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
    	<td width="398" height="12%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
        <a href="javascript:upload()">Upload more images</a></td>
 	</tr>
  
  	
  
  	<tr>
    	<td width="295" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Method</td>
    	<td width="551" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	<select size="1" name="D6" value="" onchange='verify1(this)'>
 			<%if(method.equals("0"))
 			{%> 
				<option selected>Covariance</option>
  				<option>Correlation</option>
 			 <%}
 			 else
 			 {%>
				<option>Covariance</option>
  				<option selected>Correlation</option>
			<%}%>
 			 </select>
 		</td>
  	</tr>
  
  	<tr>
    	<td width="847" height="1%" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="847" height="1%" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<i><b>Inverse PCA 
        (reconstruction of bands from principal components of the original image)</b></i></td>
  	</tr>
  
  	<tr>
    	<td width="847" height="1%" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  	<tr>
    	<td width="295" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;Number of bands for inverse PCA</td>
    	<td width="551" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF"><select size="1" name="D7" value="" <%=disable%>>
  <%for(int i=1;i<=noband;i++)
  {
  	if(sb1.equals(i+""))
  	{
  		%>
  	<option selected><%=i%></option>
  	<%}
  	else
  	{%>
  <option><%=i%></option>
  <%}
  }%>
  </select></td>
  	</tr>
	<tr>
    	<td width="847" height="1%" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
 	</tr>
	<tr>
    	<td width="847" height="1%" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        &nbsp;<input type="button" value="Process" name="B1"  onclick='verify2()' style="height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" ></p>
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

 function band(list)
  {
 
  	if(document.form1.D1.value=="---select---")
  	{
  		
  		alert("choose an image.");
  		
  	}
  	else
  	{
  	document.form1.bnd.value="1";
  	
  	document.form1.action="e4.jsp";
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
  	else if((document.form1.generate.value=="1")||(document.form1.inverse.value=="1"))
  	{
  		if(document.form1.D7.value=="")
  		{
  		    alert("Select No. of bands for reconstruction.");
  		}
  		else
  		{
  			//document.form1.type.value=document.form1.D6.value;
  			document.form1.D6.disabled=false;
			document.form1.bnd.value="0";
	    	document.form1.action="e4.jsp";
  		    document.form1.submit();

  		}

  	}
    else
    {
    	//document.form1.type.value=document.form1.D6.value;
    		document.form1.D6.disabled=false;
    	document.form1.bnd.value="0";
    	document.form1.action="e4.jsp";
  	    document.form1.submit();
  	    

   	}
  }
  
if(document.form1.generate.value=="1")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "original.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "image_name");
    hiddenField.setAttribute("value", document.form1.D1.value);
    hiddenField.setAttribute("type","hidden");
     form.appendChild(hiddenField);

     var hiddenField1 = document.createElement("input");              
    hiddenField1.setAttribute("name", "nob");
    hiddenField1.setAttribute("value", document.form1.noofband.value);
    hiddenField1.setAttribute("type","hidden");
    form.appendChild(hiddenField1);
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("original.html", 'formresult', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}
if((document.form1.generate.value=="1")&&(document.form1.inverse.value=="0"))
{
	document.form1.D6.disabled=true;
}
if(document.form1.generate.value=="1")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "pca.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult1");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "image_name");
    hiddenField.setAttribute("value", document.form1.D1.value);
    hiddenField.setAttribute("type","hidden");
     form.appendChild(hiddenField);

     var hiddenField1 = document.createElement("input");              
    hiddenField1.setAttribute("name", "nob");
    hiddenField1.setAttribute("value", document.form1.noofband.value);
    hiddenField1.setAttribute("type","hidden");
    form.appendChild(hiddenField1);
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("pca.html", 'formresult1', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}
if(document.form1.generate.value=="1")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "pcadetails.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult2");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "image_name");
    hiddenField.setAttribute("value", document.form1.D1.value);
    hiddenField.setAttribute("type","hidden");
     form.appendChild(hiddenField);

     var hiddenField1 = document.createElement("input");              
    hiddenField1.setAttribute("name", "nob");
    hiddenField1.setAttribute("value", document.form1.noofband.value);
    hiddenField1.setAttribute("type","hidden");
    form.appendChild(hiddenField1);
    var hiddenField2 = document.createElement("input");              
    hiddenField2.setAttribute("name", "method");
    hiddenField2.setAttribute("value", document.form1.D6.value);
    hiddenField2.setAttribute("type","hidden");
    form.appendChild(hiddenField2);
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("pcadetails.html", 'formresult2', 'scrollbars=yes,menubar=no,height=600,width=800,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}

if(document.form1.inverse.value=="1")
{
//alert("");
	
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "reconstructedpca.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult3");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "image_name");
    hiddenField.setAttribute("value", document.form1.D1.value);
    hiddenField.setAttribute("type","hidden");
    form.appendChild(hiddenField);
     var hiddenField1 = document.createElement("input");              
    hiddenField1.setAttribute("name", "nob");
    hiddenField1.setAttribute("value",'<%=noband%>');
    hiddenField1.setAttribute("type","hidden");
    form.appendChild(hiddenField1);
     

	document.form1.D7.disabled=true;
	document.form1.inverse.value="0";
	document.form1.generate.value="0";

    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("reconstructedpca.html", 'formresult3', 'scrollbars=yes,menubar=no,height=600,width=800,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}

                  </script>

</body>

</html>