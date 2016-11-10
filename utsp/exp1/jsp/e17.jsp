<%@ page language = "java" import = "java.io.*, java.util.Date, java.awt.*, javax.imageio.*, imageprocessing.*, java.awt.image.*;" %>

<html>
<%
ReadImage ri=null;

String selected="---select---";
String sline="";
String sline1="";
int filter=0;



String disp="0";
int win_no=0;
String bin_class="0";



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
String gen="0";
String nob="0";
int bval=0;
int band=0;
int row=0;
int col=0;
String maxno_class="";
Date dt=new Date();
int tr_c=0;
String metric="Divergence";
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

//-------------------------------------//
	}
	catch(Exception e)
	{//out.println(e.toString());
	}
try{

if((request.getParameter("D2")!=null)&&((request.getParameter("display")).equals("1")))
{

		disp="1";
        sb1=request.getParameter("D3");
		sb2=request.getParameter("D4");
		sb3=request.getParameter("D5");
		//win_no=Integer.parseInt(request.getParameter("T2"));
		bin_class=request.getParameter("T1");
		disable="disabled";
 metric=request.getParameter("D6");

		ri=new ReadImage(inpath);
		ri.writeImage(Integer.parseInt(sb1),Integer.parseInt(sb2),Integer.parseInt(sb3),ri.imageData,ri.r,ri.c,outpath+"out_original_img");
		output=1;
		
		
		//----------------------------------------------------------------//


}


if((request.getParameter("D2")!=null)&&((request.getParameter("classify")).equals("1")))
{
noband=Integer.parseInt(request.getParameter("noofband"));	
init=request.getParameter("D2");
	selected=init;
    metric=request.getParameter("D6");
		
        sb1=request.getParameter("D3");
		sb2=request.getParameter("D4");
		sb3=request.getParameter("D5");
		win_no=Integer.parseInt(request.getParameter("tr_no"));
		bin_class=request.getParameter("T1");
		int clsno=Integer.parseInt(request.getParameter("class_no"));
	
		f=new File("C:\\uploads\\"+session_user+"_classified");
		if(!f.exists())
		{
			f.mkdir();
		}
	PrintStream p=new PrintStream(new FileOutputStream("C:\\uploads\\"+session_user+"\\RGB.txt",false));
	System.setOut(p);
	System.out.println(sb1+" "+sb2+" "+sb3);
	
	PrintStream ps=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"/param.txt",false));
	System.setOut(ps);
	System.out.println("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/output/"+session_user+"/");
	//System.out.println("C:\\uploads\\" +session_user+"_classified\\" + bin_class);
	System.out.println(inpath);
	/*
	if((selected.equals("inputimage"))||(selected.equals("HSV_sample1.tif")))
	{
	 	System.out.println("C:\\uploads\\common\\" + init);

	}
	else
	{
		System.out.println("C:\\uploads\\" +session_user+"\\"+ init);
		
	}*/
	System.out.println(metric+"");
	System.out.println(bin_class+"");
	

	PrintStream ps1=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"_classified/trainingwindows.trn",false));
	System.setOut(ps1);
	for(int x=1;x<=win_no;x++)
	{
		System.out.println(request.getParameter("area"+x));
	}
	ps1.close();
	ps1=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"_classified/colorclass.clr",false));
	System.setOut(ps1);
	for(int x=1;x<=clsno;x++)
	{
		System.out.println(request.getParameter("colorc" + x));
	}
	ps1.close();

	
	
	Process pr=null;
	
	pr= Runtime.getRuntime().exec("C:\\VSIP\\classsep.exe C:\\uploads\\"+session_user+"\\param.txt" + " C:\\uploads\\"+session_user+"\\RGB.txt" + " C:\\uploads\\"+session_user+"_classified\\trainingwindows.trn");
	
	pr.waitFor();
	pr.destroy();
	bin_class="";
	maxno_class=request.getParameter("class_no");
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
<title>Experiment 17: Class Seperability</title>
<script type="text/javascript" src="jscolor/jscolor.js"></script>

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


<%//out.println("krishna "+ selected +" " +request.getParameter("D2"));%>
<p align="center">

<table id="cnt1" border="1" cellspacing="0" width="808"  cellpadding="0" style="border-style:solid; border-width:1; border-collapse: collapse" bordercolor="#9999FF" >

	<tr>
    	<td width="808" height="79%" style="border-right:medium none #9999FF; background-repeat: repeat-x; border-left-style:none; border-left-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" colspan="2" valign="top" bgcolor="#0E92E4">
        <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="33">
          <tr>
            <td width="50%" height="30" style="border-bottom-style: solid; border-bottom-width: 1">
            <p style="margin-top: 4"><font size="5" color="#FFFFFF">Class Separability</font></td>
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
    	<td width="808" height="1%" colspan="2" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  &nbsp;<i><b>Select Color 
        Composite</b></i></td>
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
        &nbsp;Metric For Separability</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
			<select size="1" name="D6" value="" <%=disable%>>
  
  <%if(metric.equals("Divergence"))
  {%>
  
  <option selected>Divergence</option>
	<option value="JM">JM Distance</option>
	<%}
	else
	{%>
		<option>Divergence</option>
	<option selected value="JM">JM Distance</option>
	
	<%}%>
  </select></td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;Scaling Factor For Divergence</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	<input type="text" id="T1" name="T1" size="13" value="<%=bin_class%>" <%=disable%>></td>
  	</tr>
  
<%if(disp.equals("1"))
{
%> 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;</td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
 	
  	<tr>
    	<td width="808" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF" colspan="2">    
        &nbsp;<i><b>Pick training window coordinates</b></i></td>
  	</tr>
  
 	
  	<tr>
    	<td width="808" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF" colspan="2">    
        &nbsp;</td>
  	</tr>
  
 	
  	<tr>
    	<td width="293" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF">    
        &nbsp;<b><i>Color Picker </i></b>
            <input class="color {pickerClosable:true}" name="T2" id="T2" onchange="changecolor()" size="7" disabled></td>
    	<td width="515" height="1%" style="border-left-style: none; border-left-width: medium; border-right: medium none #9999FF; border-top-style: none; border-top-width: medium; border-bottom-style: none; border-bottom-width: medium" bgcolor="#FFFFFF">  
        	&nbsp;</td>
  	</tr>
  
 	
  	<tr>
    	<td width="808" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF" colspan="2">    
        &nbsp;</td>
  	</tr>
<%}%>  

  	 	
  	<tr>
    	<td width="808" height="1%" style="border-style: none; border-width: medium" bgcolor="#FFFFFF" colspan="2">    
        &nbsp;<%if(!disp.equals("0")){%><input type="button" id="B6" name="B6" value="Add Class"  onclick='addClass()' style="height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" > <%}%>
        <input type="button" name="B1" <%if(disp.equals("0")){%>value="Display"  onclick='verify2()' <%}else{%>value="Process"  onclick='process()'  <%}%>style="height: 28px; width: 120px; border-style:solid; border-width:0; color: #FFFFFF; background-image: url('images/blackbutton.jpg')" ></td>
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



<%if(output==1)
    {%><p align="left">
        </p>
   <table border="1" cellspacing="0" cellpadding="0" style="border-style:solid; border-width:1; border-collapse: collapse" bordercolor="#9999FF" height="29" bgcolor="#0E92E4" >
          <tr>
            <td width="476" height="29"><b><font color="#FFFFFF">&nbsp;Original Image(pick training window coordinates from this image)</font></b></td>
          </tr>
          
        </table>
                    <img id="pointer_div" onclick="point_it(event)" src="output/<%=session_user%>/out_original_img.bmp?date=<%=dt%>">

 
	<%}%>





<script language = "javascript" >
 {
//var tr_c=parseInt('<%=tr_c%>'+"");
 var tr_c=0;
 var cls=0;
 var classcolor="a";
 var cheight=0;
var oheight=0;
var heightdiff=0;
 
var click=-1;
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
  	
  	document.form1.action="e17.jsp";
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
function changecolor()
{
//alert("a");
classcolor= "#"+document.getElementById("T2").value;


var newcolor=document.createElement("input");
   		newcolor.style.visibility='hidden';
   		newcolor.setAttribute("id","colorc" + classcounter);
   		newcolor.setAttribute("name","colorc" + classcounter);

   		newcolor.setAttribute("value",document.getElementById("T2").value+"");
   		//var tbody=document.getElementById("training_table").getElementsByTagName("tbody")[0];//.appendChild(newarea);
   		//var row=document.createElement("tr");

//var data1=document.createElement("td");
		document.form1.appendChild(newcolor);




click=0;


//document.getElementById("T1").disabled=true;
//document.body.click();

//alert("");
//alert("#"+document.getElementById("T2").value);
}

function addClass()
{
click=-1;
classcounter=classcounter+1;





//alert("First pick color for new class then only you can add new class");
document.getElementById("T2").disabled=false;
document.getElementById('T2').focus();

}

function pickU(variable)
{

document.form1.selected_class_type.value="U";
document.form1.selected_class.value=variable;
//alert(variable+"KK"+document.form1.selected_class.value);

}
function pickL(variable)
{
document.form1.selected_class_type.value="L";
document.form1.selected_class.value=variable.name;
//alert("L" +document.form1.selected_class.value);

}
function point_it(event){

	var pos_x = event.offsetX?(event.offsetX):event.pageX-document.getElementById("pointer_div").offsetLeft;
	var pos_y = event.offsetY?(event.offsetY):event.pageY-document.getElementById("pointer_div").offsetTop;
//	document.getElementById("cross").style.left = (pos_x-1) ;
//	document.getElementById("cross").style.top = (pos_y-15) ;
//	document.getElementById("cross").style.visibility = "visible" ;


	if(click==0)
	{
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
		click=0;	
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
   		newdiv.setAttribute("id","div" + tr_c);
   		document.getElementsByTagName('body')[0].appendChild(newdiv);
   		area=area+1;
   		var newarea=document.createElement("input");
   		newarea.style.visibility='hidden';
   		newarea.setAttribute("id","area" + area);
   		newarea.setAttribute("name","area" + area);

   		newarea.setAttribute("value",coordy1 + " " + coordy2 + " " + coordx1 + " " + coordx2 + " " + classcounter);
   		//var tbody=document.getElementById("training_table").getElementsByTagName("tbody")[0];//.appendChild(newarea);
   		//var row=document.createElement("tr");

//var data1=document.createElement("td");
		document.form1.appendChild(newarea);
		
		

   		//document.getElementsByTagName('body')[0].appendChild(newarea);
   		document.getElementById("T2").disabled=true;
//var tbody=document.getElementById("training_table").getElementsByTagName("tbody")[0];

   		
   		

	}
	

}

 
  function verify2()
  {
  	if(document.form1.D2.value=="---select---")
  	{
  		
  		alert("choose an image.");
  		
  	}
  	else if(document.form1.T1.value=="")
  	{
  		alert("Enter scaling factor.");
  	
  	}
  	else
    {
    	//document.form1.type.value=document.form1.D6.value;
    		//document.form1.display.value="1";
    	document.form1.display.value="1";
		document.form1.bnd.value="0";
    	document.form1.action="e17.jsp";
  	    document.form1.submit();
  	    

   	}
  }
  function process()
  {
  
    
    	//alert(document.form1.area1.value + "" + document.form1.area2.value);
    	document.form1.D2.disabled=false;
    	//document.form1.T2.disabled=false;
    	document.form1.T1.disabled=false;
    	document.form1.D6.disabled=false;
    	document.form1.D3.disabled=false;
    	document.form1.D4.disabled=false;
    	document.form1.D5.disabled=false;
    	document.form1.image_size.value=document.getElementById("pointer_div").height+"_"+document.getElementById("pointer_div").width+"_";
    	document.form1.class_no.value=classcounter;
    	document.form1.tr_no.value=area;
    	document.form1.classify.value="1";
		document.form1.bnd.value="0";
    	document.form1.action="e17.jsp";
    	//alert(document.form1.colorc1.value+"");
    	
    	
    	
  	    document.form1.submit();
  	  /**/  

   
  }

 
 

if(document.form1.generate.value=="1")
{
//alert("a");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "output_exp17.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult");
    
    var hiddenField = document.createElement("input");              
    hiddenField.setAttribute("name", "class");
    hiddenField.setAttribute("value", '<%=maxno_class%>');
    hiddenField.setAttribute("type","hidden");
     form.appendChild(hiddenField);
//alert("b");
 	var hiddenField2 = document.createElement("input");              
    hiddenField2.setAttribute("name", "metric");
    hiddenField2.setAttribute("value", '<%=metric%>');
    hiddenField2.setAttribute("type","hidden");
     form.appendChild(hiddenField2);

//alert("c");
	var hiddenField1 = document.createElement("input");              
    hiddenField1.setAttribute("name", "band");
    hiddenField1.setAttribute("value", '<%=noband%>');
    hiddenField1.setAttribute("type","hidden");
     form.appendChild(hiddenField1);
     
     var hiddenField2 = document.createElement("input");              
    hiddenField2.setAttribute("name", "twindows");
    hiddenField2.setAttribute("value", '<%=win_no%>');
    hiddenField2.setAttribute("type","hidden");
     form.appendChild(hiddenField2);


	var hiddenField3 = document.createElement("input");              
    hiddenField3.setAttribute("name", "path");
    hiddenField3.setAttribute("value", '<%=inpath%>');
    hiddenField3.setAttribute("type","hidden");
     form.appendChild(hiddenField3);

//alert("d");

    
    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("output_exp17.html", 'formresult', 'scrollbars=yes,menubar=no,height=600,width=650,resizable=yes,toolbar=no,status=no');
    
   form.submit();
//   alert("e");
}

                  </script>

        <p>&nbsp;</p>

</form>
</body>


</html>