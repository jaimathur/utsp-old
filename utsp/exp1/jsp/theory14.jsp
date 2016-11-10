<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="File-List" href="theory14_files/filelist.xml">

<title>Theory For Experiment 2</title>
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
    
    
    
    <table id="t1" border="0" cellspacing="0" width="100%" height="1">
  <tr>
    <td height="36" valign="top"><font size="6"><b>Texture Analysis</b></font></td>
  </tr>
  <tr>
    <td height="89" valign="top">
    <p class="MsoNormal" style="margin-top: 7"><b>Concept of Texture</b></p>
    <p class="MsoNormal" align="justify">Texture is an important visual cue. formal approach or precise definition of texture does not exist! Texture discrimination techniques are for the part ad hoc. Perception of texture is dependent on the spatial organization of gray level or color variations. Manmade features have a repetitive pattern, where a basic pattern or primitive is replicated over a region. Large variation within the pattern leads to a textured appearance, while flat regions lead to a smooth appearance.</p>
    <p class="MsoNormal" style="margin-bottom: 4"><b>Sample textures</b></p>
    </td>
  </tr>
  <tr>
    <td height="143" valign="top"><!--[if gte vml 1]><v:shapetype id="_x0000_t75"
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
</v:shapetype><v:shape id="_x0000_s1089" type="#_x0000_t75" style='width:401.25pt;
 height:105.75pt;mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory14_files/image001.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=535 height=141
src="theory14_files/image002.jpg" v:shapes="_x0000_s1089"><![endif]></td>
  </tr>
  <tr>
    <td height="199" valign="top">
    <p class="MsoNormal"><b>What is Texture?</b></p>
    <p class="MsoNormal" align="justify">A feature used to partition images into regions of interest and to classify those regions. 
    texture can be understood as spatial arrangement of colors or intensities in an image. 
    It is characterized by the spatial distribution of intensity levels in a 
    neighborhood. It can also be considered as a repeating pattern of local variations in image. 
    It is an area attribute, not defined at a point.</p>
    <p class="MsoNormal"><b>Notion of Texture</b></p>
    <p class="MsoNormal" align="justify">Suppose an image has a 50% black and 50% white distribution of pixels. 
    With this same intensity distribution, a number of texture images can be 
    formed. e.g., below are the three different images with the same intensity distribution, but with different textures.</p>
    </td>
  </tr>
  <tr>
    <td height="78" valign="top"><!--[if gte vml 1]><v:shape
 id="_x0000_s1090" type="#_x0000_t75" style='width:291.75pt;height:89.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory14_files/image003.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=389 height=119
src="theory14_files/image004.jpg" v:shapes="_x0000_s1090"><![endif]></td>
  </tr>
  <tr>
    <td height="94" valign="top">
    <p class="MsoNormal"><b>Composition of Texture</b></p>
    <p class="MsoNormal" align="justify">Texture is made up of texture primitives, called texels. 
    It can be described as fine, coarse, grained or smooth, etc. Tone is based on pixel intensity properties in the texel, while structure represents the spatial relationship between texels. If texels are small and tonal differences between texels are large a fine texture results. If texels are large and consist of several pixels, a coarse texture results.</p>
    <p class="MsoNormal"><b>Texture Analysis</b></p>
    <p class="MsoNormal">Two primary issues in texture analysis are:</p>
    <p class="MsoNormal">- Texture classification</p>
    <p class="MsoNormal">- Texture segmentation</p>
    <p class="MsoNormal" align="justify">Texture classification is concerned with identifying 
    a given textured region from a given set of texture classes. Each of these regions has unique texture 
    characteristics. Statistical methods are extensively used.</p>
    <p class="MsoNormal" align="justify">Texture segmentation is concerned with automatically determining the boundaries between various texture 
    regions in an image.</p>
    <p class="MsoNormal"><b>Approaches to Measure Texture</b></p>
    <p class="MsoNormal">There are a lot of approaches exists to measure 
    texture. some of them are:</p>
    <p class="MsoNormal">-Gray Lever Co-occurrence matrix approach</p>
    <p class="MsoNormal">-Edge per unit area</p>
    <p class="MsoNormal">-First Order Statistics</p>
    <p class="MsoNormal">-Mean / average, Standard deviation</p>
    <p class="MsoNormal">-Mean Deviation, Range, Median,</p>
    <p class="MsoNormal">-Skewness</p>
    <p class="MsoNormal">-Higher order statistics</p>
    <p class="MsoNormal">-Measuring energy in various frequency sub-bands</p>
    <p class="MsoNormal">-Fractal modeling</p>
    <p class="MsoNormal">-Geostatistical methods</p>
    <p class="MsoNormal">-Wavelet transform approaches, etc.</p>
    <p class="MsoNormal"><b>Gray Level Co-occurrence Matrix Approach(GLCM)</b></p>
    <p class="MsoNormal" align="justify">GLCM is based on second order statistics (2-D histogram). It is conjectured that textures differing in second order statistics are 
    indeed different. Therefore numerical features were extracted from the image in terms of the second-order statistics that were 
    a measure of the underlying texture.</p>
    <p class="MsoNormal"><b>Definition of GLCM</b></p>
    <p class="MsoNormal">The GLCM is defined by:</p>
    <p class="MsoNormal">Pd(i,j) = n<sub>i,j</sub> = #{f(m,n) = i, f(m+dx, n+dy) = j;&nbsp; 
    (1&#8804;m&#8804;M; 1&#8804;n &#8804;N}</p>
    <p class="MsoNormal">– where n<sub>ij</sub> is the number of occurrences of the pixel values (i,j) lying at distance d in the image.</p>
    <p class="MsoNormal">– The co-occurrence matrix Pd has dimension n× n, where n is the number of gray levels in the image.</p>
    <p class="MsoNormal"><b>Construction of GLCM</b></p>
    <p class="MsoNormal" align="justify">A co-occurrence matrix is a two-dimensional array, P, 
    in which both the rows and the columns represent a set of possible image values. 
    A GLCM Pd[i,j] is defined by first specifying a displacement vector d=(dx,dy) and counting all pairs of pixels separated by d having gray levels i and j. 
    (dx,dy) define the directionality of texture;  </p>
    <p class="MsoNormal">- dx=1,dy=0 represents horizontal direction.</p>
    <p class="MsoNormal">- dx=1,dy=1 represents diagonal direction</p>
    <p class="MsoNormal"><b>Example</b></p>
    <p class="MsoNormal" align="justify">Consider the pixel data, the required 
    direction and co-occurrence matrix below. There are 16 pairs of pixels in the image which satisfy this spatial separation. Since there are only three gray levels – 0,1,2, P[i,j] is a 3×3 matrix.</p>
    </td>
  </tr>
  <tr>
    <td height="154" valign="top"><p><!--[if gte vml 1]><v:shape
 id="_x0000_s1091" type="#_x0000_t75" style='width:316.5pt;height:111pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory14_files/image005.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=422 height=148
src="theory14_files/image006.jpg" v:shapes="_x0000_s1091"><![endif]></p>
    </td>
  </tr>
  <tr>
    <td height="225" valign="top" >
					<p class="MsoNormal"><b>Algorithm to construct GLCM</b></p>
                    <p class="MsoNormal" align="justify">Count all pairs of pixels in which the 
                    first pixel has a value i, and its matching pair displaced from 
                    the first pixel by d has a value of j. This count is entered in the ith row 
                    and jth column of the matrix Pd[i,j].</p>
                    <p class="MsoNormal" align="justify"><i>Note:</i> Pd[i,j] is not symmetric in 
                    this form of counting, since the number of pairs of pixels 
                    having gray levels [i,j] does not necessarily equal the number 
                    of pixel pairs having gray levels [j,i].</p>
                    <p class="MsoNormal" align="justify"><b>Normalized GLCM</b></p>
                    <p class="MsoNormal" align="justify">The elements of Pd[i,j] can be 
                    normalized by dividing each entry by the total number of pixel 
                    pairs. Normalized GLCM N[i,j], defined by:</p>
                    </td>
  </tr>
  <tr>
    <td height="60" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1092" type="#_x0000_t75" style='width:111.75pt;height:41.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory14_files/image007.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=149 height=55
src="theory14_files/image008.jpg" v:shapes="_x0000_s1092"><![endif]></td>
  </tr>
  <tr>
    <td height="235" valign="top" >
					<p class="MsoNormal">which normalizes the co-occurrence 
                    values to lie between 0 and 1, and allows them to be 
                    thought of as probabilities.</p>
                    <p class="MsoNormal"><b>Numeric Features from GLCM</b></p>
                    <p class="MsoNormal" align="justify">Gray level co-occurrence matrices 
                    capture properties of a texture but they are 
                    not directly useful for further analysis, such as 
                    the comparison of two textures. Numeric features are computed from the 
                    co-occurrence matrix that can be used to 
                    represent the texture more compactly.</p>
                    <p class="MsoNormal" align="justify">Following are the features 
                    that can be computed from GLCM:<b> </b></p>
                    <p class="MsoNormal"><b>Angular Second Moment (ASM)</b></p>
                    <p>ASM is calculated as :</td>
  </tr>
  <tr>
    <td height="57" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1099" type="#_x0000_t75" style='width:141pt;height:39pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory14_files/image009.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=188 height=52
src="theory14_files/image010.jpg" align=left v:shapes="_x0000_s1099"><![endif]></td>
  </tr>
  <tr>
    <td height="90" valign="top" >
					<p class="MsoNormal">R is a normalizing factor. &nbsp;ASM is large when only very few gray 
                    level pairs are present in the textured image.&nbsp;K is the number of gray levels.</p>
                    <p class="MsoNormal"><b>Contrast (CON)</b></p>
                    <p class="MsoNormal">Contrast is expressed as:</p>
                    </td>
  </tr>
  <tr>
    <td height="56" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1100" type="#_x0000_t75" style='width:156pt;height:36pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory14_files/image011.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=208 height=48
src="theory14_files/image012.jpg" align=left v:shapes="_x0000_s1100"><![endif]></td>
  </tr>
  <tr>
    <td height="100" valign="top" >
					<p class="MsoNormal">This feature highlights co-occurrence 
                    of very different gray levels.</p>
                    <p><b>
                    <span style="font-size: 12.0pt; font-family: Liberation Serif">
                    Entropy (ENT)</span></b></p>
                    <p>Entropy can be expressed as:</td>
  </tr>
  <tr>
    <td height="68" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1101" type="#_x0000_t75" style='width:183.75pt;height:42pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory14_files/image013.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=245 height=56
src="theory14_files/image014.jpg" align=left v:shapes="_x0000_s1101"><![endif]></td>
  </tr>
  <tr>
    <td height="119" valign="top" >
					<p class="MsoNormal">Entropy emphasizes many different co-occurrences. P(i,j) is the normalized 
                    co-occurrence matrix, each entry indicating 
                    probability of occurrence of that gray level 
                    combination.</p>
                    <p><b>
                    <span style="font-size: 12.0pt; font-family: Liberation Serif">
                    Inverse Difference Moment (IDM)</span></b></p>
                    <p>IDM can be expressed as:</td>
  </tr>
  <tr>
    <td height="59" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1102" type="#_x0000_t75" style='width:144.75pt;height:37.5pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory14_files/image015.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=193 height=50
src="theory14_files/image016.jpg" align=left v:shapes="_x0000_s1102"><![endif]></td>
  </tr>
  <tr>
    <td height="155" valign="top" >
					<p class="MsoNormal">IDM emphasizes co-occurrence of close gray levels compared to highly 
                    different gray levels. m and r can be user specified.</p>
                    <p class="MsoNormal"><b>Summary of GLCM</b></p>
                    <p class="MsoNormal">Gray level co-occurrence matrix 
                    method is one of the most popular methods to 
                    extract texture information from an image. It is highly computation intensive. Often the image is reduced to fewer 
                    gray levels before the computation is 
                    carried out. Efficient computational procedures 
                    are derived to incrementally re-compute the 
                    co-occurrence matrix or the texture 
                    features.</p>
                    </td>
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