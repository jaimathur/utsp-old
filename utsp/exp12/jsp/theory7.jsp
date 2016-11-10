<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="File-List" href="theory7_files/filelist.xml">
<title>Morphology</title>
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
    <td ><b><font face="Times New Roman" size="6">
    Mathematical Morphology</font></b></td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal" align="justify" style="margin-top: 15">
    <font face="Times New Roman">Mathematical morphology (MM) is the study of image processing methods based on the shape or form of objects. 
    Mathematical morphology provides the ability to probe images using likely shapes of objects expected in the image 
    and manipulate images using these probes.</font></p>
    </td>
    
  </tr>
  <tr>
    <td >
    <p class="MsoNormal"><font face="Times New Roman"><b>Structuring element (SE)</b></font></p>
    <p class="MsoNormal" align="justify"><font face="Times New Roman">
    These are the small set to probe the image under study. For each SE, origin 
    must be defined. Its&nbsp;Shape and size must be adapted to geometric properties for the objects.</font></p>
    </td>
    
  </tr>
  <tr>
    <td><font face="Times New Roman" size="4"><!--[if gte vml 1]><v:shapetype id="_x0000_t75"
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
</v:shapetype><v:shape id="_x0000_s1025" type="#_x0000_t75" style='width:303.75pt;
 height:81pt;mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory7_files/image001.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=405 height=108
src="theory7_files/image002.jpg" v:shapes="_x0000_s1025"><![endif]></font><p>&nbsp;</td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal"><font face="Times New Roman"><b>Idea of Structuring Element</b></font></p>
    <p class="MsoNormal" align="justify"><font face="Times New Roman">
    Probe at each pixel in the binary image: Check if SE is ”satisfied”. Output 
    pixel is set to 0 or 1 depending on used operation.</font></p>
    <p>&nbsp;</td>
    
  </tr>
  <tr>
    <td><font face="Times New Roman" size="4"><!--[if gte vml 1]><v:shape
 id="_x0000_s1026" type="#_x0000_t75" style='width:369pt;height:157.5pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory7_files/image003.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=492 height=210
src="theory7_files/image004.jpg" v:shapes="_x0000_s1026"><![endif]></font><p>&nbsp;</td>
  </tr>
  <tr>
    <td>
					<b>video for Morphology and Structuring Element Concepts :</b></td>
  </tr>
  <tr>
    <td>
					<div id="container" style="width: 480, height: 640">
                      <font face="Times New Roman" size="4">Loading the player ...</font></div> 
<script type="text/javascript"> 
jwplayer("container").setup({ flashplayer: "jwplayer/player.swf", file: "7_morphology.flv", height: 480, width: 640 }); 
                    </script>

                        </td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal"><font face="Times New Roman"><b>Erosion</b></font></p>
    <p class="MsoNormal" align="justify"><font face="Times New Roman">Erosion check the 
    condition : Does the structuring element fit the set?</font></p>
    <p class="MsoNormal" align="justify"><font face="Times New Roman">Erosion of a set A by structuring element B 
    is considered as : all z in A such that B is in A when origin of B=z. 
    Erosion shrink's the object. Erosion can be expressed as : </font></p>
    </td>
    
  </tr>
  <tr>
    <td><font face="Times New Roman" size="4"><!--[if gte vml 1]><v:shape
 id="_x0000_s1027" type="#_x0000_t75" style='width:185.25pt;height:26.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory7_files/image005.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=247 height=35
src="theory7_files/image006.jpg" v:shapes="_x0000_s1027"><![endif]></font></td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal"><font face="Times New Roman"><b>Dilation</b></font></p>
    <p class="MsoNormal" align="justify"><font face="Times New Roman">Dilation check 
    the condition : Does the structuring element hit the set?</font></p>
    <p class="MsoNormal" align="justify"><font face="Times New Roman">
    Dilation of a set A by structuring element B&nbsp; is considered as : all z such that B hits A when origin of B=z. 
    Dilation grows the object. Dilation can be expressed as : </font></p>
    </td>
    
  </tr>
  <tr>
    <td><font face="Times New Roman" size="4"><!--[if gte vml 1]><v:shape
 id="_x0000_s1028" type="#_x0000_t75" style='width:186pt;height:30.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory7_files/image007.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=248 height=41
src="theory7_files/image008.jpg" v:shapes="_x0000_s1028"><![endif]></font></td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal"><i><font face="Times New Roman"><b>Points to Remember</b></font></i></p>
    <p class="MsoNormal"><font face="Times New Roman"><b>Erosion</b></font></p>
    <p class="MsoNormal"><font face="Times New Roman">Removal of 
    structures of certain shape and size, given by SE.</font></p>
    <p class="MsoNormal"><font face="Times New Roman"><b>Dilation</b></font></p>
    <p class="MsoNormal"><font face="Times New Roman">Filling of holes 
    of certain shape and size, <span style="font-family: Liberation Serif">given by 
    SE.</span></font></p>
    <p><b><font face="Times New Roman" size="4">video for Erosion and Dilation 
    Concept :</font></b></td>
  </tr>
  <tr>
   <td>
					<div id="container1" style="width: 480, height: 640">
                      <font face="Times New Roman" size="4">Loading the player ...</font></div> 
<script type="text/javascript"> 
jwplayer("container1").setup({ flashplayer: "jwplayer/player.swf", file: "7_erosion_dilation.flv", height: 480, width: 640 }); 
                    </script>

                        </td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal"><font face="Times New Roman"><b>Opening</b></font></p>
    <p><font face="Times New Roman">
    <span style="font-family: Liberation Serif">Opening is defined as erosion 
    followed by dilation. It can be expressed as :</span></font></p>
    </td>
  </tr>
  <tr>
    <td><font face="Times New Roman"><!--[if gte vml 1]><v:shape
 id="_x0000_s1029" type="#_x0000_t75" style='width:175.5pt;height:22.5pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory7_files/image009.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=234 height=30
src="theory7_files/image010.jpg" v:shapes="_x0000_s1029"><![endif]></font></td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal"><font face="Times New Roman">Opening eliminates protrusions,&nbsp;breaks thin joints 
    and smoothens contour.</font></p>
    <p class="MsoNormal"><font face="Times New Roman"><b>Meaning of Opening</b></font></p>
    <p class="MsoNormal" align="justify"><font face="Times New Roman">Treat the structuring element as a rolling ball.&nbsp;Boundary of A&#8728;B = points in B that reach farthest into A when B is rolled inside A.</font></p>
    </td>
    
  </tr>
  <tr>
    <td><font face="Times New Roman" size="4"><!--[if gte vml 1]><v:shape
 id="_x0000_s1030" type="#_x0000_t75" style='width:417.75pt;height:151.5pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory7_files/image011.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=557 height=202
src="theory7_files/image012.jpg" v:shapes="_x0000_s1030"><![endif]></font><p>&nbsp;</td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal"><b><font face="Times New Roman">C</font></b><font face="Times New Roman"><b>losing</b></font></p>
    <p class="MsoNormal"><font face="Times New Roman">Closing is 
    defined as dilation followed by erosion, denoted by •</font></p>
    <p>&nbsp;</td>
  </tr>
  <tr>
    <td><font face="Times New Roman"><!--[if gte vml 1]><v:shape
 id="_x0000_s1032" type="#_x0000_t75" style='width:191.25pt;height:20.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory7_files/image013.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=255 height=27
src="theory7_files/image014.jpg" v:shapes="_x0000_s1032"><![endif]></font></td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal" align="justify"><font face="Times New Roman">Closing smoothens contour,&nbsp;fuses narrow breaks and long thin gulfs,&nbsp;eliminates small holes 
    and fills gaps in the contour.</font></p>
    <p class="MsoNormal" align="justify"><font face="Times New Roman"><b>Meaning of Closing</b></font></p>
    <p class="MsoNormal" align="justify"><font face="Times New Roman">See B as a ”rolling ball”.&nbsp;Boundary of A•B = points in B that reach farthest into A when B is rolled outside A.</font></p>
    </td>
    
  </tr>
  <tr>
    <td><font face="Times New Roman" size="4"><!--[if gte vml 1]><v:shape
 id="_x0000_s1033" type="#_x0000_t75" style='width:498.75pt;height:189.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory7_files/image015.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=665 height=253
src="theory7_files/image016.jpg" v:shapes="_x0000_s1033"><![endif]></font><p>
    <b><font face="Times New Roman" size="4">video for Opening and Closing 
    Concept :</font></b></td>
  </tr>
  <tr>
    <td>
					<div id="container2" style="width: 480, height: 640">
                      <font face="Times New Roman" size="4">Loading the player ...</font></div> 
<script type="text/javascript"> 
jwplayer("container2").setup({ flashplayer: "jwplayer/player.swf", file: "7_opening_closing.flv", height: 480, width: 640 }); 
                    </script>

                        </td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal">&nbsp;</p>
    <p class="MsoNormal"><font face="Times New Roman"><b>Hit-or-Miss Transformation &#8859;</b></font></p>
    <p class="MsoNormal" align="justify"><font face="Times New Roman">Hit or Miss 
    Transform is based on the condition : Does B1 fits the object while, simultaneously, B2 misses the object, i.e., fits the background?</font></p>
    <p>&nbsp;</td>
    
  </tr>
  <tr>
    <td><font face="Times New Roman"><!--[if gte vml 1]><v:shape
 id="_x0000_s1035" type="#_x0000_t75" style='width:498.75pt;height:132.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory7_files/image017.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=665 height=177
src="theory7_files/image018.jpg" v:shapes="_x0000_s1035"><![endif]></font><p>&nbsp;</td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal" align="justify"><font face="Times New Roman">Composite SE : 
    object part (B1 : shown with gray color) and background part (B2 shown with 
    white color in the above figure).</font></p>
    <p><font face="Times New Roman">The Hit or Miss Transform can be 
    expressed as :</font></td>
    
  </tr>
  <tr>
    <td><font face="Times New Roman" size="4"><!--[if gte vml 1]><v:shape
 id="_x0000_s1036" type="#_x0000_t75" style='width:202.5pt;height:27pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory7_files/image019.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=270 height=36
src="theory7_files/image020.jpg" v:shapes="_x0000_s1036"><![endif]></font><p>
    <b><font face="Times New Roman" size="4">video for Hit or Miss Transform :</font></b></td>
  </tr>
  <tr>
    <td>
					<div id="container3" style="width: 480, height: 640">
                      <font face="Times New Roman" size="4">Loading the player ...</font></div> 
<script type="text/javascript"> 
jwplayer("container3").setup({ flashplayer: "jwplayer/player.swf", file: "7_hmt.flv", height: 480, width: 640 }); 
                    </script>

                        </td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal">&nbsp;</p>
    <p class="MsoNormal"><font face="Times New Roman"><b>Boundary Extraction</b></font></p>
    <p class="MsoNormal" align="justify"><font face="Times New Roman">Morphological 
    Edge Detection is based on Dilation, Erosion and Image Subtraction.&nbsp;Morphological 
    edge detection algorithms are of three kinds : Dilation - Erosion, Dilation 
    - Original, Original - Erosion.</font></p>
    <p><i><b><font face="Times New Roman">Dilation - Erosion</font></b></i></td>
    
  </tr>
  <tr>
    <td><font face="Times New Roman"><!--[if gte vml 1]><v:shape
 id="_x0000_s1038" type="#_x0000_t75" style='width:139.5pt;height:30.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory7_files/image021.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=186 height=41
src="theory7_files/image022.jpg" v:shapes="_x0000_s1038"><![endif]></font></td>
  </tr>
  <tr>
    <td><i><b><font face="Times New Roman">
    Dilation - Original</font></b></i></td>
  </tr>
  <tr>
    <td><font face="Times New Roman"><!--[if gte vml 1]><v:shape
 id="_x0000_s1039" type="#_x0000_t75" style='width:103.5pt;height:27.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory7_files/image023.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=138 height=37
src="theory7_files/image024.jpg" v:shapes="_x0000_s1039"><![endif]></font></td>
  </tr>
  <tr>
    <td><i><b><font face="Times New Roman">
    Original - Erosion</font></b></i></td>
  </tr>
  <tr>
    <td><font face="Times New Roman"><!--[if gte vml 1]><v:shape
 id="_x0000_s1040" type="#_x0000_t75" style='width:115.5pt;height:31.5pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory7_files/image025.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=154 height=42
src="theory7_files/image026.jpg" v:shapes="_x0000_s1040"><![endif]></font></td>
  </tr>
  <tr>
    <td>
					<b><font face="Times New Roman" size="4">video for Boundary 
                    Extraction :</font></b></td>
  </tr>
  <tr>
    <td>
					<div id="container4" style="width: 480, height: 640">
                      <font face="Times New Roman" size="4">Loading the player ...</font></div> 
<script type="text/javascript"> 
jwplayer("container4").setup({ flashplayer: "jwplayer/player.swf", file: "7_boundary.flv", height: 480, width: 640 }); 
                    </script>

                        </td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal" align="justify"><font face="Times New Roman"><b>Top - Hat Transform</b></font></p>
    <p class="MsoNormal" align="justify"><font face="Times New Roman">Top-hat Transform (TT): An efficient segmentation tool for extracting bright (respectively dark) objects from uneven background.</font></p>
    <p align="justify"><font face="Times New Roman">Top-hat can be expressed as :</font><p align="justify">
    <font face="Times New Roman">Tophat = Original - Output of Opening</font></td>
    
  </tr>
  <tr>
    <td><font face="Times New Roman" size="4"><!--[if gte vml 1]><v:shape
 id="_x0000_s1041" type="#_x0000_t75" style='width:331.5pt;height:264.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory7_files/image027.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=442 height=353
src="theory7_files/image028.jpg" v:shapes="_x0000_s1041"><![endif]></font><p>&nbsp;</td>
  </tr>
  <tr>
    <td><font face="Times New Roman" size="4"><!--[if gte vml 1]><v:shape
 id="_x0000_s1042" type="#_x0000_t75" style='width:328.5pt;height:255pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory7_files/image029.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=438 height=340
src="theory7_files/image030.jpg" v:shapes="_x0000_s1042"><![endif]></font><p>
    <b><font face="Times New Roman" size="4">video for Top - Hat Transform :</font></b></td>
  </tr>
  <tr>
    <td>
					<div id="container5" style="width: 480, height: 640">
                      <font face="Times New Roman" size="4">Loading the player ...</font></div> 
<script type="text/javascript"> 
jwplayer("container5").setup({ flashplayer: "jwplayer/player.swf", file: "7_tophat.flv", height: 480, width: 640 }); 
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