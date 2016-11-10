<%@ page language = "java" import = "java.io.*, java.awt.*, javax.imageio.*, imageprocessing.*,java.awt.image.*;" %>

<html>
<%
ReadImage ri=null;
String selected="---select---";
String sline="";
String sline1="";
int display=1;
BufferedReader br=null;
int output=0;
int noband=0;
String param1="0";
String param2="0";
String bandpass="Low Pass";
String bandsel="Red";
String error_msg="";
String files[]=null;
String sampleFiles[]=null;
String gen="0";
String nob="0";
int bval=0;
int band=0;
String row="3";
String col="3";


String method="Spectrum Only";
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
init=request.getParameter("D1");
	selected=init;
	sb1=request.getParameter("D2");
	sb2=request.getParameter("D3");
	sb3=request.getParameter("D4");

method=request.getParameter("D6");

bandsel=request.getParameter("D8");

PrintStream p=new PrintStream(new FileOutputStream("C:\\uploads\\"+session_user+"\\RGB.txt",false));
System.setOut(p);
System.out.println(sb1+" "+sb2+" "+sb3);
	//-----------------------for showing spectrum only----------------------------//
	if(method.equals("Spectrum Only"))
	{			
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
	
		if(bandsel.equals("Red"))
		{
			System.out.println(sb1);
		}
		else if(bandsel.equals("Green"))
		{
			System.out.println(sb2);
		}
		else if(bandsel.equals("All"))
		{
			System.out.println("all");
		}
		else 
		{
			System.out.println(sb3);
		}
		System.out.println("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");
	
		Process pr= Runtime.getRuntime().exec("C:\\VSIP\\spectrum.exe C:\\uploads\\"+session_user+"\\param.txt" + " C:\\uploads\\"+session_user+"\\rgb.txt");
		pr.waitFor();
		pr.destroy();
		gen="1";
	
	}
	else				//------------------------for Ideal/Guassian/Butterworth filtering-----------------------//
	{
		param1=request.getParameter("T8");
		param2=request.getParameter("T2");
		bandpass=request.getParameter("D7");

		PrintStream ps=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/param.txt",false));
		System.setOut(ps);
		String msplit[]=method.split("\\s+");
		System.out.println(msplit[0]);

		//----------------------------lowpass/highpass------------------------------//
		if(bandpass.equals("Low Pass"))
		{
			System.out.println("lowpass");
		}
		else
		{
			System.out.println("highpass");
		}
		//--------------------------------image name----------------------------------//
		if(selected.equals(init))
		{
			System.out.println("C:/uploads/common/" + init);	
		}
		else
		{
			System.out.println("C:/uploads/" +session_user+"/" + init);	
		}
		//--------------parameters---------------------------------------------------//
		System.out.println(param1);
		System.out.println(param2);
		//----------------------specified band---------------------------------------//
		
		/*if(bandsel.equals("Red"))
		{
			System.out.println("1");
		}
		else if(bandsel.equals("Green"))
		{
			System.out.println("2");
		}
		else 
		{
			System.out.println("3");
		}	*/

		//----------------------------------output files path----------------------------//
			System.out.println("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");	

		//------------------------------------processing--------------------------------//	
		
		Process pr= Runtime.getRuntime().exec("C:\\VSIP\\fft.exe C:\\uploads\\"+session_user+"\\param.txt" + " C:\\uploads\\"+session_user+"\\rgb.txt");
		pr.waitFor();
		pr.destroy();

		/*
		if(method.equals("Gaussian Filtering"))
		{
		 		Process pr= Runtime.getRuntime().exec("C:\\VSIP\\gaussian.exe C:\\uploads\\"+session_user+"\\param.txt" + " C:\\uploads\\"+session_user+"\\rgb.txt");
				pr.waitFor();
				pr.destroy();

	 	}
	 	else
	 	{
	 		Process pr= Runtime.getRuntime().exec("C:\\VSIP\\butterworth.exe C:\\uploads\\"+session_user+"\\param.txt" + " C:\\uploads\\"+session_user+"\\rgb.txt");
			pr.waitFor();
			pr.destroy();

	 	}*/
		//-----------------------------------generating output----------------------------//
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
<title>Experiment 6: Discrete 2D Fourier Transform</title>
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

<%//out.println(""+request.getParameter("D1"));%>
<p align="center">

<table id="cnt1" border="1" cellspacing="0" width="849"  cellpadding="0" style="border-style:solid; border-collapse: collapse; " bordercolor="#9999FF" height="1" >

	<tr>
    	<td width="847" height="1" colspan="4" style="border-left:1px none #9999FF; border-right:1px none #9999FF; background-repeat: repeat-x; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" valign="top" bgcolor="#0E92E4" height="2">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="1">
          <tr>
            <td width="50%" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
            <p style="margin-top: 0; margin-bottom:0"><font size="5" color="#FFFFFF">Discrete 2D Fourier Transform</font></td>
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
    	<td width="320" height="12%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;Select Image</td>
    	<td width="150" height="12%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
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
</select></td>
    	<td width="375" height="12%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
        <a href="javascript:upload()">Upload more images</a></td>
 	</tr>
  
  	<tr>
    	<td width="847" height="1%" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="847" height="1%" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<i><b>Select Color 
        Composite</b></i></td>
  	</tr>
  
  	<tr>
    	<td width="847" height="1%" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="148" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Choose Red Band</td>
    	<td width="171" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  </td>
    	<td width="150" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  <select size="1" name="D2" value="">
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
    	<td width="375" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="148" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Choose Green Band</td>
    	<td width="171" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  </td>
    	<td width="150" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  <select size="1" name="D3" value="">
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
    	<td width="375" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="148" height="3%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Choose Blue Band</td>
    	<td width="171" height="3%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
    	<td width="150" height="3%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  <select size="1" name="D4" value="">
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
    	<td width="375" height="3%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="847" height="3%" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="320" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<b><i>Transforming
        (Select Filter)</i></b></td>
    	<td width="526" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="320" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
    	<td width="526" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="320" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Operation</td>
    	<td width="526" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	<select size="1" name="D6" value="" onchange='verify1(this)' style="width: 90;">
 			<%if(method.equals("Spectrum Only"))
 			{%> 
				<option selected>Spectrum Only</option>
  			<%}
 			 else
 			 {%>
				<option>Spectrum Only</option>
  			<%}%>
			<%if(method.equals("Ideal Filtering"))
 			{%> 
				<option selected>Ideal Filtering</option>
  			<%}
 			 else
 			 {%>
				<option>Ideal Filtering</option>
  			<%}%>

			<%if(method.equals("Gaussian Filtering"))
 			{%> 
				<option selected>Gaussian Filtering</option>
  			<%}
 			 else
 			 {%>
				<option>Gaussian Filtering</option>
  			<%}%>
			<%if(method.equals("Butterworth Filtering"))
 			{%> 
				<option selected>Butterworth Filtering</option>
  			<%}
 			 else
 			 {%>
				<option>Butterworth Filtering</option>
  			<%}%>

		 </select>
 		</td>
  	</tr>
  
  	<tr>
    	<td width="320" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Band</td>
    	<td width="150" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	<select size="1" name="D7" value="" style="width: 90;">
 			<%if(bandpass.equals("Low Pass"))
 			{%> 
				<option selected>Low Pass</option>
  			<%}
 			 else
 			 {%>
				<option>Low Pass</option>
  			<%}%>
			<%if(bandpass.equals("High Pass"))
 			{%> 
				<option selected>High Pass</option>
  			<%}
 			 else
 			 {%>
				<option>High Pass</option>
  			<%}%>

		 </select></td>
    	<td width="375" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="320" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  <label for="fp3">&nbsp;FT 
        Output&nbsp; For Specific Band</label><input type="text" name="T5" style="visibility: hidden;" size="1" id="fp3"></td>
    	<td width="150" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	<select size="1" name="D8" value="" style="width: 90;">
 			<%if(bandsel.equals("All"))
 			{%> 
				<option selected>All</option>
  			<%}
 			 else
 			 {%>
				<option>All</option>
  			<%}%>
			<%if(bandsel.equals("Red"))
 			{%> 
				<option selected>Red</option>
  			<%}
 			 else
 			 {%>
				<option>Red</option>
  			<%}%>
			<%if(bandsel.equals("Green"))
 			{%> 
				<option selected>Green</option>
  			<%}
 			 else
 			 {%>
				<option>Green</option>
  			<%}%>
			<%if(bandsel.equals("Blue"))
 			{%> 
				<option selected>Blue</option>
  			<%}
 			 else
 			 {%>
				<option>Blue</option>
  			<%}%>

		 </select></td>
    	<td width="375" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="320" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
    	<td width="150" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
    	<td width="375" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="320" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<b><i>Parameters</i></b></td>
    	<td width="150" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
    	<td width="375" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="847" height="2%" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<label for="fp1" id="l5"> 
        </label><input type="text" name="T9" style="visibility: hidden;" size="1" id="fp5"></td>
  	</tr>
  
  	<tr>
    	<td width="320" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<label for="fp1" id="l4">&nbsp;</label><input type="text" name="T7" style="visibility: hidden;" size="1" id="fp4"></td>
    	<td width="526" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <input type="text" name="T8" size="5" value="<%=param1%>" ></td>
  	</tr>
  
  	<tr>
    	<td width="320" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<label for="fp2" id="l1">&nbsp;</label><input type="text" name="T1" style="visibility: hidden;" size="1" id="fp2"></td>
    	<td width="526" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <input type="text" name="T2" size="5" value="<%=param2%>" ></td>
  	</tr>
  
	<tr>
    	<td width="847" height="1%" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  </td>
 	</tr>
 	
	<tr>
    	<td width="847" height="1%" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        &nbsp;</td>
 	</tr>
	<tr>
    	<td width="847" height="1%" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        &nbsp;<input type="button" value="Process" name="B1" onclick='process()' style="visibility:visible; height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" ></p>
        </td>
 	</tr>
	<tr>
    	<td width="847" height="0%" colspan="4" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        &nbsp;</td>
 	</tr>
	</table>
</form>
</div>

<script language = "javascript" >
 {


  	if(document.form1.D6.value=="Spectrum Only")
  	{
  		document.form1.D7.disabled=true;
		document.form1.D8.disabled=false;

  		this.document.getElementById("l5").innerHTML="";
  		this.document.getElementById("l4").innerHTML="Not Required";
  		this.document.getElementById("l1").innerHTML="Not Required";
  		
  		document.form1.T8.disabled=true;
  		document.form1.T2.disabled=true;


  	}
   	else if((document.form1.D6.value=="Gaussian Filtering")||(document.form1.D6.value=="Ideal Filtering"))
  	{
  		document.form1.D7.disabled=false;
		document.form1.D8.disabled=true;

  		//this.document.getElementById("l5").innerHTML="(Note: Sigma 1 should be greater than Sigma 2)";
  		this.document.getElementById("l4").innerHTML="Cut Off Frequence (greater than 0)";
  		this.document.getElementById("l1").innerHTML="Order (order >= 1)";
  		
  		document.form1.T8.disabled=false;
		document.form1.T2.disabled=false;
		document.form1.T2.value="2";
  		document.form1.T2.disabled=true;

  	}
  	else
  	{
  		document.form1.D7.disabled=false;
		document.form1.D8.disabled=true;

  		this.document.getElementById("l5").innerHTML="";
  		this.document.getElementById("l4").innerHTML="Cut Off Frequence (greater than 0)";
  		this.document.getElementById("l1").innerHTML="Order (order >= 1)";
  		
  		document.form1.T8.disabled=false;
  		document.form1.T2.disabled=false;
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
  	
  	document.form1.action="e6.jsp";
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
  	if(document.form1.D6.value=="Spectrum Only")
  	{
  		document.form1.D7.disabled=true;
		document.form1.D8.disabled=false;

  		this.document.getElementById("l5").innerHTML="";
  		this.document.getElementById("l4").innerHTML="Not Required";
  		this.document.getElementById("l1").innerHTML="Not Required";
  		
  		document.form1.T8.disabled=true;
  		document.form1.T2.disabled=true;


  	}
   	else if((document.form1.D6.value=="Gaussian Filtering")||(document.form1.D6.value=="Ideal Filtering"))
  	{
  		document.form1.D7.disabled=false;
		document.form1.D8.disabled=true;

  		//this.document.getElementById("l5").innerHTML="(Note: Sigma 1 should be greater than Sigma 2)";
  		this.document.getElementById("l4").innerHTML="Cut Off Frequence (greater than 0)";
  		this.document.getElementById("l1").innerHTML="Order (order >= 1)";
  		
  		document.form1.T8.disabled=false;
		document.form1.T2.disabled=false;
		document.form1.T2.value="2";
  		document.form1.T2.disabled=true;

  	}
  	else
  	{
  		document.form1.D7.disabled=false;
		document.form1.D8.disabled=true;

  		this.document.getElementById("l5").innerHTML="";
  		this.document.getElementById("l4").innerHTML="Cut Off Frequence (greater than 0)";
  		this.document.getElementById("l1").innerHTML="Order (order >= 1)";
  		
  		document.form1.T8.disabled=false;
  		document.form1.T2.disabled=false;
  	}

  }
  
  function process()
  {
	document.form1.T2.disabled=false;
	document.form1.D8.disabled=false;

  	

  		var p1=parseFloat(document.form1.T8.value);
  	var p2=parseFloat(document.form1.T2.value);
  	var mt=document.form1.D6.value;
  	//document.write(r1);
  	if(document.form1.D1.value=="---select---")
  	{
  		
  		alert("Please, choose an image.");
  		
  	}
  	else if(((mt=="Gaussian Filtering")||(mt=="Ideal Filtering"))&&(p1<=0))
  	{
  		
  		alert("Cut of Frequencey must be greater than zero");
		document.form1.T2.disabled=true;

  		
  	}
  	else if((mt=="Butterworth Filtering")&&(p1<=0))
  	{
  		
  		alert("Cut Off Frequency should be greater than 0. Please, try with correct values.");
  		
  	}
  	else if((mt=="Butterworth Filtering")&&(p2<1))
  	{
  		
  		alert("Order should be greater than or equal to 1. Please, try with correct values.");
  		
  	}
  	else
  	{
  			document.form1.bnd.value="0";
  	
    	document.form1.action="e6.jsp";
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
    form.setAttribute("action", "out_fft.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult1");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "image_name");
    hiddenField.setAttribute("value", document.form1.D1.value);
    hiddenField.setAttribute("type", "hidden");
     form.appendChild(hiddenField);

     var hiddenField1 = document.createElement("input");              
    hiddenField1.setAttribute("name", "method");
    hiddenField1.setAttribute("value", document.form1.D6.value);
    hiddenField1.setAttribute("type", "hidden");
    form.appendChild(hiddenField1);
     var hiddenField2 = document.createElement("input");              
    hiddenField2.setAttribute("name", "bnd");
    hiddenField2.setAttribute("value", document.form1.D8.value);
    hiddenField2.setAttribute("type", "hidden");
    form.appendChild(hiddenField2);

    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("out_fft.html", 'formresult1', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}

</script>

</body>

</html>