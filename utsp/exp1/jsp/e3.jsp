<%@ page language = "java" import = "java.io.*, java.awt.*, javax.imageio.*,imageprocessing.*, java.awt.image.*;" %>

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

int iskernel=1;
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

if((request.getParameter("kernel")).equals("1"))
{
method=request.getParameter("D6");

row=request.getParameter("T3");
col=request.getParameter("T2");
maketable=1;
disable_display="disabled";
	disable_filter="disabled";

}
if((request.getParameter("display")).equals("1"))
{
	//init=request.getParameter("D1");
	//selected=init;
	//sb1=request.getParameter("D2");
	//sb2=request.getParameter("D3");
	//sb3=request.getParameter("D4");
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
	filter=1;
	display=0;
	disable_display="disabled";
	disable_filter="";
	gen="1";
}
if((request.getParameter("filter")).equals("1"))
{
	//init=request.getParameter("D1");
//	selected=init;
//	sb1=request.getParameter("D2");
//	sb2=request.getParameter("D3");
//	sb3=request.getParameter("D4");
	method=request.getParameter("D6");
	parameter=request.getParameter("T6");
	row=request.getParameter("T3");
	col=request.getParameter("T2");
	int win1=0;
	int win2=0;
	win1=Integer.parseInt(row);
	win2=Integer.parseInt(col);
	
	if((sb1.equals(sb2))&&(sb2.equals(sb3)))
	{
		bval=Integer.parseInt(sb1);
	}
	else
	{
		bval=0;
	}
	
	if(method.equals("Lee Filter")||method.equals("Median Filter")||method.equals("Sigma Filter")||method.equals("Mode Filter"))
	{
		iskernel=0;
	}	
	PrintStream p=new PrintStream(new FileOutputStream("C:\\uploads\\"+session_user+"\\RGB.txt",false));
	System.setOut(p);
	System.out.println(sb1+" "+sb2+" "+sb3);
		
	PrintStream ps=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/param.txt",false));
	System.setOut(ps);
	System.out.println(method);
	System.out.println(row);
	System.out.println(col);

	if(selected.equals(init))
	{
		System.out.println("C:/uploads/common/" + init);	
	}
	else
	{
		System.out.println("C:/uploads/" +session_user+"/" + init);	
	}
	
	System.out.println(parameter);
	System.out.println("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");
	
	PrintStream ps1=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/cof.txt",false));
	System.setOut(ps1);
	if(method.equals("Weighted Average Filter"))
	{
		for(int i=1;i<=win1;i++)
		{
			for(int j=1;j<=win2;j++)
			{
				System.out.print(request.getParameter("TC"+i+""+j)+" ");
			}
			System.out.println("");
		}
		
	}
	
	Process pr= Runtime.getRuntime().exec("C:\\VSIP\\smoothening.exe C:\\uploads\\"+session_user+"\\param.txt" + " C:\\uploads\\"+session_user+"\\rgb.txt" + " C:\\uploads\\"+session_user+"\\cof.txt");
	pr.waitFor();
	pr.destroy();
	error_msg="C:\\VSIP\\smoothening.exe C:\\uploads\\"+session_user+"\\param.txt" + " C:\\uploads\\"+session_user+"\\rgb.txt" + " C:\\uploads\\"+session_user+"\\cof.txt";

	filter=0;
	display=1;
	disable_filter="disabled";
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
<title>Experiment 3: Smoothing</title>
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

<%//out.println(""+error_msg);%>
<p align="center">

<table id="cnt1" border="1" cellspacing="0" width="849"  cellpadding="0" style="border-style:solid; border-collapse: collapse; " bordercolor="#9999FF" height="1" >

	<tr>
    	<td width="847" height="1" colspan="2" style="border-left:1px none #9999FF; border-right:1px none #9999FF; background-repeat: repeat-x; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" valign="top" bgcolor="#0E92E4" height="2">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="1">
          <tr>
            <td width="50%" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
            <p style="margin-top: 0; margin-bottom:0"><font size="5" color="#FFFFFF">Smoothing</font></td>
            <td width="50%" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
            <p align="right" style="margin-top: 0; margin-bottom:0"><font color="#FFFFFF">
            Virtual Satellite Image Processing and Analysis Lab, IIT Bombay</font></td>
          </tr>
        </table>
        </td>
  	</tr>  
 	<tr>
    	<td width="1262" height="2%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
        &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="653" height="12%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">&nbsp;Select Image</td>
    	<td width="1190" height="12%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">
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
</select>
        <a href="javascript:upload()">Upload more images</a></td>
 	</tr>
  
  	<tr>
    	<td width="1262" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="1262" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<i><b>Select Color 
        Composite</b></i></td>
  	</tr>
  
  	<tr>
    	<td width="1262" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="605" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Choose Red Band</td>
    	<td width="862" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  <select size="1" name="D2" <%=disable_display%> value="">
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
    	<td width="700" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Choose Green Band</td>
    	<td width="650" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  <select size="1" name="D3" <%=disable_display%> value="">
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
    	<td width="662" height="3%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Choose Blue Band</td>
    	<td width="650" height="3%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  <select size="1" name="D4" <%=disable_display%> value="">
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
    	<td width="706" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
    	<td width="728" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="706" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;<input type="button" value="Display" name="B2"  onclick='verify2()' <%=disable_display%> style="height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" ></td>
    	<td width="728" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="706" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
    	<td width="728" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="706" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<b><i>Smoothening 
        (Select Filter)</i></b></td>
    	<td width="728" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="706" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
    	<td width="728" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="706" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;Filter</td>
    	<td width="728" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        	<select size="1" name="D6" value="" onchange='verify1(this)' <%=disable_filter%>>
 			<%if(method.equals("Average Filter"))
 			{%> 
				<option selected>Average Filter</option>
  			<%}
 			 else
 			 {%>
				<option>Average Filter</option>
  			<%}%>
			<%if(method.equals("Weighted Average Filter"))
 			{%> 
				<option selected>Weighted Average Filter</option>
  			<%}
 			 else
 			 {%>
				<option>Weighted Average Filter</option>
  			<%}%>
			<%if(method.equals("Lee Filter"))
 			{%> 
				<option selected>Lee Filter</option>
  			<%}
 			 else
 			 {%>
				<option>Lee Filter</option>
  			<%}%>
			<%if(method.equals("Median Filter"))
 			{%> 
				<option selected>Median Filter</option>
  			<%}
 			 else
 			 {%>
				<option>Median Filter</option>
  			<%}%>
			<%if(method.equals("Mode Filter"))
 			{%> 
				<option selected>Mode Filter</option>
  			<%}
 			 else
 			 {%>
				<option>Mode Filter</option>
  			<%}%>
			<%if(method.equals("Gaussian Filter"))
 			{%> 
				<option selected>Gaussian Filter</option>
  			<%}
 			 else
 			 {%>
				<option>Gaussian Filter</option>
  			<%}%>
  			<%if(method.equals("Sigma Filter"))
 			{%> 
				<option selected>Sigma Filter</option>
  			<%}
 			 else
 			 {%>
				<option>Sigma Filter</option>
  			<%}%>
			<%if(method.equals("Circular Filter"))
 			{%> 
				<option selected>Circular Filter</option>
  			<%}
 			 else
 			 {%>
				<option>Circular Filter</option>
  			<%}%>

		 </select>
 		</td>
  	</tr>
  
  	<tr>
    	<td width="719" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  <label for="fp3" id="l3">&nbsp;Not Required</label><input type="text" name="T5" style="visibility: hidden;" size="1" id="fp3"></td>
    	<td width="577" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <input type="text" name="T6" size="5" value="<%=parameter%>" <%=disable_filter%>></td>
  	</tr>
  
  	<tr>
    	<td width="719" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
    	<td width="577" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="719" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<b><i>Window Size</i></b></td>
    	<td width="577" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="719" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
    	<td width="577" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="719" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<label for="fp2" id="l2">Number 
        Of Rows</label><input type="text" name="T4" style="visibility: hidden;" size="1" id="fp2"></td>
    	<td width="577" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <input type="text" name="T3" size="5" value="<%=row%>" <%=disable_filter%>></td>
  	</tr>
  
  	<tr>
    	<td width="719" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  &nbsp;<label for="fp1" id="l1">Number 
        Of Columns</label><input type="text" name="T1" style="visibility: hidden;" size="1" id="fp1"></td>
    	<td width="577" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        <input type="text" name="T2" size="5" value="<%=col%>" <%=disable_filter%>></td>
  	</tr>
  
	<tr>
    	<td width="1262" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  </td>
 	</tr>
	<tr>
    	<td width="1262" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        &nbsp;<input type="button" value="Define Kernel" name="B3"  <%=disable_filter%> onclick='defineker()' style="visibility:hidden; height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" ></td>
 	</tr>
 	<%if(maketable==1)
 	{%>
	<tr>
    	<td width="1262" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF"><b><i> Enter Weights For The Kernel Elements (Greater then or equals to 0)</i></b></br></br>  
        &nbsp;
        <%for(int i=1;i<=(Integer.parseInt(row));i++)
          {
          	for(int j=1;j<=(Integer.parseInt(col));j++)
            {
            %>
            <input type="text" id="TC<%=(i+""+j)%>" name="TC<%=(i+""+j)%>" value="0" size="5">
            <%}
            %>
            </br>&nbsp;

            <%
           }%>
        </td>
 	</tr>
 	<%}%>
	<tr>
    	<td width="1262" height="1%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        &nbsp;<input type="button" value="Process" name="B1" <%if(maketable!=1){%> <%=disable_filter%> <%}%> onclick='process()' style="visibility:visible; height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" ></p>
        </td>
 	</tr>
	<tr>
    	<td width="1262" height="0%" colspan="2" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">  
        &nbsp;</td>
 	</tr>
	</table>

       
     


  


</form>

</div>
<script language = "javascript" >
{



if(document.form1.T2.value=="")
{
//document.form1.T2.value="0";
}

document.form1.T6.disabled=true;

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
  	
  	document.form1.action="e3.jsp";
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
    	document.form1.action="e3.jsp";
  	    document.form1.submit();
  	    

   	}
  }
  function defineker()
  {
  		   	//float r,c;
  	var r=parseFloat(document.form1.T2.value);
  	var c=parseFloat(document.form1.T3.value);
  	if(((r>0)&&(r%2>0))&&((c>0)&&(c%2>0)))
  	{
  		document.form1.bnd.value="0";
document.form1.D1.disabled=false;
  	    document.form1.D2.disabled=false;
  	    document.form1.D3.disabled=false;
  	    document.form1.D4.disabled=false;

  		document.form1.kernel.value="1";
  		document.form1.action="e3.jsp";
  		document.form1.submit();
  	}
  	else
  	{

  		alert("keep window size in odd figures. e.g., 3x3, 5x5, 7x7, etc.");
    }
 	//	document.form1.T3.value="asdf";
  }
  function verify1()
  {
  	if(document.form1.D6.value=="Weighted Average Filter")
  	{
  		document.form1.T6.disabled=true;
  		document.form1.B1.disabled=true;
  		document.form1.B3.style.visibility="visible";
  		document.form1.B1.style.visibility="hidden";


  	}
   	else if((document.form1.D6.value=="Gaussian Filter")||(document.form1.D6.value=="Lee Filter")||(document.form1.D6.value=="Sigma Filter"))
  	{
  		document.form1.T6.disabled=false;
  		document.form1.B1.disabled=false;
  		

  		if(document.form1.D6.value=="Gaussian Filter")
  		{
  		this.document.getElementById('l3').innerHTML=" Standard Deviation (range: 0.5 to 3)"
  		}
  		else if(document.form1.D6.value=="Lee Filter")
  		{
  		this.document.getElementById('l3').innerHTML=" k (k>=0,k<1)"
  		}
  		else if(document.form1.D6.value=="Sigma Filter")
  		{
  		this.document.getElementById('l3').innerHTML=" k (range: 1 to 2)"
  		}
  		document.form1.B3.style.visibility="hidden";
  		document.form1.B1.style.visibility="visible";

  	}
  	else
  	{
  		document.form1.B1.disabled=false;
  	

  		this.document.getElementById("l3").innerHTML=" Not Required";

  		document.form1.T6.value="0";
  		document.form1.T6.disabled=true;
  		document.form1.B3.style.visibility="hidden";
  		document.form1.B1.style.visibility="visible";

  	}
  }
  
  function process()
  {
  	document.form1.T6.disabled=false;
  		var r=parseFloat(document.form1.T2.value);
  	var c=parseFloat(document.form1.T3.value);
  	
  	var r1=parseInt(document.form1.T3.value);
  	var c1=parseInt(document.form1.T2.value);
	//document.write(r1);
  	if((document.form1.D6.value=="Gaussian Filter")&&((parseFloat(document.form1.T6.value)<0.5)||(parseFloat(document.form1.T6.value)>3)))
  	{
  		
  		alert("standard deviation should be between 0.5 and 3, inclusive of 0.5 and 3");
  		
  	}
  	else if((document.form1.D6.value=="Lee Filter")&&((parseFloat(document.form1.T6.value)<0)||(parseFloat(document.form1.T6.value)>=1)))
  	{
  		
  		alert("Exponential factor should be between 0 and 1, including 0, excluding 1");
  		
  	}
  	else if((document.form1.D6.value=="Sigma Filter")&&((parseFloat(document.form1.T6.value)<1)||(parseFloat(document.form1.T6.value)>2)))
  	{
  		
  		alert("Exponential factor should be between 1 and 2, inclusive of 1 and 2");
  		
  	}
  	else if(document.form1.D6.value=="Weighted Average Filter")
  	{
  		var chk=0;
  		//document.write(this.document.getElementById("TC11").value);
  		for(var i=1;i<=r1;i++)
  		{
  			for(var j=1;j<=c1;j++)
  			{
  		//		document.write("TC"+i+""+j);
  				if(parseFloat(this.document.getElementById("TC"+i+""+j).value)<0)
  				{
  					chk=1;
  					this.document.getElementById("TC"+i+""+j).style.background='#FF0000';
  				   alert("weight at element "+i+","+j+" is less then 0");
  				}
  				else
  				{
  				this.document.getElementById("TC"+i+""+j).style.background="#FFFFFF";
  				}
  			}
  		}
  		if(chk==0)
  		{
  			document.form1.bnd.value="0";
  		document.form1.filter.value="1";
    	document.form1.action="e3.jsp";
    	document.form1.D1.disabled=false;
  	    document.form1.D2.disabled=false;
  	    document.form1.D3.disabled=false;
  	    document.form1.D4.disabled=false;
  	     document.form1.D6.disabled=false;

  	    document.form1.T2.disabled=false;
		document.form1.T3.disabled=false;
	

  	    document.form1.submit();

  		}
  	}
  	else if(((r>0)&&(r%2>0))&&((c>0)&&(c%2>0)))
  	{
  		document.form1.bnd.value="0";
  		document.form1.filter.value="1";
    	document.form1.action="e3.jsp";
    	document.form1.D1.disabled=false;
  	    document.form1.D2.disabled=false;
  	    document.form1.D3.disabled=false;
  	    document.form1.D4.disabled=false;
  	     document.form1.D6.disabled=false;

  	    document.form1.T2.disabled=false;
		document.form1.T3.disabled=false;
	

  	    document.form1.submit();
  	}
  	else
    {
    alert("keep window size in odd figures. e.g., 3x3, 5x5, 7x7, etc.");

    	//document.form1.type.value=document.form1.D6.value;
    		document.form1.enhance.value="1";
    	
  	    

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
    hiddenField.setAttribute("name", "image_name");
    hiddenField.setAttribute("value", document.form1.D1.value);
    hiddenField.setAttribute("type","hidden");
     form.appendChild(hiddenField);

     var hiddenField1 = document.createElement("input");              
    hiddenField1.setAttribute("name", "nob");
    hiddenField1.setAttribute("value", document.form1.bandvalue.value);
    hiddenField1.setAttribute("type","hidden");
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
    hiddenField.setAttribute("name", "image_name");
    hiddenField.setAttribute("value", document.form1.D1.value);
    hiddenField.setAttribute("type","hidden");
     form.appendChild(hiddenField);

     var hiddenField1 = document.createElement("input");              
    hiddenField1.setAttribute("name", "nob");
    hiddenField1.setAttribute("value", document.form1.bandvalue.value);
    hiddenField1.setAttribute("type","hidden");
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
    form.setAttribute("action", "out_filter.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult2");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "image_name");
    hiddenField.setAttribute("value", document.form1.D1.value);
    hiddenField.setAttribute("type","hidden");
     form.appendChild(hiddenField);

     var hiddenField1 = document.createElement("input");              
    hiddenField1.setAttribute("name", "nob");
    hiddenField1.setAttribute("value", document.form1.bandvalue.value);
    hiddenField1.setAttribute("type","hidden");
    form.appendChild(hiddenField1);

var hiddenField2 = document.createElement("input");              
    hiddenField2.setAttribute("name", "krow");
    hiddenField2.setAttribute("value", '<%=row%>');
    hiddenField2.setAttribute("type","hidden");
     form.appendChild(hiddenField2);
     
 	var hiddenField3 = document.createElement("input");              
    hiddenField3.setAttribute("name", "kcol");
    hiddenField3.setAttribute("value", '<%=col%>');
    hiddenField3.setAttribute("type","hidden");
     form.appendChild(hiddenField3);
 	
 	var hiddenField4 = document.createElement("input");              
    hiddenField4.setAttribute("name", "iskernel");
    hiddenField4.setAttribute("value", '<%=iskernel%>');
    hiddenField4.setAttribute("type","hidden");
     form.appendChild(hiddenField4);

    document.body.appendChild(form);

    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("out_filter.html", 'formresult2', 'scrollbars=yes,menubar=no,height=600,width=800,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}


                  </script>

</body>

</html>