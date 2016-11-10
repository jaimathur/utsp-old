<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Viewing Satellite Images in different Band Combinations</title>
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
    <td width="100%">
    <p align="justify"><b><font size="6">Contrast Enhancement</font></b></td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify">&nbsp;</td>
  </tr>
  <tr>
    <td width="100%">
					 <p align="justify">
						Contrast is the difference 
						in the intensity of the object of interest compared to 
						the background (rest of the image). The perceptual 
						contrast does not change linearly with the difference in 
						the intensity. The perceptual contrast is a function of 
						the logarithm of the difference in the object and 
						background intensities. This means that in the darker regions, small changes in 
						intensity can be noticed, but in brighter regions, the 
						difference has to be much more. Contrast in the input 
						images is often poor due to inadequate range of 
						reflectance from ground targets, campus ageing sensors, 
						etc. so that the full range of display medium is not 
						utilized. </p>
					 <p align="justify">
						For better understanding of contrast 
                        enhancement you should watch all the recommended videos 
                        :</p>
					 <p align="justify">
						<b>
						<font size="4">Video For Contrast Of An Image</font></b></p>
						</td>
  </tr>
  <tr>
    <td width="100%" >
					<div id="container1" style="width: 480, height: 640">
                      <p align="justify">Loading the player ...</div> 
<script type="text/javascript"> 
jwplayer("container1").setup({ flashplayer: "jwplayer/player.swf", file: "2_contrast.flv", height: 480, width: 640 }); 
                    </script>

                        </td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify">&nbsp;</td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify"><font face="Times New Roman">There are several 
    ways through which one can obtain contrast enhanced image. Some of them are 
    :</font></p>
    <p align="justify"><b><font face="Times New Roman" size="4">Linear Contrast 
    Enhancement</font></b></p>
    <p class="MsoNormal" align="justify">Suppose the display 
    range of the monitor is O<sub>min</sub> to O<sub>max</sub>, which means the 
    monitor can display (O<sub>max</sub> O<sub>min</sub> + 1) levels. Let the 
    input range be I<sub>min</sub> to I<sub>max</sub>.</p>
    <p class="MsoNormal" align="justify">When the input image has 
    poor contrast, then the range of gray levels in the image is much less than 
    the display range of the monitor:</p>
    <p class="MsoNormal" align="justify">&nbsp;(O<sub>max</sub> – O<sub>min</sub>) 
    &gt;&gt; (I<sub>max</sub> – I<sub>min</sub>)</p>
    <p class="MsoNormal" align="justify">If I<sub>max</sub> is in 
    the left half of the gray scale, then the image appears dark.&nbsp;If I<sub>min</sub> 
    appears in the right half of the gray scale, then the image appears light or 
    faded out.</p>
    <p class="MsoNormal" align="justify">Low contrast images can 
    be linearly enhanced using simple contrast stretch operations. Then the 
    linear contrast stretch operation is defined by</p>
    <p class="MsoNormal" align="justify">&nbsp;y=((O<sub>max</sub> &#8722; O<sub>min</sub>)/(I<sub> 
    max</sub> &#8722; I <sub>min</sub>))*( x &#8722; I<sub> min</sub> )</p>
    <p class="MsoNormal" align="justify">&nbsp;x is the input level 
    and y is the output level.</p>
    <p align="justify"><b><font face="Times New Roman" size="4">Video For Linear 
    Contrast Enhancement</font></b></p>
    </td>
  </tr>
  <tr>
    <td width="100%"><div id="container2" style="width: 480, height: 640">
      <p align="justify">Loading the player ...</div> 
<script type="text/javascript"> 
jwplayer("container2").setup({ flashplayer: "jwplayer/player.swf", file: "2_linear.flv", height: 480, width: 640 }); 
    </script>
</td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify">&nbsp;</td>
  </tr>
<tr>
    <td width="100%">
    <p align="justify"><b><font face="Times New Roman" size="4">Standard Deviation 
    Based Contrast 
    Enhancement</font></b></p>
    <p class="MsoNormal" align="justify">Most software packages 
    perform default contrast enhancement prior to display of an image. In such 
    cases, automatic computation of I<sub>max </sub>and I<sub>min</sub> are 
    computed as</p>
    <p class="MsoNormal" align="justify">&nbsp;I<sub>min </sub>= µ – 
    k.&#963;</p>
    <p class="MsoNormal" align="justify">&nbsp;I<sub>max</sub> = µ + 
    k.&#963;</p>
    <p class="MsoNormal" align="justify">k is an integer, often 
    equal to 1 or 2, µ is mean and &#963; is the standard deviation.</p>
    <p class="MsoNormal" align="justify">This is also referred to 
    as Standard Deviation Stretch.</p>
    <p align="justify" style="margin-bottom: 7">
    <span style="font-family: Liberation Serif">Human visual system is not 
    linear; so are films and computer monitors When we wish to examine the 
    details in the dark portion of the image at the expense of the bright 
    portion, then linear contrast stretch is not very useful.</span></p>
    </td>
  </tr>
<tr>
    <td width="100%">
    <p align="justify"><b><font face="Times New Roman" size="4">Histogram 
    Equalization Based Contrast Enhancement</font></b></p>
    <p class="MsoNormal" align="justify">When the image contains 
    very few similar valued gray levels, then the ability to interpret it is 
    hampered. It is desirable that the dynamic range of the display device is 
    better utilized.&nbsp;One way to achieve this is by transforming the image such 
    that all gray levels have equal likelihood of occurrence.</p>
    <p class="MsoNormal" align="justify"><b><i><font size="4">Principal of 
    Histogram Equalization:</font></i></b></p>
    <p class="MsoNormal" align="justify">Given an imperfect 
    histogram, and an ideal histogram that has equal population of all gray 
    levels, map the input histogram to approximate the “equalized” histogram.<font size="4">&nbsp;</font></p>
    <p class="MsoNormal" align="justify"><b><i><font size="4">How to equalize?</font></i></b></p>
    <p class="MsoNormal" align="justify">Essentially, the 
    enhanced image which has an equalized histogram has (ideally) equal number 
    of pixels at each gray level. In practice, we can only achieve an 
    approximation of it.&nbsp;For an equalized histogram, the cumulative histogram is 
    known, given the size of the image and the number of gray levels. For a gray 
    level, corresponding to its cumulative frequency, find the nearest gray 
    level that matches the ideal cumulative frequency.&nbsp;Therefore image 
    enhancement by histogram equalization is achieved by the mapping of the 
    actual cumulative histogram of the image and the desired cumulative 
    histogram.<font size="4">&nbsp;</font></p>
    <p class="MsoNormal" align="justify"><b><i><font size="4">Interpretation of 
    Histogram Equalization</font></i></b></p>
    <p class="MsoNormal" align="justify"><font size="4">• </font>Number of 
    distinct non-zero gray levels in the output reduced.</p>
    <p class="MsoNormal" align="justify">• This happens when the 
    input histogram has long tails.</p>
    <p class="MsoNormal" align="justify">• Histogram equalization 
    optimizes the utilization of the available display range.</p>
    <p class="MsoNormal" align="justify">• Merges gray levels 
    having very few pixels.</p>
    <p class="MsoNormal" align="justify">• Separates those levels 
    that are heavily populated.</p>
    <p align="justify"><b><font face="Times New Roman" size="4">Video For 
    Histogram Equalization Based Contrast Enhancement</font></b></p>
    </td>
  </tr>
  <tr>
    <td width="100%"><div id="container4" style="width: 480, height: 640">
      <p align="justify">Loading the player ...</div> 
<script type="text/javascript"> 
jwplayer("container4").setup({ flashplayer: "jwplayer/player.swf", file: "2_histogram.flv", height: 480, width: 640 }); 
    </script>
</td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify">&nbsp;</td>
  </tr>
<tr>
    <td width="100%">
    <p align="justify"><b><font face="Times New Roman" size="4">Logarithmic 
    Contrast Enhancement</font></b></p>
    <p align="justify"><font face="Times New Roman">Equation for 
    Logarithmic contrast enhancement can be expressed as :</font></p>
    <p class="MsoNormal" align="justify">y = k.log(1+x) + c</p>
    <p class="MsoNormal" align="justify">Nature of log curve – 
    rapid rise initially, and levels off later. Greater difference in values of 
    log function for smaller gray levels, smaller difference for larger gray 
    levels.</p>
    <p class="MsoNormal" align="justify">Nature of logarithmic 
    function can be seen through the graph below :
    </td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify"><![if !vml]><img border=0 width=480 height=304
src="theory2_files/image002.jpg" v:shapes="_x0000_s1026"><![endif]></td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify">&nbsp;</td>
  </tr>
<tr>
    <td width="100%">
    <p align="justify"><b><font face="Times New Roman" size="4">Exponential 
    Contrast Enhancement</font></b></p>
    <p class="MsoNormal" align="justify">Exponential stretch is 
    the opposite of logarithmic stretch, and enhances the details in the 
    brighter portion of the gray scale</p>
    <p class="MsoNormal" align="justify">&nbsp;y = k.x<sup>r</sup> + c</p>
    <p class="MsoNormal" align="justify">&nbsp;The exponential curve 
    rises much faster for higher values of the argument of exp(.).</p>
    </td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify">&nbsp;</td>
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