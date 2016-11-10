<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">

<title>Theory For Experiment 16</title>
<script type="text/javascript" src="jwplayer/jwplayer.js"></script>

</head>

<body topmargin="0" leftmargin="0">

<table id="table2" border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" cellpadding="0" bgcolor="#FFFFFF">
  <tr>
    <td width="15" height="15">
    <img border="0" src="images/cornertl.jpg" width="100%" height="100%"></td>
    <td height="15">
    <img border="0" src="images/sidet.jpg" width="100%" height="100%"></td>
    <td width="15" height="15">
    <img border="0" src="images/cornertr.jpg" width="100%" height="100%"></td>
  </tr>
  <tr>
    <td width="15">
    <img border="0" src="images/sidel.jpg" width="100%" height="100%"></td>
    <td valign="top">
    
    
    
    <table id="t1" border="0" cellspacing="0" width="100%">
  <tr>
    <td width="100%"><font size="6"><b>Parallelpiped</b></font><b><font size="6"> Classification</font></b></td>
  </tr>
  <tr>
    <td width="100%">&nbsp;<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<font face="Times New Roman">
	<b>
	<span style="font-family: Helvetica-Bold; ">
	Parallelepiped Classifier</span><span style="font-family: Helvetica-Bold; color: #33339A"> </span></b>
	</font><span style="font-family: Times New Roman; color: black">
	Assign ranges of values for each class in
	each band. It is “feature space” classifier. Training data provide bounds for each feature
	for each class. It results in bounding boxes for each class. In this 
	classification a pixel is assigned to a class only if its feature</span><span style="line-height: 115%; font-family: Times New Roman; color: black">
	vector falls within the corresponding box.</span></p>
    <p><font face="Times New Roman"><b>video for Parallelpiped Classification :</b> </font> </td>
  </tr>
  <tr>
    <td width="100%" >
					<div id="container" style="width: 480, height: 640">
                      <font face="Times New Roman">Loading the player ...</font></div> 
					<font face="Times New Roman"> 
<script type="text/javascript"> 
jwplayer("container").setup({ flashplayer: "jwplayer/player.swf", file: "parallel.flv", height: 480, width: 640 }); 
                    </script>

                        </font>

                        </td>
  </tr>
  <tr>
    <td width="100%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="100%"><font face="Times New Roman">
	<img border="0" src="theory3.jpg"></font><p><font face="Times New Roman">In 
	the above figure cuboids based on the input ranges depending on training 
	data are formed.</font></p>
	<p>
	<font face="Times New Roman">
	<img border="0" src="theory4.jpg"></font></p>
	<p><font face="Times New Roman">The sampled pixel is assigned to the class 
	in whose cuboid it falls.</font></td>
  </tr>
  <tr>
    <td width="100%">
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<font face="Times New Roman"><b>
	<span style="font-family: Helvetica-Bold; ">
	Advantages/Disadvantages of
	Parallelpiped Classifier</span></b></font></p>
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<span style="font-family: Times New Roman">It </span>
	<span style="font-family: Times New Roman; color: black">
	Does NOT assign every pixel to a class. Only
	the pixels that fall within ranges are classified. This is the fastest method computationally. 
	This classified is good for helping decide if you need additional
	classes (if there are many unclassified pixels). Problems come when class ranges overlap. 
	In such cases one must</span><span style="line-height: 115%; font-family: Times New Roman; color: black">
	develop rules to deal with overlap areas.</span></p></td>
  </tr>
  <tr>
    <td width="100%">&nbsp;</td>
  </tr>
  </table>


</td>
    <td width="15">
    <img border="0" src="images/sider.jpg" width="100%" height="100%"></td>
  </tr>
  <tr>
   <td width="15" height="15">
    <img border="0" src="images/cornerbl.jpg" width="100%" height="100%"></td>
    <td height="15">
    <img border="0" src="images/sideb.jpg" width="100%" height="100%"></td>
    <td width="15" height="15">
    <img border="0" src="images/cornerbr.jpg" width="100%" height="100%"></td>
  </tr>
</table>

<script language="javascript">
{
var h=document.getElementById("t1").offsetHeight;
h=h+60;
document.getElementById("table2").style.height=""+h+"px";
}
</script>


</body>

</html>