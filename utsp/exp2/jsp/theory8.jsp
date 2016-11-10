<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="File-List" href="theory8_files/filelist.xml">

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
    
    
    
    <table id="t1" border="0" cellspacing="0" width="100%">
  <tr>
    <td width="100%" height="18"><b><font size="6">Indices</font></b></td>
  </tr>
  <tr>
    <td width="100%" height="76"><b>Motivation:</b><p class="MsoNormal" align="justify">In a 
    given pair of bands the response of two objects is generally different. For 
    example in the diagram below you can see the different response of different 
    objects in different wavebands.</td>
  </tr>
  <tr>
    <td width="100%" height="380" >
					<!--[if gte vml 1]><v:shapetype id="_x0000_t75"
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
</v:shapetype><v:shape id="_x0000_s1043" type="#_x0000_t75" style='width:468.75pt;
 height:255.75pt;mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory8_files/image001.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=625 height=341
src="theory8_files/image002.jpg" v:shapes="_x0000_s1043"><![endif]><p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" height="76" >
					<p class="MsoNormal" align="justify">Pixel by pixel comparison between 
                    images can highlight pixels that have very high difference 
                    in
                    <span style="font-size: 12.0pt; font-family: Liberation Serif">
                    reflectance in such bands. </span>Operations like band 
                    difference and band ratio or combinations of them are 
                    popularly used for
                    <span style="font-size: 12.0pt; font-family: Liberation Serif">
                    this purpose. Some of such operations are described below :
                    </span></p>
                    </td>
  </tr>
  <tr>
    <td width="100%" height="196" >
					<p class="MsoNormal"><b>Band Ratio</b></p>
                    <p class="MsoNormal">Band ratio is a very common operation. 
                    For each pixel with position (m,n) can be expressed as :</p>
                    <p class="MsoNormal">Ratio<sub>i,j</sub>(m,n) = Band<sub>i</sub> 
                    (m,n) / Band<sub>j</sub>(m,n)</p>
                    <p class="MsoNormal">Here, m and n are row and column 
                    position respectively. i and j denotes the bands over which 
                    operation is performed. If Band<sub>j</sub>(m,n) = 0, 
                    suitable adjustment has to be made (e.g., add +1 to the 
                    denom.). Minimum ratio will be 0; Maximum ratio will be 255.</p>
                    <p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" height="228" >
					<p class="MsoNormal"><b>Normalized Difference Vegetation 
                    Index (NDVI)</b></p>
                    <p class="MsoNormal">Combination of band differences, ratios 
                    and additions can result in useful outputs that can 
                    highlight features like green vegetation. One such feature 
                    is Normalized Difference Vegetation Index (NDVI). It can be 
                    expressed as :</p>
                    <p class="MsoNormal">NDVI(m,n) = [Band IR (m, n) &#8722; Band R 
                    (m, n)] / [Band IR (m, n) + Band R (m, n)]</p>
                    <p class="MsoNormal">NDVI results in high values where IR 
                    dominates red wavelength. This happens where vegetation is 
                    present.&nbsp;Range of NDVI is [-1 +1].&nbsp;NDVI has been widely used 
                    in a wide range of agricultural, forestry and biomass 
                    estimation applications.&nbsp;It is also used to measure the 
                    length of crop growth and dry-down periods by comparing NDVI<span style="font-size: 12.0pt; font-family: Liberation Serif"> 
                    computed from multidate images.</span></p>
                    <p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" height="152" >
					<p class="MsoNormal"><b>Soil Adjusted Vegetation Index (SAVI)</b></p>
                    <p class="MsoNormal">The soil adjusted vegetation index (SAVI) 
                    introduces a soil calibration factor, L, to the NDVI 
                    equation to minimize soil background influences resulting 
                    from first order soil-plant spectral interactions. It can be 
                    expressed as :</p>
                    <p class="MsoNormal">SAVI =[(1 + L ) * ( NIR &#8722; red )] / [NIR 
                    + red + L]</p>
                    <p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" height="215" >
					<p class="MsoNormal"><b>Atmospheric Adjusted Vegetation 
                    Index (ARVI)</b></p>
                    <p class="MsoNormal">The atmospheric effects are accounted 
                    for in ARVI. It can be expressed as :</p>
                    <p class="MsoNormal">ARVI = [(p * <sub>nir</sub> &#8722; p * <sub>
                    rb</sub>)] / [(p * <sub>nir</sub> + p * <sub>rb</sub>)]</p>
                    <p class="MsoNormal">Where, p*<sub>rb</sub> = p*<sub>red</sub> 
                    &#8722;&#947; ( p*<sub>blue</sub> &#8722; p*<sub>red</sub>)</p>
                    <p class="MsoNormal">p* indicates the atmospherically 
                    corrected versions of NIR, Red and Blue bands for molecular 
                    scattering and ozone absorption.</p>
                    <p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" height="215" >
					<p class="MsoNormal"><b>Enhanced Vegetation Index (EVI)</b></p>
                    <p class="MsoNormal">EVI is a mixture of SAVI and ARVI, in 
                    that both atmospheric effects and soil effects are accounted 
                    for. It can be expressed as : </p>
                    <p class="MsoNormal">EVI = [(p * <sub>nir</sub> &#8722; p * <sub>
                    red</sub>)] / [(p *<sub> nir</sub> + C<sub>1</sub> p * <sub>
                    red</sub> &#8722; C<sub>2</sub> p *<sub> blue</sub> + L)]</p>
                    <p class="MsoNormal">Where, C<sub>1</sub> and C<sub>2</sub> 
                    describe the use of the blue band in correction of the red 
                    bandfor atmospheric aerosol scattering. The coefficients, C<sub>1</sub>, 
                    C<sub>2</sub>, and L are empirically determined as 6.0, 7.5, 
                    and 1.0, respectively for MODIS. This algorithm has improved 
                    sensitivity to high biomass regions and improved vegetation 
                    monitoring through a de-coupling of the canopy background 
                    signal and a reduction in atmospheric influences.</p>
                    <p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" height="19" >
					<b>video for Indices : </b>

                        </td>
  </tr>
  <tr>
    <td width="100%" height="19" >
					<div id="container" style="width: 480, height: 640">Loading the player ...</div> 
<script type="text/javascript"> 
jwplayer("container").setup({ flashplayer: "jwplayer/player.swf", file: "9_classification.flv", height: 480, width: 640 }); 
                    </script>

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