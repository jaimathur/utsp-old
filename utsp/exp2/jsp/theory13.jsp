<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="File-List" href="theory13_files/filelist.xml">

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
    
    
    
    <table id="t1" border="0" cellspacing="0" width="100%" height="2815">
  <tr>
    <td height="36" valign="top"><font size="6"><b>Accuracy Assessment</b></font></td>
  </tr>
  <tr>
    <td height="1" valign="top">
    <p class="MsoNormal" style="margin-top: 7" align="justify">Accuracy Assessment 
    is estimated using ground truth i.e., set of points whose class is known. These points are known as test points. Test points 
    should not be used during the classifier training. Test points should be in sufficient number for the accuracy assessment to be significant.</p>
    <p class="MsoNormal" align="justify"><b>Choice of Test Points</b></p>
    <p class="MsoNormal" align="justify">Test points should not be taken in the immediate 
    neighborhood of training data points. High spatial dependence would bias the assessment in such a case. Based on the accuracy of classification of the test data points, various quantitative estimates are defined. The degree of agreement between the classifier output and the ground truth is considered.</p>
    <p class="MsoNormal"><b>Confusion Matrix</b></p>
    <p class="MsoNormal" align="justify">Error or confusion matrix is often deployed to derive measures of accuracy. 
    It is used to derive the overall accuracy as well as user’s accuracy and producer’s accuracy.</p>
    </td>
  </tr>
  <tr>
    <td height="13" valign="top"><!--[if gte vml 1]><v:shapetype id="_x0000_t75"
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
</v:shapetype><v:shape id="_x0000_s1083" type="#_x0000_t75" style='width:453pt;
 height:257.25pt;mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory13_files/image001.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=604 height=343
src="theory13_files/image002.jpg" v:shapes="_x0000_s1083"><![endif]></td>
  </tr>
  <tr>
    <td height="454" valign="top">
    <p class="MsoNormal" style="margin-top: 7"><b>Measures of Accuracy from Confusion Matrix</b></p>
    <p class="MsoNormal" align="justify">Overall accuracy, user's accuracy and 
    producer's accuracy can be computed using confusion matrix as:</p>
    <p class="MsoNormal" align="justify"><b>Overall Accuracy</b></p>
    <p class="MsoNormal" align="justify">It is calculated as number of test samples correctly classified / Total 
    number of test samples. i.e., Sum of diagonal elements / Sum of rows, in 
    confusion matrix.</p>
    <p class="MsoNormal" align="justify"><b>Producer’s Accuracy (Omission errors)</b></p>
    <p class="MsoNormal" align="justify">It is calculated as no. of samples of a class correctly classified / No. of 
    samples of the class.</p>
    <p class="MsoNormal" align="justify"><b>User’s Accuracy (Commission errors)</b></p>
    <p class="MsoNormal" align="justify">It is calculated as no. of samples that actually belong to a class / No. of 
    samples assigned to that class.</p>
    <p class="MsoNormal" align="justify"><b>Accuracy computation for the above 
    example</b></p>
    <p class="MsoNormal" align="justify"><b>Overall accuracy </b></p>
    <p class="MsoNormal" align="justify">Correctly classified samples = 68 + 112 + 89 + 56 = 325</p>
    <p class="MsoNormal">Total number of samples = 78+ 149 + 101 + 63 = 391</p>
    <p class="MsoNormal">Overall accuracy = 325 / 391 ~ 83%</p>
    <p class="MsoNormal"><b>Producer’s Accuracy</b></p>
    <p class="MsoNormal"><i>Forest:</i> </p>
    <p class="MsoNormal">Total reference samples = 83</p>
    <p class="MsoNormal">Correctly classified samples = 68</p>
    <p class="MsoNormal"><i>Accuracy</i> = 68/83 ~ 82%</p>
    <p class="MsoNormal"><i>Industrial areas:</i> 112/130 ~ 86%</p>
    <p class="MsoNormal"><i>Urban areas: </i>89/112 ~ 79%</p>
    <p class="MsoNormal"><i>Water: </i>56/66 ~ 85%</p>
    <p class="MsoNormal"><b>User’s Accuracy</b></p>
    <p class="MsoNormal"><i>Industrial Areas</i></p>
    <p class="MsoNormal">Correctly classified samples = 112</p>
    <p class="MsoNormal">Samples assigned to Industrial Areas = 149</p>
    <p class="MsoNormal"><i>User’s Accuracy</i> = 112 / 149 ~ 75%</p>
    <p class="MsoNormal"><i>Forest:</i> 68/78 ~ 87%</p>
    <p class="MsoNormal"><i>Urban: </i>89 / 191 ~ 88%</p>
    <p class="MsoNormal"><i>Water: </i>56/63 ~ 88%</p>
    <p>
    <span style="font-size: 12.0pt; font-family: Liberation Serif; font-weight:700">Kappa 
    coefficient</span></p>
    <p><span style="font-size: 12.0pt; font-family: Liberation Serif">Kappa 
    coefficient is defined as</span></td>
  </tr>
  <tr>
    <td height="133" valign="top"><!--[if gte vml 1]><v:shape
 id="_x0000_s1084" type="#_x0000_t75" style='width:232.5pt;height:91.5pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory13_files/image003.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=310 height=122
src="theory13_files/image004.jpg" v:shapes="_x0000_s1084"><![endif]></td>
  </tr>
  <tr>
    <td height="57" valign="top">
    <p class="MsoNormal" align="justify">C<sub>i+</sub> denotes the sum of the ith row elements; 
    C<sub>+i</sub> denotes the sum of the ith column elements &#954; is interpreted as the index of correct classification after adjusting for chance agreement between the true and computed 
    classes.</p>
    <p class="MsoNormal" align="justify"><b>Interpretation of Kappa Coefficient</b></p>
    <p class="MsoNormal" align="justify">Kappa coefficient is used to compare the degree of consensus between raters (inspectors) in, for example, Measurement Systems Analysis. The degree of chance agreement between the raters and the measurement system is considered in the rating to assess the actual degree of agreement.</p>
    <p class="MsoNormal">Suppose 150 samples are independently verified and the following determinations are made:</p>
    </td>
  </tr>
  <tr>
    <td height="167" valign="top">&nbsp;<p><!--[if gte vml 1]><v:shape
 id="_x0000_s1085" type="#_x0000_t75" style='width:330.75pt;height:113.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory13_files/image005.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=441 height=151
src="theory13_files/image006.jpg" v:shapes="_x0000_s1085"><![endif]></p>
    <p>&nbsp;</td>
  </tr>
  <tr>
    <td height="28" valign="top" >
					<span style="font-size: 12.0pt; font-family: Liberation Serif; font-weight:700">
                    Chance Agreement</span></td>
  </tr>
  <tr>
    <td height="212" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1086" type="#_x0000_t75" style='width:331.5pt;height:111pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory13_files/image007.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=442 height=148
src="theory13_files/image008.jpg" v:shapes="_x0000_s1086"><![endif]></td>
  </tr>
  <tr>
    <td height="231" valign="top" >
					<p class="MsoNormal">The chance values are produced by computing:</p>
                    <p class="MsoNormal" align="justify">(row total x col. total) / Total values</p>
                    <p class="MsoNormal" align="justify"><b>Kappa Coefficient for this example</b></p>
                    <p class="MsoNormal" align="justify">&#954; = (130 – 100.92) / (150 – 100.92) = 
                    0.593</p>
                    <p class="MsoNormal" align="justify">130 comes from the first table, 100.92 comes from the chance table, 150 is the total number of samples. Chance agreement is deducted from 
                    actual</p>
                    <p class="MsoNormal" align="justify">agreement to estimate the degree of 
                    agreement between the system (classifier) and the 
                    inspector (ground truth).</p>
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