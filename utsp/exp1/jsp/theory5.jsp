<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="File-List" href="theory5_files/filelist.xml">

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
    <td width="100%" colspan="2"><font size="6"><b>Edge Detection</b></font></td>
  </tr>
  <tr>
    <td width="100%" colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
					 <span style="font-family: Book Antiqua; font-weight: bold">
						<font size="3">What Is An Edge?</font></span><p class="MsoNormal" align="justify">
						<span lang="EN-US" style="font-size: 9.0pt; line-height: 115%; font-family: Arial,sans-serif; color: #707070"><br>
						</span>An edge is a set of connected pixels that lie on 
                        the boundary between two regions. The pixels on an edge 
                        are called edge points. Gray level / color / texture 
                        discontinuityacross an edge causes edge perception. 
                        Position &amp; orientation of edge are key properties</p>
						<p class="MsoNormal" align="justify">You can see various kind of edges 
                        due to various reasons, below:
						</td>
  </tr>
  <tr>
    <td width="100%" colspan="2" >
					&nbsp;</td>
  </tr>
  <tr>
    <td width="36%" valign="top" >
						<img border="0" src="article-page-main-ehow-images-a06-tk-dh-do-exterior-color-victorian-home_-800x800.jpg" width="183" height="136">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        </td>
    <td width="64%" valign="top" >
						<img border="0" src="water_shine__by_steepchen.jpg" width="189" height="136"></td>
  </tr>
  <tr>
    <td width="36%" >
					Edges due to color difference</td>
    <td width="64%" >
						<span style="font-size: 9pt; font-family: Arial,sans-serif; color: black">
						Edges due to intensity or illumination difference</span></td>
  </tr>
  <tr>
    <td width="36%" >
					&nbsp;</td>
    <td width="64%" >
					&nbsp;</td>
  </tr>
  <tr>
    <td width="36%" valign="top" >
						<img border="0" src="paper-texture4.jpg" width="185" height="136">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        </td>
    <td width="64%" valign="top" >
						<img border="0" src="6hexagonal-prism-basal-pinacoid86.jpg" width="189" height="136"></td>
  </tr>
  <tr>
    <td width="36%" >
						<span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
                    Edges due to texture difference</span></td>
    <td width="64%" >
						<span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
                    Edges due to surface orientation difference</span></td>
  </tr>
  <tr>
    <td width="100%" colspan="2" >
					&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" colspan="2" >
						<b>
						<font size="3">
						<span style="font-family: Arial; ">Types 
						of </span></font>
						<span style="font-family: Arial; ">
						<font size="3">Edges</font></span></b><p>
						<span style="font-family:&quot;Times New Roman&quot;;">
						Basically edges are of three types : Step edges, Ramp 
                    Edges and Pulse/Peak edges.</span></p>
                    <p>
                    <span style="font-family: Times New Roman; ">
                    Step Edge :
						Abrupt discontinuities such as the boundary between land 
                    and water ponds or tall objects and their shadows are 
                    instances of step edges. </span>
						</p>
                    <p>
						<span style="font-family:&quot;Times New Roman&quot;;">
						Ramp Edge : It indicates a more gradual transition from 
                    one feature to another. </span></p>
                    <p>
						<span style="font-family:&quot;Times New Roman&quot;;">
						Pulse/Peak Edge : These are like thin ribbon like 
                    features that are long but they also have a finite width. </span>
                    </p>
                    <p>
                    <span style="font-family: Times New Roman; ">
                    <i>for 
                    more details, see the recommended video for edges and its 
                    types</i></span><p>
                    <span style="font-family: Times New Roman; ">
                    Graphically these types of edges can be describes as : </span></td>
  </tr>
  <tr>
    <td width="100%" colspan="2" >
					&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" colspan="2" >
						<img border="0" src="ed.JPG" width="386" height="214"></td>
  </tr>
  <tr>
    <td width="100%" colspan="2" >
					&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" colspan="2" >
					The following figure shows the three kinds of edges as :

                        </td>
  </tr>
  <tr>
    <td width="100%" colspan="2" >
					&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" colspan="2" >
						<img border="0" src="ed5.JPG" width="385" height="285"></td>
  </tr>
  <tr>
    <td width="100%" colspan="2" >
					&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" colspan="2" >
						<span style="font-family: Arial; font-weight: bold">
						<font size="3">Locating an Edge</font></span><p align="justify">
						<span lang="EN-US">Edge Detection is Essential to mark the boundaries of objects. Area, shape, size, perimeter, etc. can be computed from clearly identified object boundaries. Intensity / color / texture / surface orientation gradient employed to detect edges. Gradient magnitude denotes the strength of edge. Gradient direction relates to direction of change of intensity / color. 
						Edge is a local feature, marked by sharp discontinuity in the image property on either side of it. </span>Most image processing methods to detect edges compute 
						the gradient at two mutually perpendicular directions, 
						and estimate the actual magnitude and orientation of the 
						edge.</td>
  </tr>
  <tr>
    <td width="100%" colspan="2" >
					&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" colspan="2" >
						<p class="MsoNormal" style="text-align:justify">
						<font size="3">
						<span style="font-family: Arial; font-weight: 700">
						Gradient Directions</span></font></p>
						<p align="justify">
						<span lang="en-us">T</span><span lang="EN-US">wo 
                        mutually perpendicular gradient detectors are required 
                        to detect edges in an image, since edges may occur in 
                        any orientation. Using two mutually perpendicular 
                        orientations, an edge in any direction can be resolved 
                        in terms of these two orthogonal components . </span>

                        </td>
  </tr>
  <tr>
    <td width="100%" colspan="2" >
						&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" colspan="2" >
					<b><font face="Times New Roman" size="4">Video For Edges and 
                    Its Types</font></b></td>
  </tr>
  <tr>
    <td width="100%" colspan="2" >
					<div id="container1" style="width: 480, height: 640">Loading the player ...</div> 
<script type="text/javascript"> 
jwplayer("container1").setup({ flashplayer: "jwplayer/player.swf", file: "5_edge.flv", height: 480, width: 640 }); 
                    </script>

                        </td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
    <p align="justify"><font face="Times New Roman">There are several 
    filters through which one can obtain gradient magnitude and direction. Some of the 
    methods are 
    :</font></p>
    <p align="justify"><b><font face="Times New Roman" size="4">Robert Filter</font></b></p>
    <p class="MsoNormal">It uses two 2X2 masks to calculate gradient and it 
    Operates on 2x2 size neighborhood. The two masks are :</td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><!--[if gte vml 1]><v:shapetype id="_x0000_t75"
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
</v:shapetype><v:shape id="_x0000_s1025" type="#_x0000_t75" style='width:66.75pt;
 height:54pt;mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t" stroked="t" strokeweight="1pt">
 <v:fill color2="black"/>
 <v:imagedata src="theory5_files/image001.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=93 height=76
src="theory5_files/image002.jpg" v:shapes="_x0000_s1025"><![endif]><span style="font-size: 12.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <!--[if gte vml 1]><v:shape
 id="_x0000_s1027" type="#_x0000_t75" style='width:69.75pt;height:54.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t" stroked="t" strokeweight="1pt">
 <v:fill color2="black"/>
 <v:imagedata src="theory5_files/image003.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=97 height=77
src="theory5_files/image004.jpg" v:shapes="_x0000_s1027"><![endif]></span></td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
    <p class="MsoNormal">Sample neighbor window :</td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><!--[if gte vml 1]><v:shape
 id="_x0000_s1028" type="#_x0000_t75" style='width:66.75pt;height:60.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t" stroked="t" strokeweight="1pt">
 <v:fill color2="black"/>
 <v:imagedata src="theory5_files/image005.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=93 height=85
src="theory5_files/image006.jpg" v:shapes="_x0000_s1028"><![endif]></td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
    <p class="MsoNormal">Gradient magnitude is calculated as:</p>
    </td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><!--[if gte vml 1]><v:shape
 id="_x0000_s1029" type="#_x0000_t75" style='width:75.75pt;height:36.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory5_files/image007.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=101 height=49
src="theory5_files/image008.jpg" v:shapes="_x0000_s1029"><![endif]></td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
    <p class="MsoNormal">where, r<sub>1</sub> = f(A) – f(D);</p>
    <p class="MsoNormal">r<sub>2</sub> = f(B) – f(C)</p>
    <p class="MsoNormal">gradient direction is calculated as :</p>
    <p class="MsoNormal">direction = arctan(r<sub>2</sub>/r<sub>1</sub>)</p>
    </td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><b><font face="Times New Roman" size="4">
    Video For Roberts Filter</font></b></td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><div id="container2" style="width: 480, height: 640">Loading the player ...</div> 
<script type="text/javascript"> 
jwplayer("container2").setup({ flashplayer: "jwplayer/player.swf", file: "2_linear.flv", height: 480, width: 640 }); 
    </script>
</td>
  </tr>
  <tr>
    <td width="100%" colspan="2">&nbsp;</td>
  </tr>
<tr>
    <td width="100%" colspan="2">
    <p align="justify"><b><font face="Times New Roman" size="4">Prewitt Filter</font></b></p>
    <p class="MsoNormal">It uses two 3x3 masks, which are as follows :
    </td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
    <span style="font-size: 12.0pt; font-family: Times New Roman">&nbsp;<!--[if gte vml 1]><v:shape
 id="_x0000_s1031" type="#_x0000_t75" style='width:75.75pt;height:80.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t" stroked="t" strokeweight="1pt">
 <v:fill color2="black"/>
 <v:imagedata src="theory5_files/image009.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=105 height=111
src="theory5_files/image010.jpg" v:shapes="_x0000_s1031"><![endif]>&nbsp;&nbsp;&nbsp;&nbsp;
    </span><!--[if gte vml 1]><v:shape
 id="_x0000_s1032" type="#_x0000_t75" style='width:75.75pt;height:80.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t" stroked="t" strokeweight="1pt">
 <v:fill color2="black"/>
 <v:imagedata src="theory5_files/image011.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=105 height=111
src="theory5_files/image012.jpg" v:shapes="_x0000_s1032"><![endif]></td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
    <p class="MsoNormal">Gradient magnitude is calculated as : </p>
    </td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><!--[if gte vml 1]><v:shape
 id="_x0000_s1033" type="#_x0000_t75" style='width:114.75pt;height:38.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory5_files/image013.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=153 height=51
src="theory5_files/image014.jpg" v:shapes="_x0000_s1033"><![endif]></td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
    <p class="MsoNormal">and Gradient direction is calculated as :</p>
    <p class="MsoNormal">&#952; = arctan( p<sub>1</sub>, p<sub>2</sub> ) clockwise 
    with respect to column axis.</p>
    <p class="MsoNormal">Where,&nbsp; p<sub>1</sub>, p<sub>2</sub> are gradient 
    outputs from the masks.</p>
    </td>
  </tr>
  <tr>
    <td width="100%" colspan="2">&nbsp;</td>
  </tr>
<tr>
    <td width="100%" colspan="2">
    <p align="justify"><b><font face="Times New Roman" size="4">Sobel Filter</font></b></p>
    <p class="MsoNormal">It is similar to prewitt operator except that it gives 
    more weightage to four horizontal and veritcal neighbors. The masks in sobel 
    operator are : </p>
    <p align="justify">&nbsp;</p>
    </td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><!--[if gte vml 1]><v:shape
 id="_x0000_s1034" type="#_x0000_t75" style='width:76.5pt;height:81pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t" stroked="t" strokeweight="1pt">
 <v:fill color2="black"/>
 <v:imagedata src="theory5_files/image015.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=106 height=112
src="theory5_files/image016.jpg" v:shapes="_x0000_s1034"><![endif]>&nbsp;&nbsp;&nbsp; <!--[if gte vml 1]><v:shape
 id="_x0000_s1036" type="#_x0000_t75" style='width:81pt;height:80.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t" stroked="t" strokeweight="1pt">
 <v:fill color2="black"/>
 <v:imagedata src="theory5_files/image017.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=112 height=111
src="theory5_files/image018.jpg" v:shapes="_x0000_s1036"><![endif]><p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
    <p class="MsoNormal">Gradient magnitude is calculated as : </p>
    </td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><!--[if gte vml 1]><v:shape
 id="_x0000_s1037" type="#_x0000_t75" style='width:126.75pt;height:36.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory5_files/image019.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=169 height=49
src="theory5_files/image020.jpg" v:shapes="_x0000_s1037"><![endif]><p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
    <p class="MsoNormal">and Gradient direction is calculated as :</p>
    <p class="MsoNormal">&#952; = arctan( s<sub>1</sub>, s<sub>2</sub> )</p>
    <p><span style="font-size: 12.0pt; font-family: Liberation Serif">Where,&nbsp; s</span><sub><span style="font-size: 12.0pt; font-family: Liberation Serif">1</span></sub><span style="font-size: 12.0pt; font-family: Liberation Serif">, 
    s</span><sub><span style="font-size: 12.0pt; font-family: Liberation Serif">2</span></sub><span style="font-size: 12.0pt; font-family: Liberation Serif"> 
    are gradient outputs from the masks.</span></p>
    </td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><b><font face="Times New Roman" size="4">
    Video For Sobel Filter</font></b></td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><div id="container4" style="width: 480, height: 640">Loading the player ...</div> 
<script type="text/javascript"> 
jwplayer("container4").setup({ flashplayer: "jwplayer/player.swf", file: "2_histogram.flv", height: 480, width: 640 }); 
    </script>
</td>
  </tr>
  <tr>
    <td width="100%" colspan="2">&nbsp;</td>
  </tr>
<tr>
    <td width="100%" colspan="2">
    <p align="justify"><b><font face="Times New Roman" size="4">Logarithmic Of 
    Gaussian (LoG) Filter</font></b></p>
    <p class="MsoNormal">The Laplacian operator is based on the Laplace equation given by</p>
    </td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><!--[if gte vml 1]><v:shape
 id="_x0000_s1038" type="#_x0000_t75" style='width:127.5pt;height:51pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory5_files/image021.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=170 height=68
src="theory5_files/image022.jpg" v:shapes="_x0000_s1038"><![endif]></td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
    <p class="MsoNormal" align="justify">Laplacian operator is discretized version of the above equation and is based on second derivatives along x and y directions.&nbsp;The discrete version of the second derivative operator are : [1 -2 1] and [1 -2 1]<sup>T</sup> 
    in the horizontal and vertical directions. Superimposing the two,<span style="font-size: 12.0pt; font-family: Liberation Serif"> we get the 
    discrete Laplace operator as</span></p>
    </td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><!--[if gte vml 1]><v:shape
 id="_x0000_s1039" type="#_x0000_t75" style='width:97.5pt;height:1in;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t" stroked="t" strokeweight="1pt">
 <v:fill color2="black"/>
 <v:imagedata src="theory5_files/image023.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=134 height=100
src="theory5_files/image024.jpg" v:shapes="_x0000_s1039"><![endif]></td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
    <p class="MsoNormal" align="justify">Laplacian operator cannot give the information 
    regarding gradient directions. But it is faster than any other gradient 
    operators as it involves only one filter mask. Laplacian operator amilifies 
    the noise pixels to a great extent. So, it is recommended to use any 
    smoothing operator before using laplacian operator. </p>
    <p class="MsoNormal">Thus, the best smoothing operator, i.e., gaussian 
    filter is used for smoothing.</p>
    <p class="MsoNormal">The complete operation can be expressed as : </p>
    </td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><!--[if gte vml 1]><v:shape
 id="_x0000_s1040" type="#_x0000_t75" style='width:287.25pt;height:36.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory5_files/image025.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=383 height=49
src="theory5_files/image026.jpg" v:shapes="_x0000_s1040"><![endif]></td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
    <p class="MsoNormal">Thus, it is named as Laplacian of Gaussian (LoG).</td>
  </tr>
  <tr>
    <td width="100%" colspan="2">&nbsp;</td>
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