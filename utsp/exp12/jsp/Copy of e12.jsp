<%@ page language = "java" import = "java.io.*, java.util.Date, java.awt.*, javax.imageio.*, imageprocessing.*, java.awt.image.*;" %>

<html>
<%

String selected="---select---";
String sline="";
String sline1="";
int filter=0;
String outpath="";


String disp="0";
int win_no=0;
String bin_class="";

String nband="All";
String sbands="";
String dfeature="1";
String nNNlayer="";
String nNodes="";
String lrate="1";
String mfactor="0.1";
String aerror="0.001";
String nfactor="1";
String mitr="10000";
int tr_c=0;

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
ReadImage ri=null;


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

String trfilename=request.getParameter("D7");

String trfilenametemp=trfilename.substring(0,trfilename.lastIndexOf("."));
String trfilesplited[]=trfilenametemp.split("_1110_");

noband=Integer.parseInt(request.getParameter("noofband"));	
init=request.getParameter("D2");
	selected=init;
	maxno_class=trfilesplited[trfilesplited.length-1];//request.getParameter("class_no");



			



		
        sb1=request.getParameter("D3");
		sb2=request.getParameter("D4");
		sb3=request.getParameter("D5");
		error_msg="a";
		outpath="C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/";
		ri=new ReadImage(inpath);
		ri.writeImage(Integer.parseInt(sb1),Integer.parseInt(sb2),Integer.parseInt(sb3),ri.imageData,ri.r,ri.c,outpath+"out_original_img");
		row=ri.r;
 		col=ri.c;
		error_msg="b";
		
		win_no=Integer.parseInt(trfilesplited[trfilesplited.length-2]);//request.getParameter("tr_no"));
		nband=request.getParameter("D6");
		if(nband.equals("All"))
		{
			nNodes=noband+" "+(request.getParameter("T6")).trim()+" "+maxno_class;
		
		}
		else
		{
			nNodes=nband+" "+(request.getParameter("T6")).trim()+" "+maxno_class;
		
		}
		dfeature=request.getParameter("T4");
		nNNlayer=request.getParameter("T5");
		nNNlayer=""+(Integer.parseInt(nNNlayer)+2);
		lrate=request.getParameter("T7");
		mfactor=request.getParameter("T8");
		aerror=request.getParameter("T9");
		nfactor=request.getParameter("T10");
		mitr=request.getParameter("T11");

		bin_class=request.getParameter("T1")+"_1110_"+row+"_1110_"+col;
	
	
		f=new File("C:\\uploads\\"+session_user+"_classified");
		if(!f.exists())
		{
			f.mkdir();
		}
	
	
//-------------------------------------param.txt-----------------------------------------------//	
	PrintStream ps=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/param.txt",false));
	System.setOut(ps);
//	System.out.println("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");
//	System.out.println("C:\\uploads\\" +session_user+"_classified\\" + bin_class);
	System.out.println(inpath);
	/*
	if(selected.equals("inputimage"))
	{
		System.out.println("C:/uploads/common/" + init+ ".hdr");

	 	System.out.println("C:/uploads/common/" + init);

	}
	else
	{
		System.out.println("C:/uploads/" +session_user+"/"+ init+".hdr");

		System.out.println("C:/uploads/" +session_user+"/"+ init);
		
	}*/
	if(nband.equals("All"))
	{
		System.out.println("all");
	}
	else
	{
		System.out.println(nband);

		sbands=request.getParameter("T3");

		System.out.println(sbands);
	}
	
	
	
	FileInputStream fstr=new FileInputStream("C:/uploads/"+session_user+"_classified/"+trfilename);    //-------------reading training windows------------//
	DataInputStream intr =new DataInputStream(fstr);
	BufferedReader brtr=new BufferedReader(new InputStreamReader(intr));
	String slinetr="";
	String slinesplittr[];
	
			
	System.out.println("C:/uploads/" +session_user+"/patterns.txt");
	System.out.println((win_no-1));
	for(int x=0;x<(win_no-1);x++)
	{
		slinetr=brtr.readLine();
		slinesplittr=slinetr.split("\\s+");
		System.out.println(slinesplittr[0] + " " +slinesplittr[2] + " " +slinesplittr[1] + " " +slinesplittr[3] + " " +slinesplittr[4]);
	}
	intr.close();
//----------------------------------------------------------end of param.txt------------------------------------//
//------------------------------------swin.txt---------------------------------------//
	PrintStream ps1=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/swin.txt",false));
	System.setOut(ps1);
	System.out.println(dfeature);
	System.out.println(nNNlayer);
	System.out.println(nNodes);
	System.out.println("C:/uploads/" +session_user+"/patterns.txt");
	System.out.println("C:/uploads/" +session_user+"/weights.txt");
	System.out.println(lrate);
	System.out.println(mfactor);
	System.out.println(aerror);
	System.out.println(nfactor);
	System.out.println(mitr);
	
//---------------------------------end of swin.txt-----------------------------------------//

//----------------------------------out_path.txt-------------------------------------------//

	PrintStream ps3=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/out_path.txt",false));
	System.setOut(ps3);
	System.out.print("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");
	

//----------------------------end of out_path.txt------------------------------------------//

//---------------------------------NNinput.txt---------------------------------------------//
	PrintStream ps2=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/NNinput.txt",false));
	System.setOut(ps2);
	System.out.println("C:/uploads/" +session_user+"/weights.txt");
	System.out.println("C:/uploads/" +session_user+"_classified/" + bin_class);
	
	System.out.println(inpath+ ".hdr");

	System.out.println(inpath);

	/*
	if(selected.equals("inputimage"))
	{
		System.out.println("C:/uploads/common/" + init+ ".hdr");

	 	System.out.println("C:/uploads/common/" + init);

	}
	else
	{
		System.out.println("C:/uploads/" +session_user+"/"+ init+".hdr");

		System.out.println("C:/uploads/" +session_user+"/"+ init);
		
	}*/
	if(nband.equals("All"))
	{
		System.out.println("all");
	}
	else
	{
		System.out.println(nband);

		sbands=request.getParameter("T3");

		System.out.println(sbands);
	}

//-------------------------------end of NNinput.txt----------------------------------------//


		PrintStream p=new PrintStream(new FileOutputStream("C:\\uploads\\"+session_user+"\\RGB.txt",false));
		System.setOut(p);
		System.out.println(sb1+" "+sb2+" "+sb3);
	
		
		PrintStream ps5=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/win4pix.txt",false));
		System.setOut(ps5);
		System.out.println("1");
		System.out.println("1");
		System.out.println("1");
		System.out.println("1");
		System.out.println("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");
		

		
		
		Process pr=null;
	//	pr= Runtime.getRuntime().exec("C:\\VSIP\\img_disp.exe "+inpath+" C:\\uploads\\"+session_user+"\\RGB.txt" + " C:\\uploads\\"+session_user+"\\win4pix.txt");
	 //	output=1;
/*
		if(selected.equals("inputimage"))
		{
		//	out.println("C:\\VSIP\\exp1.exe C:\\uploads\\" + init + " C:\\uploads\\"+session_user+"\\RGB.txt");
		 	pr= Runtime.getRuntime().exec("C:\\VSIP\\img_disp.exe C:\\uploads\\common\\" + init + " C:\\uploads\\"+session_user+"\\RGB.txt" + " C:\\uploads\\"+session_user+"\\win4pix.txt");
		 	output=1;
		}
		else
		{
			pr= Runtime.getRuntime().exec("C:\\VSIP\\img_disp.exe C:\\uploads\\" +session_user+"\\"+ init + " C:\\uploads\\"+session_user+"\\RGB.txt"+ " C:\\uploads\\"+session_user+"\\win4pix.txt");
			output=1;
		}*/
		//pr.waitFor();
		//pr.destroy();





	
//------------------------processing--------------------------//
	//Process pr=null;
	
	pr= Runtime.getRuntime().exec("C:\\VSIP\\trdata.exe C:\\uploads\\"+session_user+"\\param.txt");
	
	pr.waitFor();
	pr.destroy();
	
	pr= Runtime.getRuntime().exec("C:\\VSIP\\bpstd.exe C:\\uploads\\"+session_user+"\\swin.txt");
	
	pr.waitFor();
	pr.destroy();
	
	pr= Runtime.getRuntime().exec("C:\\VSIP\\bpclass.exe C:\\uploads\\"+session_user+"\\NNinput.txt C:\\uploads\\"+session_user+"\\out_path.txt");
	
	pr.waitFor();
	pr.destroy();
	

//---------------------end of processing-------------------------//	
	bin_class="";
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
<title>Experiment 12: Neural Network Based Classification</title>

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
<input type="hidden" name="rectx" id="rectx" value="0">
<input type="hidden" name="recty" id="recty" value="0">
<input type="hidden" name="rectw" id="rectw" value="0">
<input type="hidden" name="recth" id="recth" value="0">



<input type="hidden" name="classify" value="0">


<%//out.println(error_msg + " "+row+" "+col+" krishna "+ selected +" " +request.getParameter("D2"));%>
<p align="center">

<table id="cnt1" border="1" cellspacing="0" width="808"  cellpadding="0" style="border-style:solid; border-width:1; border-collapse: collapse" bordercolor="#9999FF" >

	<tr>
    	<td width="808" height="79%" style="border-right:medium none #9999FF; background-repeat: repeat-x; border-left-style:none; border-left-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" colspan="2" valign="top" bgcolor="#0E92E4">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="33">
          <tr>
            <td width="50%" height="30" style="border-bottom-style: solid; border-bottom-width: 1">
            <p style="margin-top: 4"><font size="5" color="#FFFFFF">Neural 
            Network Based Classification</font></td>
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
  			if(((sampleFiles[i]).toLowerCase()).lastIndexOf(".")>0)
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
  	
		if(((files[i]).toLowerCase()).lastIndexOf(".")>0)
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
		Signature File (Training area file)</td>
    	<td width="404" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
    	<select size="1" name="D7">
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
		
		
		</select>
    	</td>
  	</tr>
  
  	<tr>
    	<td width="808" height="1%" colspan="2" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;</td>
  	</tr>
  
  	<tr>
    	<td width="808" height="1%" colspan="2" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;<i><b>Select Color 
        Composite For Displaying</b></i></td>
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
        &nbsp;Number of bands to be used for classification</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	<select size="1" name="D6" onchange ='nBand(this)' <%=disable%>>
        	<%if(nband.equals("All"))
        	{%>
        			<option selected><%=nband%></option>
			<%}
			else
			{%>
        		<option >All</option>
            <%}
            for(int i=1;i<=noband;i++)
  			{
  				
  				if(nband.equals(i+""))
  				{
  				%>
				  	<option selected><%=nband%></option>
  				<%}
			  	else
  				{%>
					  <option><%=i%></option>
 				 <%}
 		 	}%>
  			</select>
  		</td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;Specify bands</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	<input type="text" name="T3" size="11" value="<%=sbands%>" disabled="true"><i> (Specify using space. e.g., 4 3 2)</i></td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;Dimension of feature space</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	<input type="text" name="T4" size="11" value="<%=dfeature%>" <%=disable%>> <i>(Greater than or equal to 
            1)</i></td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;Number of NN layers</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	<input type="text" name="T5" size="11" value="<%=nNNlayer%>" <%=disable%>></td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;Number of nodes in each layer</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	<input type="text" name="T6" size="11" value="<%=nNodes%>" ><i> (in order of input nodes number, hidden layer nodes number and then output nodes number
            e.g., 4 10 3)</i></td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	<i>(number of nodes in hidden layer are greater than 'square root of (no. of band x no. of 
            classes)'</i></td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;Learning Rate <i>(e.g., 1)</i></td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	<input type="text" name="T7" size="11" value="<%=lrate%>" <%=disable%>></td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;Momentum Factor <i>(e.g., 0.1)</i></td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	<input type="text" name="T8" size="11" value="<%=mfactor%>" <%=disable%>></td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;Allowable Error <i>(e.g., 0.001)</i></td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	<input type="text" name="T9" size="11" value="<%=aerror%>" <%=disable%>></td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;Normalization Factor <i>(e.g., 1)</i></td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	<input type="text" name="T10" size="11" value="<%=nfactor%>" <%=disable%>></td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;Maximum no. of iterations <i>(e.g., 10000)</i></td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	<input type="text" name="T11" size="11" value="<%=mitr%>" <%=disable%>></td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;Name of the output classified binary image</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	<input type="text" name="T1" size="11" ><i> (Please do not enter 
            extension of file)</i></td>
  	</tr>
  

  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
 	
  	<tr>
    	<td width="808" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF" colspan="2">    
        <input type="button" name="B1" value="Process"  onclick='process()' style="height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" ></td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
 	
	</table>

       
     


  
<input type="hidden" name="selected_class" id="selected_class" value="">
<input type="hidden" name="selected_class_type" id="selected_class_type" value="">
<input type="hidden" name="image_size" value="">
<input type="hidden" name="class_no" value="">
<input type="hidden" name="tr_no" value="<%=win_no%>">



</form>







<script language = "javascript" >
 {
//var tr_c=parseInt('<%=tr_c%>'+"");
 var tr_c=0;
 var cls=0;
 var classcolor="a";
 var cheight=0;
var oheight=0;
var heightdiff=0;

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
  	
  	document.form1.action="e12.jsp";
  	document.form1.submit();
  	
  	}
  	return;
  	
  }
  function nBand(list)
  {
  	if(document.form1.D6.value=="All")
  	{
  		document.form1.T3.disabled=true;
  	}
  	else
  	{
  		document.form1.T3.disabled=false;
  	}
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
  
//var training_no=(tr_c+1);   //parseInt(document.form1.tr_no.value);
  var chk=0;
 
  var strin=document.form1.T6.value+"";
  var kk=document.form1.D6.value;
  var kkband=0;
 // alert("a");
 	var trwin=document.form1.D7.value+"";
 var max=trwin.split("_1110_");
 var noc=parseInt(max[max.length-1]);
  if(kk=="All")
  {
  //	alert("b");
  	kkband=parseInt(document.form1.noofband.value);
  }
  else
  {
  	kkband=parseInt(kk);
  }
 // alert("c");
 var srt=Math.sqrt(kkband*noc);
 var innernodes=strin.split(" ");
   //alert("d");
   
   
   
   
   if(document.form1.D2.value=="---select---")
  	{
  		
  		alert("choose an image.");
  		
  	}
  	else if((document.form1.D6.value!="All")&&(document.form1.T3.value==""))
  	{
  		alert("Enter the band in sequence to be used for classification.")
  	}
  	else if((document.form1.T4.value=="")||(parseInt(document.form1.T4.value)<1))
  	{
  		alert("Enter a valid dimension of feature space. i.e., greater than or equal to 1.")
  	}
  	else if((document.form1.T5.value=="")||(parseInt(document.form1.T5.value)<1))
  	{
  		alert("Enter a valid number of NN layers.")
  	}
  	else if((document.form1.T7.value=="")||(parseInt(document.form1.T7.value)<1))
  	{
  		alert("Enter a valid learning rate. i.e., greater than or equal to 1.")
  	}
 	else if(document.form1.T8.value=="")
  	{
  		alert("Enter the momentum factor.")
  	}
	else if(document.form1.T9.value=="")
  	{
  		alert("Enter the value of allowable error.")
  	}
	else if(document.form1.T10.value=="")
  	{
  		alert("Enter the value of normalization factor.")
  	}
	else if((document.form1.T11.value=="")||(parseInt(document.form1.T11.value)<1))
  	{
  		alert("Enter the value of maximum no. of iterations, greater than or equal to 1.")
  	}
  	else if(document.form1.T1.value=="")
  	{
  		alert("Enter name of output classified binary image.");
  	
  	}
  	else
  	{

  		for(var b=0;b<innernodes.length;b++)
  		{
  // alert(innernodes[b]+""+srt);

  			if(parseInt(innernodes[b])<srt)
  			{
  				alert("No. of nodes in each hidden layers should be greater than " + parseInt(srt));
  				chk=1;

  			}
  		}
  		if(document.form1.T6.value=="")
  		{
  			alert("No. of nodes in each hidden layers should be greater than " + parseInt(srt));
  			chk=1;
	
  		}
  		
  		
  		if(chk==0)
   		{
    
    		
    	//document.form1.type.value=document.form1.D6.value;
    		//document.form1.display.value="1";
    	document.form1.D2.disabled=false;
    	//document.form1.T2.disabled=false;
    	document.form1.D3.disabled=false;
    	document.form1.D4.disabled=false;
    	document.form1.D5.disabled=false;
    	document.form1.D6.disabled=false;
    	document.form1.T1.disabled=false;
    	document.form1.T3.disabled=false;
    	document.form1.T4.disabled=false;
    	document.form1.T5.disabled=false;
    	document.form1.T6.disabled=false;
    	document.form1.T7.disabled=false;
    	document.form1.T8.disabled=false;
    	document.form1.T9.disabled=false;
    	document.form1.T10.disabled=false;
    	document.form1.T11.disabled=false;
    	
    	
    	document.form1.classify.value="1";
		document.form1.bnd.value="0";
    	document.form1.action="e12.jsp";
  	    document.form1.submit();
  	  /**/  

   		}
  		
  	}
  	

   //alert("f");

  
  //var maxi=0;
//alert(training_no + "asdf");
  		
  		
  	
  }

 
 

if(document.form1.generate.value=="1")
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "output_exp12.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult");
    
    


    
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("output_exp12.html", 'formresult', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
}

                  </script>

        <p>&nbsp;</p>


</body>

</html>