<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">

<title>Theory For Experiment 17</title>
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
    <td width="100%"><b><font size="6"> Class Separability</font></b></td>
  </tr>
  <tr>
    <td width="100%">&nbsp;<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<font face="Times New Roman">Class separability refers to how much 
	distinguishing features two classes have. For example, if we need to 
	separate a bunch of fruits then we will have to choose combination of 
	features like color, shape, season, etc. to get maximum separable groups. 
	The below figure shows the two generics cases of well separated and poorly 
	separated classes.</font></p>
	<p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%"><font face="Times New Roman">
	<img border="0" src="theory5.jpg"></font></td>
  </tr>
  <tr>
    <td width="100%"><font face="Times New Roman">When two classes are 
	represented as normal distribution then larger the variance and closer the 
	means refers low separability of classes. The phenomenon is presented in the 
	figure below :</font></td>
  </tr>
  <tr>
    <td width="100%"><font face="Times New Roman">
	<img border="0" src="theory6.jpg"></font></td>
  </tr>
  <tr>
    <td width="100%">
	<p class="MsoNormal"><font face="Times New Roman"><b>
	<span style="line-height: 115%; font-family: Helvetica-Bold">Some Distance 
	Measures To Measure Class Separability</span></b></font></p>
	<p class="MsoNormal"><font face="Times New Roman"><b>Divergence : </b>It is
	</font><span style="font-family: Times New Roman">b</span><span style="font-family: Times New Roman; color: black">ased 
	on a measure of difference between pairs of classes.</span></p>
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<span style="font-family: Times New Roman; color: black">Consider the 
	likelihood ratio for two classes</span></p>
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<font face="Times New Roman"><i><span style="font-family: Times-Italic">Lij 
	(x</span></i><span style="font-family: Times-Roman">) </span></font>
	<span style="font-family: Times New Roman">= </span>
	<font face="Times New Roman"><i><span style="font-family: Times-Italic">p</span></i><span style="font-family: Times-Roman">(</span><i><span style="font-family: Times-Italic">x</span><span style="font-family: Times-Italic">
	</span></i><span style="font-family: Times-Roman">| </span><i>
	<span style="font-family: Times-Italic">wi </span></i>
	<span style="font-family: Times-Roman">) / </span><i>
	<span style="font-family: Times-Italic">p</span></i><span style="font-family: Times-Roman">(</span><i><span style="font-family: Times-Italic">x</span><span style="font-family: Times-Italic">
	</span></i><span style="font-family: Times-Roman">| </span><i>
	<span style="font-family: Times-Italic">wj </span></i>
	<span style="font-family: Times-Roman">)</span></font></p>
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<span style="font-family: Times New Roman; color: black">where p(</span><font face="Times New Roman"><b><span style="font-family: Helvetica-Bold; color: black">x</span></b></font><span style="font-family: Times New Roman; color: black">|wi) 
	and p(</span><font face="Times New Roman"><b><span style="font-family: Helvetica-Bold; color: black">x</span></b></font><span style="font-family: Times New Roman; color: black">|wj) 
	are the i</span><font face="Times New Roman"><span style="color: black">th</span></font><font face="Times New Roman"><span style="color: black">
	</span></font><span style="font-family: Times New Roman; color: black">and j</span><font face="Times New Roman"><span style="color: black">th</span></font><font face="Times New Roman"><span style="color: black">
	</span></font><span style="font-family: Times New Roman; color: black">
	spectral class probability distributions</span></p>
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<span style="font-family: Times New Roman; color: black">L</span><font face="Times New Roman"><span style="color: black">ij</span></font><font face="Times New Roman"><span style="color: black">
	</span></font><span style="font-family: Times New Roman; color: black">= 0 
	or infinity for highly separable classes</span></p>
	<p class="MsoNormal">
	<span style="line-height: 115%; font-family: Times New Roman; color: black">
	Let Lij’ = ln (p(</span><font face="Times New Roman"><b><span style="line-height: 115%; font-family: Helvetica-Bold; color: black">x</span></b></font><span style="line-height: 115%; font-family: Times New Roman; color: black">|wi)) 
	– ln (p(</span><font face="Times New Roman"><b><span style="line-height: 115%; font-family: Helvetica-Bold; color: black">x</span></b></font><span style="line-height: 115%; font-family: Times New Roman; color: black">|wj))</span></p>
	<p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%"><font face="Times New Roman">
	<img border="0" src="theory7.jpg"></font></td>
  </tr>
  <tr>
    <td width="100%">
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<span style="font-family: Times New Roman; color: black">Divergence is a
	</span><font face="Times New Roman"><b><i>
	<span style="font-family: Helvetica-BoldOblique; color: black">distance 
	metric. </span></i></b></font>
	<span style="font-family: Times New Roman; color: black">Divergence of a 
	class with itself is zero. It can be shown that dij(x1, x2, …, xn) &gt; dij(x1, 
	x2, … , xn-1) which means that divergence increases with more features. This 
	is true for statistically independent</span><span style="line-height: 115%; font-family: Times New Roman; color: black"> 
	features.</span></p>
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<font face="Times New Roman"><b><span style="font-family: Helvetica-Bold">
	Jeffries Matusita (JM) Distance</span></b></font></p>
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<span style="font-family: Times New Roman; color: black">The JM distance is 
	defined as J</span><font face="Times New Roman"><span style="color: black">ij</span></font><font face="Times New Roman"><span style="color: black">
	</span></font><span style="font-family: Times New Roman; color: black">= 
	2(1-e</span><sup><span style="font-family: Times New Roman; color: black">-B</span></sup><span style="font-family: Times New Roman; color: black">), 
	where B is the Bhattacharyya distance between the two classes. The average 
	JM distance J</span><font face="Times New Roman"><span style="color: black"><sub>ave</sub>
	</span></font><span style="font-family: Times New Roman; color: black">
	between the</span><span style="line-height: 115%; font-family: Times New Roman; color: black"> 
	classes is given by</span></p>
	<p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%"><img border="0" src="theory8.jpg"></td>
  </tr>
  <tr>
    <td width="100%">
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<font face="Times New Roman"><b><span style="font-family: Helvetica-Bold">
	Interpretation of JM distance</span></b></font></p>
	<p class="MsoNormal" style="line-height: normal; text-autospace: none; margin-bottom: .0001pt">
	<span style="font-family: Times New Roman; color: black">As the separation 
	between classes increases, the JM distance increases exponentially towards 
	2. This is a desirable behavior compared to the divergence measure. 
	Computationally JM distance is more</span><span style="line-height: 115%; font-family: Times New Roman; color: black"> 
	expensive than Divergence.</span></p>
	<p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%">
    &nbsp;</td>
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