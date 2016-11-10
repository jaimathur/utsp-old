<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="File-List" href="theory9_files/filelist.xml">

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
    <td width="100%"><b><font size="6">K - Means Clustering</font></b></td>
  </tr>
  <tr>
    <td width="100%">&nbsp;<p align="justify"><b>Image Classification :</b></p>
    <p class="MsoNormal" align="justify">Assigning pixels in the image to 
    categories into classes of interest is known as image classification.</p>
    <p class="MsoNormal" align="justify">Examples: built-up areas, 
    water body, 
    green vegetation, bare soil, rocky areas, cloud, shadow, etc.</p>
    <p class="MsoNormal" align="justify">Classification is done 
    on the basis of features. Features are attributes of the data elements based 
    on which the elements are assigned to various classes. E.g., in satellite 
    remote sensing, the features are measurements made by sensors in different 
    wavelengths of the electromagnetic spectrum – visible/infrared / 
    microwave/texture features. etc. </p>
    <p><font size="4"><b>video for Classification :</b> </font> </td>
  </tr>
  <tr>
    <td width="100%" >
					<div id="container" style="width: 480, height: 640">
                      <font size="4">Loading the player ...</font></div> 
<script type="text/javascript"> 
jwplayer("container").setup({ flashplayer: "jwplayer/player.swf", file: "9_classification.flv", height: 480, width: 640 }); 
                    </script>

                        </td>
  </tr>
  <tr>
    <td width="100%">
    <p><b>K - Means Clustering :</b></p>

    <p align="justify">It is an iterative algorithm for 
    clustering. This is the most popular clustering algorithm. Number of Cluster 
    'K' is already known to user. Its steps are as follows:</p>
    <p align="justify"><b>Step 1 :</b> K cluster mean vectors are 
    initialized randomly.</p>
    <p align="justify"><b>Step 2 :</b> Each pixel is assigned to one of the cluster according to the 
    minimum feature distance from the cluster mean vectors.</p>
    <p align="justify"><b>Step 3 :</b> After each pixel is assigned to some cluster, new mean vectors 
    are computed for each cluster according to the assignment.</p>
    <p align="justify"><b>Step 4 :</b> New cluster mean vectors are checked from the previous cluster 
    mean vectors. If there is a difference greater than some threshold then this 
    process is repeated until cluster means are stabilized.</p>
    </td>
  </tr>
  <tr>
    <td width="100%"><font size="4"><!--[if gte vml 1]><v:shapetype id="_x0000_t75"
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
</v:shapetype><v:shape id="_x0000_s1041" type="#_x0000_t75" style='width:425.25pt;
 height:228pt;mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory9_files/image001.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=567 height=304
src="theory9_files/image002.jpg" v:shapes="_x0000_s1041"><![endif]></font><p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%">Here, data heap is the set of all pixels. ui is the initial 
    cluster mean vectors. Ci are clusters.</td>
  </tr>
  <tr>
    <td width="100%"><font size="4"><!--[if gte vml 1]><v:shape
 id="_x0000_s1042" type="#_x0000_t75" style='width:423pt;height:238.5pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory9_files/image003.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=564 height=318
src="theory9_files/image004.jpg" v:shapes="_x0000_s1042"><![endif]></font><p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%">Here, for convergence of algorithm, new cluster mean 
    vectors are compared with previous cluster mean vectors.</td>
  </tr>
  <tr>
    <td width="100%">Some important points to be noted : </td>
  </tr>
  <tr>
    <td width="100%">
    <p class="MsoNormal">Choice of K is important.</p>
    <p class="MsoNormal">For normal remotely sensed images, about 15-20 
    iterations are maximum required for stabilization of the cluster centers.</p>
    <p class="MsoNormal">Convergence can be based on average difference between 
    cluster centres or maximum difference between any pair of cluster centers.</td>
  </tr>
  <tr>
    <td width="100%">&nbsp;</td>
  </tr>
  <tr>
    <td width="100%"><b><font size="4">Video for K-means clustering algorithm :
    </font></b> </td>
  </tr>
  <tr>
     <td width="100%" >
					<div id="container1" style="width: 480, height: 640">
                      <font size="4">Loading the player ...</font></div> 
<script type="text/javascript"> 
jwplayer("container1").setup({ flashplayer: "jwplayer/player.swf", file: "9_kmean.flv", height: 480, width: 640 }); 
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