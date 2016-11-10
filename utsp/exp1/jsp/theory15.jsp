<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">

<title>Theory For Experiment 15</title>
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
    <td width="100%"><b><font size="6">Minimum Distance Classification</font></b></td>
  </tr>
  <tr>
    <td width="100%">&nbsp;<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<font face="Times New Roman">
	<b>
	<span style="font-family: Helvetica-Bold; ">
	Minimum Distance Classifier </span></b></font>
	<span style="font-family: Times New Roman">is the s</span><span style="font-family: Times New Roman; color: black">implest kind of supervised classification 
	technique. In this method first we calculate the mean vector for each class 
	then we calculate the statistical (Euclidean) distance
	from each pixel to class mean vector and finally </span>
	<span style="line-height: 115%; font-family: Times New Roman; color: black">
	assign each pixel to the class it is closest to.</span></p>
    <p><font size="4"><b>video for Minimum Distance Classification :</b> </font> </td>
  </tr>
  <tr>
    <td width="100%" >
					<div id="container" style="width: 480, height: 640">
                      <font size="4">Loading the player ...</font></div> 
<script type="text/javascript"> 
jwplayer("container").setup({ flashplayer: "jwplayer/player.swf", file: "mdm.flv", height: 480, width: 640 }); 
                    </script>

                        </td>
  </tr>
  <tr>
    <td width="100%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="100%"><font size="4">
	<img border="0" src="theory1.jpg"></font><p>In the above figure three 
	classes are shown with their mean vectors. The sample to be classified is 
	assigned to the class with which its statistical distance is smallest.</p>
	<p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%">
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<font face="Times New Roman">
	<b>
	<span style="font-family: Helvetica-Bold; ">
	Minimum Distance Classifier </span></b></font>
	<span style="font-size: 12.0pt; font-family: Times New Roman; color: black; font-weight:700">
	Algorithm</span></p>
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<span style="font-size: 12.0pt; font-family: Times New Roman; color: black">
	Step 1 : Estimate class mean vector and covariance matrix from
	training samples as </span></p>
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<span style="font-family: Times New Roman; color: black">
	mi
	= 
	Sj</span><font face="Times New Roman"><span style="font-family: TTE3F2CF90t00; color: black">_Ci</span><span style="font-family: TTE3F2CF90t00; color: black">
	</span>
	</font>
	<span style="font-family: Times New Roman; color: black">
	X</span><font face="Times New Roman"><span style="color: black">j</span></font><font face="Times New Roman"><span style="color: black">
	</span>
	</font>
	<span style="font-family: Times New Roman; color: black">
	; C</span><font face="Times New Roman"><span style="color: black">i</span></font><font face="Times New Roman"><span style="color: black">
	</span>
	</font>
	<span style="font-family: Times New Roman; color: black">
	= E{(X - mi
	) (X - mi
	)T
	} | X </span><font face="Times New Roman">
	<span style="font-family: TTE3F2CF90t00; color: black">_ 
	Ci}</span></font></p>
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<span style="font-family: Times New Roman; color: black">
	Step 2 : Compute distance between X and mi&nbsp; </span></p>
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<span style="font-family: Times New Roman; color: black">
	X </span>
	<font face="Times New Roman">
	<span style="font-family: TTE3F2CF90t00; color: black">_
	</span>
	</font>
	<span style="font-family: Times New Roman; color: black">
	C</span><font face="Times New Roman"><span style="color: black">i</span></font><font face="Times New Roman"><span style="color: black">
	</span>
	</font>
	<span style="font-family: Times New Roman; color: black">
	if d(X, mi)
	</span><font face="Times New Roman">
	<span style="font-family: TTE3F2CF90t00; color: black">_
	</span>
	</font>
	<span style="font-family: Times New Roman; color: black">
	d(X,mj)
	</span><font face="Times New Roman">
	<span style="font-family: TTE3F2CF90t00; color: black">_</span></font><span style="font-family: Times New Roman; color: black">j</span></p>
	<p><font face="Times New Roman">Step 3 : compute conditional probability as
	</font></td>
  </tr>
  <tr>
    <td width="100%"><font face="Times New Roman">
	<img border="0" src="theory2.jpg"></font><p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%">
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<font face="Times New Roman">
	<b>
	<span style="font-family: Helvetica-Bold; ">
	Comments on MDM</span></b></font></p>
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<span style="font-family: Times New Roman">It </span>
	<span style="font-family: Times New Roman; color: black">
	normally classifies every pixel no matter how far
	it is from a class mean (still picks closest class)
	unless the T</span><font face="Times New Roman"><span style="color: black">min</span></font><font face="Times New Roman"><span style="color: black">
	</span>
	</font>
	<span style="font-family: Times New Roman; color: black">
	condition is applied. The Distance between X and mi
	can be computed in
	different ways – Euclidean, Mahalanobis, city
	block, …</span></p>&nbsp;</td>
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