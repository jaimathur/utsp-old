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
    <p align="justify"><font size="6"><b>Image Smoothing</b></font></td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify">&nbsp;</td>
  </tr>
  <tr>
    <td width="100%">
					 <p class="MsoNormal" align="justify">In 
                     image processing literature, the weighting averaging 
                     operation is referred to as image smoothing. Smoothening is 
                     a process by which noise in the image can be reduced. 
                     Smoothening depends on the neighborhood pixels and if there 
                     is some unwanted peaks or valleys within an uniform region 
                     then it is supressed by the smoothening process.&nbsp;By 
                     smoothing, it is implied that local differences between 
                     pixels are reduced.<span style="font-family: Liberation Serif"> 
                     Drawback of smoothening is that the edge pixels also gets 
                     smoothened which is not desirable in some cases.&nbsp;
                     </span></p>
					 <p align="justify">
						For better understanding of image 
                        smoothing you must go through the recommended video 
                        below:</p>
						</td>
  </tr>
  <tr>
     <td width="100%">
     <p align="justify">&nbsp;</td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify"><font face="Times New Roman">There are several 
    ways through which one can obtain smoothened image. Some of the methods are 
    :</font></p>
    <p align="justify"><b><font face="Times New Roman" size="4">Mean (Simple 
    Averaging)</font></b></p>
    <p class="MsoNormal" align="justify">In simple averaging, the 
    output gray level is the average of the gray levels of all the pixels in the 
    neighborhood.</p>
    <p class="MsoNormal" align="justify">For example,</p>
    <p class="MsoNormal" align="justify">Simple averaging for a 
    3x3 neighborhood window:</p>
    <p class="MsoNormal" align="justify">A B C</p>
    <p class="MsoNormal" align="justify">D X E</p>
    <p class="MsoNormal" align="justify">F G H</p>
    <p class="MsoNormal" align="justify">the gray level at X will 
    be given as:</p>
    <p class="MsoNormal" align="justify">&nbsp;g(X) = (1/9)[f(A) + f(B) 
    + f(C) + f(D) + f(X) +f(E) + f(F) + f(G) + f(H)]</p>
    <p align="justify"><span style="font-family: Liberation Serif">
    &nbsp;where f(.) is gray level of neighbors</span></p>
    <p align="justify"><b><font face="Times New Roman" size="4">Video For Smoothing Using Averaging</font></b></p>
    </td>
  </tr>
  <tr>
    <td width="100%"><div id="container2" style="width: 480, height: 640">
      <p align="justify">Loading the player ...</div> 
<script type="text/javascript"> 
jwplayer("container2").setup({ flashplayer: "jwplayer/player.swf", file: "3_avg.flv", height: 480, width: 640 }); 
    </script>
</td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify">&nbsp;</td>
  </tr>
<tr>
    <td width="100%">
    <p align="justify"><b><font face="Times New Roman" size="4">Weighted 
    Averaging</font></b></p>
    <p class="MsoNormal" align="justify">In case different 
    weights are preferred for different neighbors, then we can write</td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify">&nbsp;<![if !vml]><img border=0 width=212 height=124
src="theory3_files/image002.jpg" v:shapes="_x0000_s1026"><![endif]></p>
    <p align="justify">&nbsp;</td>
  </tr>
  <tr>
    <td width="100%">
    <p class="MsoNormal" align="justify">For simple averaging 
    over a 3x3 neighborhood, wi = (1/9), i=1,2,…,9.&nbsp;We can alter, for example, 
    the weights for 4-neighbors and 8-neighbors. In such a case, wi is not a 
    constant for all values of i.</p>
    <p align="justify"><b><font face="Times New Roman" size="4">Video For 
    Weighted Averaging</font></b></td>
  </tr>
  <tr>
    <td width="100%"><div id="container3" style="width: 480, height: 640">
      <p align="justify">Loading the player ...</div> 
<script type="text/javascript"> 
jwplayer("container3").setup({ flashplayer: "jwplayer/player.swf", file: "3_weight.flv", height: 480, width: 640 }); 
    </script>
</td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify">&nbsp;</td>
  </tr>
<tr>
    <td width="100%">
    <p align="justify"><b><font face="Times New Roman" size="4">Smoothing 
    Using Lee Filter</font></b></p>
    <p class="MsoNormal" align="justify">Simple Lee filter</p>
    <p class="MsoNormal" align="justify">• gij = fmean + k.|(fij 
    – fmean)|</p>
    <p class="MsoNormal" align="justify">• k varies between 0 and 
    2</p>
    <p class="MsoNormal" align="justify">k = 0, gij = fmean, 
    which denotes simple averaging</p>
    <p class="MsoNormal" align="justify">k = 1, gij = fij, which 
    denotes no smoothing at all</p>
    <p class="MsoNormal" align="justify">k = 2, gij = fij + |(fij 
    – fmean)|, which denotes sharpening</p>
    <p align="justify"><i>
    <span style="font-family: Liberation Serif; font-weight: 700">
    For better understanding go through the video for Lee 
    Filtering.</span></i></p>
    <p align="justify"><b><font face="Times New Roman" size="4">Video For Using 
    Lee Filter</font></b></p>
    </td>
  </tr>
  <tr>
    <td width="100%"><div id="container4" style="width: 480, height: 640">
      <p align="justify">Loading the player ...</div> 
<script type="text/javascript"> 
jwplayer("container4").setup({ flashplayer: "jwplayer/player.swf", file: "3_lee.flv", height: 480, width: 640 }); 
    </script>
</td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify">&nbsp;</td>
  </tr>
<tr>
    <td width="100%">
    <p align="justify"><b><font face="Times New Roman" size="4">Median Filtering</font></b></p>
    <p class="MsoNormal" align="justify">Median filter is the 
    most commonly used non-linear filter for image smoothing.&nbsp;When the image is 
    corrupted by random salt-and-pepper noise, median operation is very 
    effective in removing the noise, without degrading the input image. It can 
    be expressed as :</p>
    <p class="MsoNormal" align="justify">gij = median {fi-k,j-l | 
    k,l=-w, …, o, …, w}</p>
    <p class="MsoNormal" align="justify">In median filtering, the 
    extreme values are pushed to one end of the sequence after sorting, hence 
    ignored when filtered.</p>
    <p class="MsoNormal" align="justify"><b><i><font size="4">Working of Median 
    Filter :</font></i></b></p>
    <p class="MsoNormal" align="justify">Consider the size of the 
    window around the pixel.&nbsp;Collect all the pixels in the window and sort them 
    in ascending / descending order.&nbsp;Select the gray level after sorting, 
    according to the rank criterion.</p>
    <p align="justify"><b><font face="Times New Roman" size="4">Video For Median 
    Filtering</font></b></p>
    </td>
  </tr>
  <tr>
    <td width="100%"><div id="container5" style="width: 480, height: 640">
      <p align="justify">Loading the player ...</div> 
<script type="text/javascript"> 
jwplayer("container5").setup({ flashplayer: "jwplayer/player.swf", file: "3_median.flv", height: 480, width: 640 }); 
    </script>
</td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify">&nbsp;</td>
  </tr>
<tr>
    <td width="100%">
    <p align="justify"><b><font face="Times New Roman" size="4">Mode Filtering</font></b></p>
    <p class="MsoNormal" align="justify">It is a non-linear 
    filter.&nbsp; Central pixel is assigned the gray level that occurs most 
    frequently in the neighborhood. It can be expressed as :</p>
    <p class="MsoNormal" align="justify">&nbsp;gij = mode{fi-k,j-l | 
    k,l=-w, …, o, …, w}</p>
    <p class="MsoNormal" align="justify">For example, fn = 11 12 
    14 15 <b><u>12</u></b> 16 11 15 15</p>
    <p class="MsoNormal" align="justify">Here, <b><u>12</u></b> 
    is replaced by 15, which occurs most frequently in the neighborhood.</p>
    <p align="justify"><b><font face="Times New Roman" size="4">Video For Mode 
    Filtering</font></b></p>
    </td>
  </tr>
  <tr>
    <td width="100%"><div id="container6" style="width: 480, height: 640">
      <p align="justify">Loading the player ...</div> 
<script type="text/javascript"> 
jwplayer("container6").setup({ flashplayer: "jwplayer/player.swf", file: "3_mode.flv", height: 480, width: 640 }); 
    </script>
</td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify">&nbsp;</td>
  </tr>
<tr>
    <td width="100%">
    <p align="justify"><b><font face="Times New Roman" size="4">Gaussian 
    Filtering</font></b></p>
    <p class="MsoNormal" align="justify">Gaussian filter uses the 
    gaussian function to assign weights to the neighborhoods. The weight matrix 
    is given as :</td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify">&nbsp;<![if !vml]><img border=0 width=238 height=74
src="theory3_files/image004.jpg" v:shapes="_x0000_s1027"><![endif]></td>
  </tr>
  <tr>
    <td width="100%">
    <p class="MsoNormal" align="justify">where r and c are row 
    and column of weight matrix respectively and</td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify">&nbsp;<![if !vml]><img border=0 width=224 height=150
src="theory3_files/image006.jpg" v:shapes="_x0000_s1028"><![endif]></td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify"><b><font face="Times New Roman" size="4">Video For 
    Gaussian Filtering</font></b></td>
  </tr>
  <tr>
    <td width="100%"><div id="container7" style="width: 480, height: 640">
      <p align="justify">Loading the player ...</div> 
<script type="text/javascript"> 
jwplayer("container7").setup({ flashplayer: "jwplayer/player.swf", file: "3_gaussian.flv", height: 480, width: 640 }); 
    </script>
</td>
  </tr>
  <tr>
    <td width="100%">
    <p align="justify">&nbsp;</td>
  </tr>
<tr>
    <td width="100%">
    <p align="justify"><b><font face="Times New Roman" size="4">Sigma Filtering</font></b></p>
    <p class="MsoNormal" align="justify">When the filtering 
    operation is required to adapt to the local intensity variations then the 
    filter coefficients should vary according to the position in the image. 
    Shift-variant filters can preserve the object boundaries better, while 
    smoothing the image. Sigma filter is one of the shift-variant filter.</p>
    <p class="MsoNormal" align="justify"><b><i><font size="4">Working of Sigma 
    Filter : </font></i></b></p>
    <p class="MsoNormal" align="justify">Consider neighborhood 
    size, and a constant value c (can be taken as 1 or 2).&nbsp;Find the mean and 
    standard deviation of the pixels within the neighborhood.&nbsp;Find the neighbors 
    of the central pixel whose gray levels are within c*(standard deviation) of 
    the central pixel’s gray level.&nbsp;Compute the average of the pixels meeting 
    the above criterion.&nbsp;Replace the central pixel’s value by the average.</p>
    <p class="MsoNormal" align="justify"><b><i>Note:&nbsp;This cannot 
    be replaced by a convolution since the filter response varies for each 
    position in the image.</i></b></p>
    <p align="justify"><b><font face="Times New Roman" size="4">Video For Sigma 
    Filtering</font></b></p>
    </td>
  </tr>
  <tr>
    <td width="100%"><div id="container8" style="width: 480, height: 640">
      <p align="justify">Loading the player ...</div> 
<script type="text/javascript"> 
jwplayer("container8").setup({ flashplayer: "jwplayer/player.swf", file: "3_sigma.flv", height: 480, width: 640 }); 
    </script>
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