<%@ page language = "java" import = "java.io.*, java.util.Date, java.awt.*, javax.imageio.*, imageprocessing.*, java.awt.image.*;" %>

<html>
<head>
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Experiment 1: Image Viewer</title>
</head>

<body bgcolor="#E1F1FB">

<%

ReadImage ri=null;

String splitedfile[]=null;
String row="";
String col="";
Display disp=null;
//GLOBAL UPLOAD,EXPERIMENT AND OUTPUT PATH
String globalinpath="";
String inpath="";//"C:/uploads/";
String outpath="";
String exppath="";
long t1=System.nanoTime();//cal.getTimeInMillis();
long t2=0;
int img_subset=0;


String selected="---select---";
int noband=0;
String subset="disabled";

Date dt=new Date();
String files[]=null;
String sampleFiles[]=null;
String message="";

File f;
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
			
		}
		else if(cookies[i].getName().equals("rootuploadpath"))
		{
					
			globalinpath=cookies[i].getValue();
			
		}
		else if(cookies[i].getName().equals("outputpath"))
		{

			outpath=cookies[i].getValue();
			
		}
		else if(cookies[i].getName().equals("exppath"))
		{

			exppath=cookies[i].getValue();
					
		}
	}
}
//-------------------------------------------------------------------------------------------//

//outpath="C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/";
outpath=outpath+session_user+"/";

String timeStamp=null;
timeStamp=""+(dt.getYear()+1900)+""+(dt.getMonth()+1)+""+dt.getDate()+""+dt.getHours()+""+dt.getMinutes()+""+dt.getSeconds();
if(request.getParameter("bnd")!=null)
{
 		if(true)
 		{
 			String noOfband[];
 			String filecheck="";
 			
 			selected=request.getParameter("D1");
 			
 			f=new File(globalinpath+"common");
 			sampleFiles=f.list();
 			for(int i=0;i<sampleFiles.length;i++)
 			{
 				if(sampleFiles[i].equals(selected))
 				{
 					inpath=globalinpath+"common/"+selected;
 					break;
 				}
 			}
 			if(!inpath.equals(globalinpath+"common/"+selected))
 			{
 				f=new File(globalinpath+session_user);
 				sampleFiles=f.list();
 				for(int i=0;i<sampleFiles.length;i++)
 				{
 					if(sampleFiles[i].equals(selected))
 					{
 						inpath=globalinpath+session_user+"/"+selected;
 						break;
 					}
 				}
	
 			
 			}
 			
 			//selected=request.getParameter("infilewithpath");
 			ri=new ReadImage(inpath,1);
 			noband=ri.b;
 			
 			
 			
 
 		}
 }
 //t2=System.nanoTime();
	//out.println((t2-t1)+"");
	
 
try{
//------------new way--------------------//
	f=new File(globalinpath+"common/");
	sampleFiles=f.list();
	//out.println((f.list()).length);
	f=new File(globalinpath+session_user);
	files=f.list();

	
	

  

	
	
	
	
//out.println((f.list()).length);


	}
	catch(Exception e)
	{out.println(e.toString());
	}


	String style="visibile: hide; visibility:hidden";
	
	String init="---select---";
	String sb1="";
	String sb2="";
	String sb3="";
	String r1="1";
	String r2="1";
	String c1="1";
	String c2="1";
	String gen="";
	String subm="0";
	String selectedbands="0";
	int output=0;
	if(request.getParameter("D1")==null || (request.getParameter("bnd")).equals("1"))
	{//out.println("asd");
	}
	else
	{
		gen=request.getParameter("generate");
		subset="";
		
	//check=new String(request.getParameter("T6"));
	init=request.getParameter("D1");
	//out.println(init);
	if(request.getParameter("R1")!=null)
	{
		if(request.getParameter("R1").equals("V1"))
		{
		    if(request.getParameter("D2")!=null)
			{
				sb1=request.getParameter("D2");
				sb2=request.getParameter("D3");
				sb3=request.getParameter("D4");
			}
			selectedbands="3";
		
		}
		else
		{
			
			if(request.getParameter("D5")!=null)
			{
				sb1=request.getParameter("D5");
				sb2=request.getParameter("D5");
				sb3=request.getParameter("D5");
			selectedbands="1";	
			}
		}
	}
	
	
	//------------upto this nob stores no. of bands in display and sb1,sb2,sb3 stores color comb-----------------//
	
	
	
	//----------------write code for display--------------------//
	try{

		ri=new ReadImage(inpath);
		ri.writeImage(Integer.parseInt(sb1),Integer.parseInt(sb2),Integer.parseInt(sb3),ri.imageData,ri.r,ri.c,outpath+"out_original_img");	
	
		PrintStream p=new PrintStream(new FileOutputStream(globalinpath+session_user+"\\param.txt",false));
		System.setOut(p);
		System.out.println(outpath+"out_original_img.bmp");
		System.out.println(outpath+"");
		p.close();
	
		//Process pr=null;
//		pr= Runtime.getRuntime().exec("C:\\VSIP\\histogram.exe C:\\uploads\\"+session_user+"\\param.txt");
//		pr.waitFor();
//		pr.destroy();

		output=1;
		subm="1";
	}
	catch(Exception e)
	{
		out.println(e.toString());
	//message=e.toString()+"";
	
	}
	
	

	
	
	//t2=System.nanoTime();//cal.getTimeInMillis();
	//out.println((t2-t1)+"");
	
	
	//---------------------------------------------------------//
	
	//-----------below this sud b the code for subset---------------//
	
		try{
//		out.println("ghusa");
		if(gen.equals("1"))
		{
//		out.println("ghusa1");
		
			r1=request.getParameter("T2");
			r2=request.getParameter("T4");
			c1=request.getParameter("T1");
			c2=request.getParameter("T3");
		
			if(request.getParameter("C1").equals("V2"))
			{
			
				String outsubsetpath[];
			
				if((gen.equals("1"))&&(request.getParameterValues("C2")!=null))
				{
					outsubsetpath=new String[2];
					outsubsetpath[0]=outpath+"out_original_img_subset";
					outsubsetpath[1]=globalinpath+session_user+"/"+session_user+ timeStamp;
					ri.subset(Integer.parseInt(c1),Integer.parseInt(r1),Integer.parseInt(c2),Integer.parseInt(r2),outsubsetpath,Integer.parseInt(sb1),Integer.parseInt(sb2),Integer.parseInt(sb3));
				}
				else
				{
					outsubsetpath=new String[1];
					outsubsetpath[0]=outpath+"out_original_img_subset";

					ri.subset(Integer.parseInt(c1),Integer.parseInt(r1),Integer.parseInt(c2),Integer.parseInt(r2),outsubsetpath,Integer.parseInt(sb1),Integer.parseInt(sb2),Integer.parseInt(sb3));

				}
			
				//disp.subset(Integer.parseInt(c1),Integer.parseInt(r1),Integer.parseInt(c2),Integer.parseInt(r2));
//				out.println(disp.y[1][1]);
		
				img_subset=1;

			}
			else
			{
				//PrintStream p=new PrintStream(new FileOutputStream("C:\\uploads\\"+session_user+"_param\\RGB.txt",false));
				//System.setOut(p);
				//System.out.println(sb1+" "+sb2+" "+sb3);
			//	System.out.println(tp+" ");
				
				img_subset=2;
				r2=r1;
				c2=c1;
			}
			
		}
		else
		{
			img_subset=0;
			
		}

		
//		out.println("ghusa");
	//t2=System.nanoTime();//cal.getTimeInMillis();
	//out.println((t2-t1)+"");
	

/*		
		//----------------------------------saving subset image into user space--------------------------------//
		if((img_subset==1)&&(gen.equals("1"))&&(request.getParameterValues("C2")!=null))
		{
			InputStream fin = new FileInputStream(outpath+session_user+"/out_original_img_subset.bmp");
    		OutputStream fout = new FileOutputStream(globalinpath+session_user+"/"+session_user+ timeStamp+".bmp");

    		// Transfer bytes from in to out
    		byte[] buf = new byte[1024];
    		int len;
    		while ((len = fin.read(buf))>0) 
    		{
        		fout.write(buf, 0, len);
    		}
    		fin.close();
    		fout.close();
			
			PrintStream ps=new PrintStream(new FileOutputStream(globalinpath+session_user+"_bin/subset.txt",false));
			System.setOut(ps);
			System.out.println(globalinpath+session_user+"/"+session_user+ timeStamp+".bmp");
			System.out.println(globalinpath+session_user+"_bin/"+session_user+timeStamp);
			
			Process pr=null;
			pr= Runtime.getRuntime().exec(exppath+"imgtobin.exe "+globalinpath+session_user+"_bin/subset.txt");

			ps.close();
            pr.waitFor();
			pr.destroy();
			

			out.println("savesubset");
		//	InputStream fin = new FileInputStream("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs_opti/output/"+session_user+"/out_original_img_subset.bmp");
    	//	OutputStream fout = new FileOutputStream("c:/uploads/"+session_user+"/"+session_user+ timeStamp+".bmp");

    		
		}
		
		
		//-----------------------------------------------------------------------------------------------------//
		
		*/
		
		
		
}
		catch(Exception e)
		{
			out.println(e.toString() +"");
		}
	}
	
	
%>


<%

out.println(session_user+" is sessioned" + inpath+" "+globalinpath+" "+outpath+" "+exppath);

%>

<form name="form1" method="POST" action="--WEBBOT-SELF--">

 
 <!--webbot bot="SaveResults" u-file="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\siplabs\_private\form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" -->
 <input type="hidden" value="0" name="bnd">
 <input type="hidden" name="prevurl" value="">
 <input type="hidden" name="pickpoint" value="0">
 <input type="hidden" name="sub" value="<%=subm%>">
 <input type="hidden" name="noofband" value="<%=selectedbands%>">
 
 <input type="hidden" name="subsettype" value="<%=img_subset%>">
 <input type="hidden" name="generate" value="0">
 <input type="hidden" name="rectx" id="rectx" value="0">
<input type="hidden" name="recty" id="recty" value="0">
<input type="hidden" name="rectw" id="rectw" value="0">
<input type="hidden" name="recth" id="recth" value="0">


<p align="center">

<table id="cnt1" border="1" cellspacing="0" width="849"  cellpadding="0" style="border-style:solid; border-collapse: collapse; " bordercolor="#9999FF" height="1" >

	<tr>
    	<td width="100%" colspan="4" height="1" style="border-left:1px none #9999FF; border-right:1px none #9999FF; background-repeat: repeat-x; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" valign="top" bgcolor="#0E92E4" height="2">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="1">
          <tr>
            <td width="50%" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
            <p style="margin-top: 0; margin-bottom:0"><font size="5" color="#FFFFFF">Image Viewer</font></td>
            <td width="50%" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
            <p align="right" style="margin-top: 0; margin-bottom:0"><font color="#FFFFFF">
            Virtual Satellite Image Processing and Analysis Lab, IIT Bombay</font></td>
          </tr>
        </table>
        </td>
  	</tr>
  
  
  	<tr>
    	<td width="847" height="1%" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="259" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">Select Image</td>
    	<td width="587" height="1%" colspan="3" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;<select size="1" name="D1" style="width: 142" value="" onchange ='band(this)'>
  <%
  try{
  
  if(selected.equals("---select---"))
  {%>
  <option selected>---select---</option>
  <%}
  else
  {
  %>
  <option>---select---</option>
  <%}
  if(sampleFiles.length>0)
  {
  
  	for(int i=0;i<sampleFiles.length;i++)
  	{
  		if((((sampleFiles[i]).toLowerCase()).lastIndexOf(".hdr")>0) ||(((sampleFiles[i]).toLowerCase()).lastIndexOf(".tif")>0)||(((sampleFiles[i]).toLowerCase()).lastIndexOf(".ctr")>0) || (((sampleFiles[i]).toLowerCase()).lastIndexOf(".exe")>0) || (((sampleFiles[i]).toLowerCase()).lastIndexOf(".txt")>0) || (((sampleFiles[i]).toLowerCase()).lastIndexOf((session_user+"").toLowerCase())>0))
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
    	<td width="381" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
    	<td width="465" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="381" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  <input type="radio" value="V1" checked name="R1" onclick="view()"><b>View 
        color composite</b></td>
    	<td width="465" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF"><input type="radio" name="R1" value="V2" onclick="view()"><b>View 
        a particular band of image</b></td>
  	</tr>
  	<tr>
    	<td width="259" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    	<td width="121" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    	<td width="465" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
  	</tr>
  	<tr>
    	<td width="259" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;Choose Red Band</td>
    	<td width="121" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;<select size="1" name="D2" value="">
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
    	<td height="1%" width="158" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;Choose Band</td>
    	<td height="1%" width="306" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;<select size="1" name="D5" value="">
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
    	<td  height="1%" width="259" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;Choose Green Band</td>
    	<td  height="1%" width="121" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;<select size="1" name="D3" value="">
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
    	<td height="1%" width="158" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    	<td height="1%" width="306" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
 	</tr>
	<tr>
    	<td height="1%" width="259" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;Chose Blue Band</td>
    	<td height="1%" width="121" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;<select size="1" name="D4" value="">
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
    	<td  height="1%" width="158" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
    	<td  height="1%" width="306" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;</td>
 	</tr>
	<tr>
    	<td width="847" height="1%" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
 	</tr>
	<tr>
    	<td width="847" height="1%" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        &nbsp;<input type="button" value="Display" name="B1"  onclick='verify2()' style="height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" ></p>
        </td>
 	</tr>
	<tr>
    	<td width="847" height="1%" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
	</tr>  
	<tr>
    	<td width="847" height="1%" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  <input type="radio" name="C1" value="V2" checked onclick='subset()' <%=subset%>><b>Image 
        subset and pixel values of each band&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <input type="radio" name="C1" value="V3" onclick='subset()' <%=subset%>> Pixel values of each band at a 
        point</b></td>
	</tr>  
	<tr>
    	<td width="847" height="0%" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
    	<table border="0" cellspacing="0" width="798"  height="12%" cellpadding="0" style="border-collapse: collapse" bordercolor="#111111" >
  <tr>
    <td width="165">
    <p style="margin-top: 1"><label for="fp1" id="l1">Minimum Row Value</label><input type="hidden" name="T5" size="1" id="fp1"></td>
    <td width="107">
    <p style="margin-top: 1">&nbsp;<input type="text" name="T1" size="10" <%=subset%> value="<%=c1%>"></td>
    <td width="166">
    <p style="margin-top: 1"><label for="fp3" id="l2">Minimum Column Value</label><input type="hidden" name="T7" size="1" id="fp3"></td>
    <td width="108">
    <p style="margin-top: 1">&nbsp;<input type="text" name="T2" size="10" <%=subset%> value="<%=r1%>"></td>
    <td width="252">
    <p style="margin-top: 1">&nbsp;</td>
  </tr>
  <tr>
    <td width="165">
    <p style="margin-top: 1"><label for="fp2" id="l3">Maximum Row Value</label><input type="hidden" name="T6" size="1" id="fp2"></td>
    <td width="107">
    <p style="margin-top: 1">&nbsp;<input type="text" name="T3" size="10" <%=subset%> value="<%=c2%>"></td>
    <td width="166">
    <p style="margin-top: 1"><label for="fp4" id="l4">Maximum Column Value</label><input type="hidden" name="T8" size="1" id="fp4"></td>
    <td width="108">
    <p style="margin-top: 1">&nbsp;<input type="text" name="T4" size="10" <%=subset%> value="<%=r2%>"></td>
    <td width="252">
    <p style="margin-top: 1">&nbsp;</td>
  </tr>
  <tr>
  <td width="798" colspan="5">&nbsp;</td>
  </tr>	
  <tr>
  <td width="798" colspan="5">
   <p><input type="checkbox" name="C2" value="ON" <%=subset%>><b>Save subset image in your 
 user space for future use</b></p>
 <p>
 </br>
&nbsp;<input type="button" value="Generate" name="B4" onclick='pixelGen()' <%=subset%> style="height: 28px; width: 120px; color: #FFFFFF; border-style: solid; border-width: 0; background-image: url('images/blackbutton.jpg')"></p>
 </br>
 </br>
 	</td>


  </tr>
 
</table>


    	</td>
	</tr>  
</table>
 

    


</br>
<%if((img_subset==1)&&(gen.equals("1")))
    {%>
 <table border="0" cellspacing="0" width="100%"  height="12%" cellpadding="0" style="border-style:solid; border-width:1; padding:3; border-collapse: collapse; background-color:#E1F1FB" bordercolor="#E1F1FB" >
<tr><td>
 <p style="text-align: left">
 

   <p style="text-align: left">
 


    <p style="margin-top: 0; margin-bottom: 0"><font color="#FFFFFF">
    <span style="background-color: #0E92E4; font-weight:700">Subset Image</span></font></p> 
       <p style="margin-top: 0; margin-bottom: 0"> 
       <img id="p" src="output/<%=session_user%>/out_original_img_subset.bmp?date=<%=dt%>">

    <%}
    if(output==1)
    {%> </p>
   <p style="margin-top: 0; margin-bottom: 0"><font color="#FFFFFF">
   <span style="background-color: #0E92E4; font-weight:700">Original Image (pick the points of rectangular window from this image)</span></font></p>
       <p style="margin-top: 0; margin-bottom: 0"><img id="pointer_div" onclick="point_it(event)" src="output/<%=session_user%>/out_original_img.bmp?date=<%=dt%>">
 </td></tr>
</table>

	<%}
	
	
	}
	catch(Exception e)
	{}
	t2=System.nanoTime();
	out.println(t1+" "+t2);
	
	%>

<script language = "javascript" >
{
//alert('<%=t1%>');
//alert('<%=t2%>');

var classcolor= "#FFFFFF";
var click=0;
var x1=0;
var x2=0;
var y1=0;
var y2=0;
var startx=0;
var starty=0;
var w=0;
var h=0;
var classcounter=0;
var area=0;
var coordx1=0;
var coordx2=0;
var coordy1=0;
var coordy2=0;


document.form1.D5.disabled=true;
//document.form1.B2.disabled=true;
//document.form1.B3.disabled=true;
document.form1.T5.style.visibility='hidden';
document.form1.T6.style.visibility='hidden';
document.form1.T7.style.visibility='hidden';
document.form1.T8.style.visibility='hidden';
//document.form1.B5.style.visibility='hidden';

//document.form1.T1.disabled=true;
//this.document.getElementById('l1').disabled=true;
//document.form1.T2.disabled=true;
//this.document.getElementById('l2').disabled=true;
//document.form1.T3.disabled=true;
//this.document.getElementById('l3').disabled=true;
//document.form1.T4.disabled=true;
//this.document.getElementById('l4').disabled=true;

}
function view()
{
	if(document.form1.R1[0].checked)
	{
		document.form1.D2.disabled=false;
		document.form1.D3.disabled=false;
		document.form1.D4.disabled=false;
		document.form1.D5.disabled=true;
	}
	else
	{
		document.form1.D2.disabled=true;
		document.form1.D3.disabled=true;
		document.form1.D4.disabled=true;
		document.form1.D5.disabled=false;
	
	}
}
function subset()
{

if(document.form1.C1[0].checked)
	{
		//document.form1.B5.style.visibility='hidden';
		document.form1.B4.style.visibility='visible';
		this.document.getElementById('l1').innerHTML="Minimum Row Value";
		this.document.getElementById('l2').innerHTML="Minimum Column Value";
		this.document.getElementById('l3').innerHTML="Maximum Row Value";
		this.document.getElementById('l4').innerHTML="Maximum Column Value";
		document.form1.T1.disabled=false;
		//this.document.getElementById('l1').disabled=false;
		document.form1.T2.disabled=false;
		document.form1.C2.disabled=false;
		//this.document.getElementById('l2').disabled=false;
		document.form1.T3.disabled=false;
		//this.document.getElementById('l3').disabled=false;
		document.form1.T4.disabled=false;
		//this.document.getElementById('l4').disabled=false;
		document.form1.B2.disabled=false;
		document.form1.B3.disabled=false;
		document.form1.T3.style.visibility='visible';
		this.document.getElementById('l3').style.visibility='visible';
		document.form1.T4.style.visibility='visible';
		this.document.getElementById('l4').style.visibility='visible';
		document.form1.B3.style.visibility='visible';
		document.form1.B2.value="Pick Upper Left Corner   ";



		
	}
	else
	{
		//document.form1.B5.style.visibility='visible';
		document.form1.B4.style.visibility='visible';
		this.document.getElementById('l1').innerHTML="X Coordinate of pixel";
		this.document.getElementById('l2').innerHTML="Y Coordinate of pixel";
		document.form1.C2.disabled=true;
		document.form1.T1.disabled=false;
		//this.document.getElementById('l1').disabled=false;
		document.form1.T2.disabled=false;
		//this.document.getElementById('l2').disabled=false;
		document.form1.T3.style.visibility='hidden';
		this.document.getElementById('l3').style.visibility='hidden';
		document.form1.T4.style.visibility='hidden';
		this.document.getElementById('l4').style.visibility='hidden';
		document.form1.B2.disabled=false;

		document.form1.B2.value="Pick Pixel"
		document.form1.B3.style.visibility='hidden';
	
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
  	
  	document.form1.action="e1.jsp";
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
  	else if(document.form1.D2.value=="")
  	{
  		document.form1.bnd.value="0";
    	document.form1.action="e1.jsp";
  	    document.form1.submit();

  	}
  	else if((document.form1.D2.value==document.form1.D3.value)&&(document.form1.D4.value==document.form1.D3.value)&&(document.form1.R1[0].checked))
  	{
  		
  			alert("choose different color composition. different bands should be assigned to Red, Green and Blue");
  		
  	}
     else
     {
    	document.form1.bnd.value="0";
    	document.form1.action="e1.jsp";
  	    document.form1.submit();
  	    

    	}
  }
  function picku()
  {
  	document.form1.pickpoint.value="1";
  }
  function pickl()
  {
  	document.form1.pickpoint.value="2";
  }
  function point_it(event){
	//alert("a");
	var pos_x = event.offsetX?(event.offsetX):event.pageX-document.getElementById("pointer_div").offsetLeft;
	var pos_y = event.offsetY?(event.offsetY):event.pageY-document.getElementById("pointer_div").offsetTop;
//	document.getElementById("cross").style.left = (pos_x-1) ;
//	document.getElementById("cross").style.top = (pos_y-15) ;
//	document.getElementById("cross").style.visibility = "visible" ;
	if(!document.form1.C1[0].checked)
	{
		document.form1.T1.value=pos_x+"";
   		
   		document.form1.T2.value=pos_y+"";

	}
	else
	{
	if(click==0)
	{
	//alert("b");

		//alert(pos_x + "," + pos_y );
	    	//document.getElementById("T3_"+document.form1.selected_class.value).value = (parseInt(pos_x)+1)+"";
		    //document.getElementById("T4_"+document.form1.selected_class.value).value = (parseInt(pos_y)+1)+"";
		x1=event.pageX;
		y1=event.pageY;
		coordx1=pos_x;
		coordy1=pos_y;
		click=1;
		

		
	}
	else if(click==1)
	{
	//	document.getElementById("T5_0").value=pos_x;
		//alert(document.getElementById("pointer_div").height +"");

		//document.getElementById("T5_"+document.form1.selected_class.value).value = (parseInt(pos_x)+1)+"";
		//document.getElementById("T6_"+document.form1.selected_class.value).value = (parseInt(pos_y)+1)+"";
		x2=event.pageX;
		y2=event.pageY;
		coordx2=pos_x;
		coordy2=pos_y;
		var tempswap=0;
		if(x1>=x2)
		{
			w=x1-x2;
			startx=x2;
			tempswap=coordx1;
			coordx1=coordx2;
			coordx2=tempswap;
		}
		else
		{
			w=x2-x1;
			startx=x1;
		}
			
		if(y1>=y2)
		{
			h=y1-y2;
			starty=y2;
			tempswap=coordy1;
			coordy1=coordy2;
			coordy2=tempswap;

		}
		else	
		{
			h=y2-y1;
			starty=y1;
		}
		click=3;	
		

	//	alert(x1+ " " + y1+ " " + x2+ " " + y2+ " ");
		//alert("" + document.getElementById("rectx").value + " " + document.getElementById("recty").value + " " +  document.getElementById("rectw").value + " " + document.getElementById("recth").value);
		var newdiv=document.createElement("div");
   		newdiv.style.position="absolute";
   		newdiv.style.left = startx+"px";
   		newdiv.style.top  = starty+"px";
   		newdiv.style.width = w+"px";
   		newdiv.style.height = h+"px";
   		newdiv.style.backgroundColor = classcolor;
   		newdiv.style.visibility = 'visible';
   		newdiv.setAttribute("id","div0");
   		document.getElementsByTagName('body')[0].appendChild(newdiv);
   		document.form1.T1.value=coordy1+"";
   		document.form1.T3.value=coordy2+"";
   		document.form1.T2.value=coordx1+"";
   		document.form1.T4.value=coordx2+"";
   		}
   		//area=area+1;
   	/*	var newarea=document.createElement("input");
   		newarea.style.visibility='hidden';
   		newarea.setAttribute("id","area0");
   		newarea.setAttribute("name","area0");

   		newarea.setAttribute("value",coordy1 + " " + coordy2 + " " + coordx1 + " " + coordx2);// + " " + classcounter);
   		//var tbody=document.getElementById("training_table").getElementsByTagName("tbody")[0];//.appendChild(newarea);
   		//var row=document.createElement("tr");

//var data1=document.createElement("td");
		document.form1.appendChild(newarea);
	*/	
		

   		//document.getElementsByTagName('body')[0].appendChild(newarea);
   	
//var tbody=document.getElementById("training_table").getElementsByTagName("tbody")[0];

   		
   		

	}
	

}

function pixelGen()
{
	if(document.form1.C1[0].checked)
	{
		if((parseInt(document.form1.T2.value)>parseInt(document.form1.T4.value))||(parseInt(document.form1.T1.value)>parseInt(document.form1.T3.value)))
		{
			alert("Enter right coordinate. upper left coordinates should always be less then lower right coordinates of subset.");
		}
		else
		{
			document.form1.generate.value="1";
			document.form1.action="e1.jsp";
  	    	document.form1.submit();

		}
	}
	else
	{
		document.form1.generate.value="1";
		document.form1.action="e1.jsp";
  	    document.form1.submit();

	}


}

if(document.form1.sub.value=="1")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "histogram.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "id");
    hiddenField.setAttribute("value", document.form1.noofband.value);
    hiddenField.setAttribute("type","hidden");
     form.appendChild(hiddenField);

  //   var hiddenField1 = document.createElement("input");              
   // hiddenField1.setAttribute("name", "id1");
    //hiddenField1.setAttribute("value", document.form1.bandvalue.value);
 //   hiddenField1.setAttribute("type","hidden");
   // form.appendChild(hiddenField1);
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("histogram.html", 'formresult', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}
if(document.form1.subsettype.value=="1" || document.form1.subsettype.value=="2")
{
//alert("");
	
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "pixel.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult1");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "inpath");
    hiddenField.setAttribute("value", '<%=inpath%>');
    hiddenField.setAttribute("type","hidden");
    form.appendChild(hiddenField);
    
    var hiddenField1 = document.createElement("input");              
    hiddenField1.setAttribute("name", "row");
    hiddenField1.setAttribute("value", '<%=row%>');
    hiddenField1.setAttribute("type","hidden");
    form.appendChild(hiddenField1);

	var hiddenField2 = document.createElement("input");              
    hiddenField2.setAttribute("name", "col");
    hiddenField2.setAttribute("value", '<%=col%>');
    hiddenField2.setAttribute("type","hidden");
    form.appendChild(hiddenField2);

	var hiddenField3 = document.createElement("input");              
    hiddenField3.setAttribute("name", "r1");
    hiddenField3.setAttribute("value", '<%=r1%>');
    hiddenField3.setAttribute("type","hidden");
    form.appendChild(hiddenField3);

     var hiddenField4 = document.createElement("input");              
    hiddenField4.setAttribute("name", "c1");
    hiddenField4.setAttribute("value", '<%=c1%>');
    hiddenField4.setAttribute("type","hidden");
    form.appendChild(hiddenField4);

    var hiddenField5 = document.createElement("input");              
    hiddenField5.setAttribute("name", "r2");
    hiddenField5.setAttribute("value", '<%=r2%>');
    hiddenField5.setAttribute("type","hidden");
    form.appendChild(hiddenField5);

     var hiddenField6 = document.createElement("input");              
    hiddenField6.setAttribute("name", "c2");
    hiddenField6.setAttribute("value", '<%=c2%>');
    hiddenField6.setAttribute("type","hidden");
    form.appendChild(hiddenField6);
    var hiddenField7 = document.createElement("input");              
    hiddenField7.setAttribute("name", "noband");
    hiddenField7.setAttribute("value", '<%=noband%>');
    hiddenField7.setAttribute("type","hidden");
    form.appendChild(hiddenField7);

  


    
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("pixel.html", 'formresult1', 'scrollbars=yes,menubar=no,height=600,width=800,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}

                  </script>
                  
                  
                  </form>
</div>

</body>

</html>