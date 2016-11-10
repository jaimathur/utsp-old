<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="File-List" href="theory10_files/filelist.xml">

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
    <td width="100%"><font size="6"><b>Color Transform</b></font></td>
  </tr>
  <tr>
    <td width="100%"><p class="MsoNormal" style="margin-top: 7" align="justify"><b>Motivation for Color 
    Transforms</b></p>
    <p class="MsoNormal" align="justify">In the multiband (&gt;3) datasets that are provided by remote sensors, we can choose any three bands to generate color composites. By applying suitable transformations, we can enhance these images based on principles of color perception.</p>
    </td>
  </tr>
  <tr>
    <td width="100%"><!--[if gte vml 1]><v:shapetype id="_x0000_t75"
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
</v:shapetype><v:shape id="_x0000_s1043" type="#_x0000_t75" style='width:454.5pt;
 height:256.5pt;mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory10_files/image001.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=606 height=342
src="theory10_files/image002.jpg" v:shapes="_x0000_s1043"><![endif]><p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" >
					<p class="MsoNormal"><b>Color</b></p>
                    <p class="MsoNormal" align="justify">Color is determined by the wavelength 
                    bands of the electromagnetic spectrum. Color is described (perceived) in 
                    terms of:</p>
                    <p class="MsoNormal" align="justify">HUE: dominant wavelength in color.</p>
                    <p class="MsoNormal" align="justify">SATURATION: purity of color (depends on the amount of white light 
                    mixed with the color).</p>
                    <p class="MsoNormal" align="justify">INTENSITY: actual amount or strength 
                    of light.</p>
                    <p class="MsoNormal" align="justify">All of them contribute to our 
                    perception of color.</p>
                    <p class="MsoNormal" align="justify"><b>Our Visual System</b></p>
                    <p class="MsoNormal" align="justify">Our eyes have 2 types of sensors:</p>
                    <p class="MsoNormal" align="justify">CONES: Sensitive to colored light, but not 
                    very effective in perceiving color in dim light 
                    conditions.</p>
                    <p class="MsoNormal" align="justify">RODS: Strongly sensitive to white 
                    (panchromatic) light. Can sense differences in light even in 
                    dim conditions. (Our eyes can adjust to 
                    lighting conditions and see outlines of objects 
                    even in darkness).</p>
                    <p class="MsoNormal" align="justify"><b>Color Models</b></p>
                    <p class="MsoNormal" align="justify">They provide a standard way of 
                    specifying a particular color using a 3D coordinate 
                    system.</p>
                    <p class="MsoNormal" align="justify"><i>Hardware oriented:</i></p>
                    <p class="MsoNormal" align="justify">RGB (display monitors)</p>
                    <p class="MsoNormal" align="justify">CMYB (printers)</p>
                    <p class="MsoNormal" align="justify"><i>Image processing oriented:</i></p>
                    <p class="MsoNormal" align="justify">HSI</p>
                    <p class="MsoNormal" align="justify"><b>R-G-B Model</b></p>
                    <p class="MsoNormal" align="justify">It is an additive color model. An image consists of 3 components, one for each primary color, Red, Green and Blue. 
                    It is the appropriate for image displays.</p>
                    </td>
  </tr>
  <tr>
    <td width="100%" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1045" type="#_x0000_t75" style='width:295.5pt;height:217.5pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory10_files/image003.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=394 height=290
src="theory10_files/image004.jpg" v:shapes="_x0000_s1045"><![endif]><p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" >
					<p class="MsoNormal"><b>HSI Model</b></p>
                    <p align="justify">HSI (Hue, Saturation and Intensity) – 
                    defines a type of color space. It is similar to the modern 
                    RGB and CMYK models. The HSI color space has three 
                    components: hue, saturation and intensity. ‘Intensity’ is 
                    sometimes substituted with ‘brightness’ and then it is known 
                    as HSB.</p>
                    <h2 align="justify"><font size="3">Hue</font></h2>
                    <p align="justify">In HSI, hue represents color. In this 
                    model, hue is an angle from 0 degrees to 360 degrees.</p>
                    <h2 align="justify"><font size="3">Saturation</font></h2>
                    <p align="justify">Saturation indicates the range of grey in 
                    the color space. It ranges from 0 to 100%. Sometimes the 
                    value is calculated from 0 to 1. When the value is ’0,’ the 
                    color is grey and when the value is ’1,’ the color is a 
                    primary color. A faded color is due to a lower saturation 
                    level, which means the color contains more grey.</p>
                    <h2 align="justify"><font size="3">Intensity</font></h2>
                    <p align="justify">Intensity is the brightness of the color 
                    and varies with color saturation. It ranges from 0 to 100%. 
                    When the value is ’0&#8242; the color space will be totally black. 
                    With the increase in the value, the color space brightness 
                    up and shows various colors.</td>
  </tr>
  <tr>
    <td width="100%" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1046" type="#_x0000_t75" style='width:341.25pt;height:249pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory10_files/image005.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=455 height=332
src="theory10_files/image006.jpg" v:shapes="_x0000_s1046"><![endif]><p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" >
					<p class="MsoNormal" style="margin-bottom: 7"><b>RGB-HSI Conversion</b></p>
                    </td>
  </tr>
  <tr>
    <td width="100%" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1047" type="#_x0000_t75" style='width:114pt;height:51pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory10_files/image007.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=152 height=68
src="theory10_files/image008.jpg" v:shapes="_x0000_s1047"><![endif]></td>
  </tr>
  <tr>
    <td width="100%" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1048" type="#_x0000_t75" style='width:300.75pt;height:103.5pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory10_files/image009.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=401 height=138
src="theory10_files/image010.jpg" v:shapes="_x0000_s1048"><![endif]></td>
  </tr>
  <tr>
    <td width="100%" >
					<p class="MsoNormal"><b>HSI to RGB Conversion</b></p>
                    </td>
  </tr>
  <tr>
    <td width="100%" >
					<p class="MsoNormal" style="margin-top: 7" align="justify">This conversion depends on whether the color is in the Red-Green zone or 
                    Green-Blue zone or Blue-Red zone. In each case the hue varies from 0 to 
                    120, 121 to 240, 241 to 360 degrees respectively.</p>
                    <p class="MsoNormal" align="justify"><b>RG Sector</b></p>
                    <p class="MsoNormal" align="justify">Hue in the range 0<sup>o</sup> – 120<sup>o</sup></p>
                    </td>
  </tr>
  <tr>
    <td width="100%" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1050" type="#_x0000_t75" style='width:222pt;height:57pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory10_files/image011.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=296 height=76
src="theory10_files/image012.jpg" v:shapes="_x0000_s1050"><![endif]></td>
  </tr>
  <tr>
    <td width="100%" >
					<p class="MsoNormal"><b>GB Sector</b></p>
                    <p class="MsoNormal">Hue in the range 120<sup>o</sup> – 240<sup>o</sup></p>
                    </td>
  </tr>
  <tr>
    <td width="100%" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1051" type="#_x0000_t75" style='width:219pt;height:86.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory10_files/image013.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=292 height=115
src="theory10_files/image014.jpg" v:shapes="_x0000_s1051"><![endif]></td>
  </tr>
  <tr>
    <td width="100%" >
					<p class="MsoNormal"><b>BR Sector</b></p>
                    <p class="MsoNormal">Hue in the range 240<sup>o</sup> – 360<sup>o</sup></p>
                    </td>
  </tr>
  <tr>
    <td width="100%" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1053" type="#_x0000_t75" style='width:219pt;height:86.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory10_files/image015.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=292 height=115
src="theory10_files/image016.jpg" v:shapes="_x0000_s1053"><![endif]></td>
  </tr>
  <tr>
    <td width="100%" >
					<p class="MsoNormal" align="justify"><b>Application of HSI System</b></p>
                    <p class="MsoNormal" align="justify">Direct access to color of an object.</p>
                    <p class="MsoNormal" align="justify">Manipulation of color easier.</p>
                    <p class="MsoNormal" align="justify">While processing documents, color 
                    based separation into different files can 
                    simplify processing / recognition.</p>
                    <p class="MsoNormal" align="justify">Data of different sensors can be 
                    fused using the RGB-to-HSI-RGB transformation and thus image 
                    can be enhanced. For example see the image below.</p>
                    </td>
  </tr>
  <tr>
    <td width="100%" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1054" type="#_x0000_t75" style='width:471pt;height:225pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory10_files/image017.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=628 height=300
src="theory10_files/image018.jpg" v:shapes="_x0000_s1054"><![endif]><p>&nbsp;</td>
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