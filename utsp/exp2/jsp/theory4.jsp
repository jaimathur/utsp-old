<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="File-List" href="theory4_files/filelist.xml">

<title>Theory For Experiment 4</title>
<script type="text/javascript" src="jwplayer/jwplayer.js"></script>

<!--[if !mso]>
<style>
v\:*         { behavior: url(#default#VML) }
o\:*         { behavior: url(#default#VML) }
.shape       { behavior: url(#default#VML) }
</style>
<![endif]--><!--[if gte mso 9]>
<xml><o:shapedefaults v:ext="edit" spidmax="1027"/>
</xml><![endif]-->

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
    <td width="100%"><font size="6" face="Times New Roman"><b>Principal Component Analysis (PCA)</b></font></td>
  </tr>
  <tr>
    <td width="100%">&nbsp;</td>
  </tr>
  <tr>
    <td width="100%">
					 <p class="MsoNormal" align="justify">
                     <font face="Times New Roman">Principal component 
                     analysis (PCA) is a mathematical procedure that uses an 
                     orthogonal transformation to convert a set of observations 
                     of possibly correlated variables into a set of values of 
                     uncorrelated variables called principal components.</font></p>
                     <p class="MsoNormal" align="justify">
                     <font face="Times New Roman">In case of multiband 
                     satellite images, there are lot of redundancy in between 
                     the bands. Which means that the bands are highly 
                     correlated. This can be seen throught the following graph :
                     </font></p>
					 <p align="justify">
						<font face="Times New Roman">For better 
                        understanding of PCA on 
                        an image you must go through the recommended video 
                        provided at last:</font></p>
						</td>
  </tr>
  <tr>
     <td width="100%">&nbsp;</td>
  </tr>
  <tr>
     <td width="100%"><font face="Times New Roman" size="4">
     <span style="font-family: Liberation Serif"><!--[if gte vml 1]><v:shapetype id="_x0000_t75"
 coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe"
 filled="f" stroked="f">
 <v:stroke joinstyle="miter"/>
 <v:formulas>
  <v:f eqn="if lineDrawn pixelLineWidth 0"/>
  <v:f eqn="sum @0 1 0"/>
  <v:f eqn="sum 0 0 @1"/>
  <v:f eqn="prod @2 1 2"/>
  <v:f eqn="prod @3 21600 pixelWidth"/>
  <v:f eqn="prod @3 21600 pixelHeight"/>
  <v:f eqn="sum @0 0 1"/>
  <v:f eqn="prod @6 1 2"/>
  <v:f eqn="prod @7 21600 pixelWidth"/>
  <v:f eqn="sum @8 21600 0"/>
  <v:f eqn="prod @7 21600 pixelHeight"/>
  <v:f eqn="sum @10 21600 0"/>
 </v:formulas>
 <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"/>
 <o:lock v:ext="edit" aspectratio="t"/>
</v:shapetype><v:shape id="_x0000_s1025" type="#_x0000_t75" style='width:452.25pt;
 height:255.75pt;mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory4_files/image001.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=603 height=341
src="theory4_files/image002.jpg" v:shapes="_x0000_s1025"><![endif]></span></font><p>&nbsp;</td>
  </tr>
  <tr>
     <td width="100%">
     <p class="MsoNormal"><font face="Times New Roman">So, to remove 
     the redundancy and to keep only the meaningful information Principal 
     Component Transform is used. Before going to PCT, just have a look on 
     covariance and correlation.</font></p>
     <p><font face="Times New Roman">
     <span style="font-family: Liberation Serif; font-style: italic; font-weight: 700">
     Covariance is calculated as :</span></font></p>
     <p>&nbsp;</td>
  </tr>
  <tr>
     <td width="100%"><font face="Times New Roman" size="4"><!--[if gte vml 1]><v:shape
 id="_x0000_s1026" type="#_x0000_t75" style='width:182.25pt;height:81pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory4_files/image003.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=243 height=108
src="theory4_files/image004.jpg" v:shapes="_x0000_s1026"><![endif]></font><p>&nbsp;</td>
  </tr>
  <tr>
     <td width="100%">
     <p class="MsoNormal" align="justify"><font face="Times New Roman">where M and N 
     are number of rows and columns in the image, k and l are the two bands 
     chosen for covariance calculation on them. So the covariance matrix is 
     formed by taking all the band combination taking two of them at a time.</font></p>
     <p class="MsoNormal" align="justify"><b><font face="Times New Roman"><i>Covariance 
     Matrix (C) </i></font></b></p>
     <p class="MsoNormal" align="justify"><font face="Times New Roman">C = {C<sub>kl</sub> 
     | k = 1, …, K, l = 1, …, K}</font></p>
     <p class="MsoNormal" align="justify"><font face="Times New Roman">Here, K is the 
     number of bands in which the multispectral dataset was generated.</font></p>
     <p class="MsoNormal" align="justify"><font face="Times New Roman">C is a symmetric 
     matrix.&nbsp;Diagonal elements of C are the intra-band variances.&nbsp;Off-diagonal 
     elements are the inter-band covariances.</font></p>
     <p class="MsoNormal" align="justify"><font face="Times New Roman">&nbsp;</font></p>
     <p align="justify"><font face="Times New Roman">
     <span style="font-family: Liberation Serif; font-style: italic; font-weight: 700">
     Correlation (R<sub>kl</sub>) is calculated as : </span></font></p>
     <p>&nbsp;</td>
  </tr>
  <tr>
     <td width="100%"><font face="Times New Roman" size="4"><!--[if gte vml 1]><v:shape
 id="_x0000_s1027" type="#_x0000_t75" style='width:163.5pt;height:74.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory4_files/image005.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=218 height=99
src="theory4_files/image006.jpg" v:shapes="_x0000_s1027"><![endif]></font></td>
  </tr>
  <tr>
     <td width="100%">
     <p class="MsoNormal" align="justify"><font face="Times New Roman">So, it can be 
     noticed that R<sub>kl</sub> = C<sub>kl</sub> + µ<sub>k</sub>µ<sub>l</sub></font></p>
     <p class="MsoNormal" align="justify"><font face="Times New Roman"><b>Now, coming 
     to the problem to solve :</b></font></p>
     <p class="MsoNormal" align="justify"><font face="Times New Roman">1) Find a 
     transformation to be applied to the input multispectral image such that the 
     covariance matrix of the result is reduced to a diagonal matrix.</font></p>
     <p class="MsoNormal" align="justify"><font face="Times New Roman">2)&nbsp; Further, we 
     should find an axis v such that the variance of the projected coordinates (z<sub>k</sub> 
     = v<sub>k</sub><sup>t</sup> x) is maximum.</font></p>
     <p class="MsoNormal" align="justify"><font face="Times New Roman">Here, is the 
     solution. Given the transformed vector</font></p>
     <p class="MsoNormal" align="justify"><font face="Times New Roman">z<sub>k</sub> = 
     v<sub>k</sub><sup>t</sup> x</font></p>
     <p class="MsoNormal" align="justify"><b><font face="Times New Roman"><i>The 
     variance &#963;<sub>z2</sub> will be :</i></font></b></p>
     </td>
  </tr>
  <tr>
     <td width="100%"><font face="Times New Roman" size="4"><!--[if gte vml 1]><v:shape
 id="_x0000_s1028" type="#_x0000_t75" style='width:171pt;height:66.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory4_files/image007.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=228 height=89
src="theory4_files/image008.jpg" v:shapes="_x0000_s1028"><![endif]></font></td>
  </tr>
  <tr>
     <td width="100%">
     <p class="MsoNormal"><font face="Times New Roman">This simplifies 
     to &#963;<sub>z2</sub> = v<sup>t</sup>Cv</font></p>
     <p class="MsoNormal"><font face="Times New Roman">C, the 
     covariance matrix is a positive, semi-definite, real symmetric matrix. Now, 
     to maximize the projected variance &#963;<sub>z2</sub>, find a v such that v<sup>t</sup>Cv 
     is maximum, subject to the constraint v<sup>t</sup>v = 1. Combining the 
     maximization function with the constraint, we can write</font></p>
     <p class="MsoNormal"><font face="Times New Roman">&nbsp;v<sup>t</sup>Cv 
     – &#955;(v<sup>t</sup>v – 1) = maximum</font></p>
     <p><font face="Times New Roman">
     <span style="font-family: Liberation Serif">To do so, we should 
     differentiate the L.H.S. w.r.t. V, and equate the result to 0.</span></font></p>
     </td>
  </tr>
  <tr>
     <td width="100%"><font face="Times New Roman" size="4"><!--[if gte vml 1]><v:shape
 id="_x0000_s1029" type="#_x0000_t75" style='width:186.75pt;height:41.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory4_files/image009.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=249 height=55
src="theory4_files/image010.jpg" v:shapes="_x0000_s1029"><![endif]></font></td>
  </tr>
  <tr>
     <td width="100%">
     <p class="MsoNormal"><font face="Times New Roman">The derivative 
     results in</font></p>
     <p class="MsoNormal"><font face="Times New Roman">Cv = &#955;v &nbsp;</font></p>
     <p class="MsoNormal"><font face="Times New Roman">Comparing this 
     equation with the matrix property relating eigen value and eigen vector of 
     a matrix, we conclude&nbsp; v is an eigen vector of C.</font></p>
     <p class="MsoNormal"><font face="Times New Roman">Now see the 
     equation,</font></p>
     <p class="MsoNormal"><font face="Times New Roman">v<sup>t</sup>Cv 
     = v<sup>t</sup>(&#955;v) = &#955;v<sup>t</sup>v = &#955;</font></p>
     <p class="MsoNormal"><font face="Times New Roman">So, we can say 
     that&nbsp; all the eigen vectors with decreasing eigenvalues lead to axes with 
     decreasing variance along them.</font></p>
     <p class="MsoNormal"><b><font face="Times New Roman"><i>Final 
     Transformation</i></font></b></p>
     <p class="MsoNormal"><font face="Times New Roman">New component 
     value = dot product of eigenvector and pixel vector.</font></p>
     <p class="MsoNormal"><font face="Times New Roman">e.g., 1st principal 
     component = dot product of pixel vector with eigen vector corresponding to 
     largest eigenvalue.</font></p>
     <p class="MsoNormal"><b><font face="Times New Roman" size="4">Inverse 
     PCT</font></b></p>
     <p class="MsoNormal" align="justify"><font face="Times New Roman">Inverse PCT is 
     used to generate the bands in the original domain.&nbsp;If ALL PCTs are 
     retained, inverse will give back the original bands.&nbsp;If any PCTs are 
     dropped, inverse will give new bands in the original domain that may be 
     close to the original bands depending on how many PCTs are discarded.</font></td>
  </tr>
  <tr>
     <td width="100%">&nbsp;</td>
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