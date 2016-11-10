<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="File-List" href="theory11_files/filelist.xml">

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
    <td width="100%"><font size="6"><b>Maximum Likelihood Classification</b></font></td>
  </tr>
  <tr>
    <td width="100%"><p class="MsoNormal" style="margin-top: 7" align="justify">Maximum 
    likelihood classifier calculates the likelihood of a pixel being in different classes conditional on the available features, and assigns the pixel to the class with the highest likelihood.</p>
    <p class="MsoNormal" align="justify"><b>Likelihood Calculation</b></p>
    <p class="MsoNormal" align="justify">The likelihood of a feature vector x to be in class C<sub>i</sub> is taken as the conditional probability 
    P(C<sub>i</sub>|x). We need to compute P(C<sub>i</sub>|x), that is the conditional probability of class C<sub>i</sub> given 
    the pixel vector x. It is not possible to directly estimate the conditional probability of a class given the feature vector. Instead, it is computed indirectly in terms of the conditional probability of feature vector x given that it belongs to class C<sub>i</sub>.</p>
    <p class="MsoNormal" align="justify">P(C<sub>i</sub>|x) is computed using Bayes’ Theorem in terms of P(x|C<sub>i</sub>).</p>
    <p class="MsoNormal" align="justify">P(C<sub>i</sub>|x) = P(x|C<sub>i</sub>) P(C<sub>i</sub>) 
    / P(x)</p>
    <p class="MsoNormal" align="justify">x is assigned to class C<sub>j</sub> such that P(C<sub>j</sub>|x) = Maxi P(C<sub>i</sub>|x), i=1…K, 
    the number of classes. P(C<sub>i</sub>) is the prior probability of occurrence 
    of class i in the image. P(x) is the multivariate probability density function of feature x.</p>
    <p class="MsoNormal" align="justify">P(x) can be ignored in the computation of Max{P(C<sub>i</sub>|x). If P(x|C<sub>j</sub>) is not assumed to have a known 
    distribution, then its estimation is said to be non-parametric estimation. If P(x|C<sub>j</sub>) is assumed to have a known 
    distribution, then its estimation is said to be parametric. The training data x with the class already given, can 
    be used to estimate the conditional density function P(x|C<sub>i</sub>).</p>
    <p class="MsoNormal" align="justify">P(x|C<sub>i</sub>) is assumed to be multivariate 
    Gaussian distributed in practical parametric classifiers. Gaussian distribution is mathematically simple to handle. Each class conditional density function P(x|C<sub>i</sub>) 
    is represented by its mean vector µ<sub>i</sub> and covariance matrix &#931;<sub>i.</sub></p>
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
</v:shapetype><v:shape id="_x0000_s1055" type="#_x0000_t75" style='width:275.25pt;
 height:44.25pt;mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory11_files/image001.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=367 height=59
src="theory11_files/image002.jpg" v:shapes="_x0000_s1055"><![endif]><p>
    Likelihood can be calculated as:</td>
  </tr>
  <tr>
    <td width="100%"><!--[if gte vml 1]><v:shape
 id="_x0000_s1056" type="#_x0000_t75" style='width:420pt;height:39.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory11_files/image003.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=560 height=53
src="theory11_files/image004.jpg" v:shapes="_x0000_s1056"><![endif]></td>
  </tr>
  <tr>
    <td width="100%" >
					<p class="MsoNormal">We assume that the covariance matrices 
                    for each class are different.</p>
                    <p class="MsoNormal">The term</p>
                    </td>
  </tr>
  <tr>
    <td width="100%" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1057" type="#_x0000_t75" style='width:149.25pt;height:27pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory11_files/image005.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=199 height=36
src="theory11_files/image006.jpg" v:shapes="_x0000_s1057"><![endif]></td>
  </tr>
  <tr>
    <td width="100%" >
					<p class="MsoNormal" align="justify">is known as the Mahalanobis distance 
                    between x and µi (after Prof. P.C. Mahalanobis, famous 
                    Indian statistician and founder of Indian Statistical Institute).</p>
                    <p class="MsoNormal" align="justify"><b>Assumption of gaussian distribution</b></p>
                    <p class="MsoNormal" align="justify">Each class is assumed to be 
                    multivariate normally distributed. That implies each class has a mean µi 
                    that has the highest likelihood of occurrence. The likelihood function decreases 
                    exponentially as the feature vector x deviates from the mean 
                    vector µi. The rate of decrease is governed by 
                    the class variance; Smaller the variance, steep will be the 
                    decrease, and larger the variance, slower will be the 
                    decrease.</p>
                    <p class="MsoNormal" align="justify"><b>Advantages/Disadvantages of Maximum Likelihood Classifier</b></p>
                    <p class="MsoNormal" align="justify">It normally classifies every pixel no 
                    matter how far it is from a class mean.</p>
                    <p class="MsoNormal" align="justify">Slowest method – more computationally 
                    intensive.</p>
                    <p class="MsoNormal" align="justify">Normally distributed data assumption 
                    is not always true, in which case the results are not 
                    likely to be very accurate.</p>
                    <p class="MsoNormal" align="justify">Tmin condition can be introduced into 
                    the classification rule to separately handle ambiguous 
                    feature vectors</p>
                    <p>&nbsp;</td>
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