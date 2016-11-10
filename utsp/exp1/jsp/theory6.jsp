<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="File-List" href="theory6_files/filelist.xml">
<title>Fourier Tansform</title>
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
    <td><b><font size="6">Discrete 2D Fourier Tansform</font></b></td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal" align="justify">A transform, including the Fourier Transform (FT), is 
    essentially a mathematical mapping<span style="font-family: Liberation Serif"> 
    process. </span>A transform maps image data into a different mathematical 
    space via a transformation<span style="font-family: Liberation Serif"> 
    equation. </span>Most of the discrete transforms map the image data from the 
    spatial domain to the frequency domain, where all the pixels in the input 
    (spatial domain) contribute to each value in<span style="font-family: Liberation Serif"> 
    the output (frequency domain). </span>Rapidly changing brightness values 
    over short distances correspond to high frequency terms, slowly changing 
    brightness values correspond to low frequency terms.</p>
    <p class="MsoNormal"><b>Display of Fourier Transform</b></p>
    <p class="MsoNormal" align="justify">The Fourier transform consists of complex floating 
    point numbers, stored with a data type of complex.&nbsp;For convenience of 
    viewing, we shift the origin to the center of the image by applying the 
    properties of periodicity and translation with u<sub>0</sub> = M/2 and v<sub>0</sub> 
    = N/2.</p>
    <p class="MsoNormal"><b>Advantages of Centering Fourier Transform Display</b></p>
    <ul>
      <li>
    <p class="MsoNormal" align="justify">Easier to interpret the spectral information with the 
    origin in the center and frequency increasing radially outward from the 
    center</p>
      </li>
      <li>
    <p class="MsoNormal">Makes it easier to visualize the filtering in the 
    frequency domain</p>
      </li>
      <li>
    <p class="MsoNormal">Visually more appealing</p>
      </li>
    </ul>
    <p class="MsoNormal"><b><font size="4">video for Fourier Transform and its 
    Display settings :</font></b></p>
    </td>
    
  </tr>
  <tr>
    <td width="826" colspan="2" >
					<div id="container" style="width: 480, height: 640">
                      <font size="4">Loading the player ...</font></div> 
<script type="text/javascript"> 
jwplayer("container").setup({ flashplayer: "jwplayer/player.swf", file: "6_ft_display.flv", height: 480, width: 640 }); 
                    </script>

                        </td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal"><i><b><font size="4">Butterworth Low pass Filter</font></b></i></p>
    <p class="MsoNormal">The Butterworth low pass filter has a frequency 
    response<span style="font-family: Liberation Serif"> given by the function :</span></p>
    </td>
  </tr>
  <tr>
    <td><font size="4"><!--[if gte vml 1]><v:shapetype id="_x0000_t75"
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
</v:shapetype><v:shape id="_x0000_s1025" type="#_x0000_t75" style='width:152.25pt;
 height:66.75pt;mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory6_files/image001.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=203 height=89
src="theory6_files/image002.jpg" v:shapes="_x0000_s1025"><![endif]></font><p>&nbsp;</td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal" align="justify">Where, D(u,v) is the distance of any frequency component (u,v) 
    from the origin. D<sub>o</sub> is the cut-off frequency.</p>
    </td>
    
  </tr>
  <tr>
    <td>
    <p class="MsoNormal"><i><b><font size="4">2-D Gaussian Low Pass Filter</font></b></i></p>
    <p class="MsoNormal">The frequency response of the 2-D Gaussian Lowpass 
    Filter is given by :</p>
    </td>
  </tr>
  <tr>
    <td><font size="4"><!--[if gte vml 1]><v:shape
 id="_x0000_s1026" type="#_x0000_t75" style='width:146.25pt;height:21.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory6_files/image003.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=195 height=29
src="theory6_files/image004.jpg" v:shapes="_x0000_s1026"><![endif]></font></td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal" align="justify">Where, D(u,v) is the distance of any frequency component (u,v) 
    from the origin. D<sub>o</sub> is the cut-off frequency.</p>
    </td>
    
  </tr>
  <tr>
    <td>
    <p class="MsoNormal"><b><font size="4">Highpass Filters</font></b></p>
    <p class="MsoNormal" align="justify">Similar to Gaussian and 
    Butterworth low pass filters, there are Gaussian and Butterworth high pass 
    filters too. These filters can be expressed as :</p>
    <p class="MsoNormal"><b><i><font size="4">Gaussian high pass filter</font></i></b></p>
    </td>
    
  </tr>
  <tr>
    <td><font size="4"><!--[if gte vml 1]><v:shape
 id="_x0000_s1027" type="#_x0000_t75" style='width:154.5pt;height:26.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory6_files/image005.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=206 height=35
src="theory6_files/image006.jpg" v:shapes="_x0000_s1027"><![endif]></font></td>
  </tr>
  <tr>
    <td>
    <p class="MsoNormal"><b><i><font size="4">Butterworth high pass filter</font></i></b></p>
    </td>
  </tr>
  <tr>
    <td><font size="4"><!--[if gte vml 1]><v:shape
 id="_x0000_s1028" type="#_x0000_t75" style='width:159.75pt;height:72.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory6_files/image007.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=213 height=97
src="theory6_files/image008.jpg" v:shapes="_x0000_s1028"><![endif]></font><p>
    <b><font size="4">video for Low Pass and High Pass Filtering :
    </font></b></td>
  </tr>
  <tr>
    <td>
					<div id="container1" style="width: 480, height: 640">
                      <font size="4">Loading the player ...</font></div> 
<script type="text/javascript"> 
jwplayer("container1").setup({ flashplayer: "jwplayer/player.swf", file: "6_low_high.flv", height: 480, width: 640 }); 
                    </script>

                        </td>
  </tr>
  <tr>
    <td>
					&nbsp;</td>
  </tr>
  <tr>
    <td>
					<b><font size="4">video for Gaussian and Butterworth 
                    Filtering : </font></b>

                        </td>
  </tr>
  <tr>
    <td>
					<div id="container2" style="width: 480, height: 640">
                      <font size="4">Loading the player ...</font></div> 
<script type="text/javascript"> 
jwplayer("container2").setup({ flashplayer: "jwplayer/player.swf", file: "6_gauss_butter.flv", height: 480, width: 640 }); 
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