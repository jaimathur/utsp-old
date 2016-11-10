<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="File-List" href="theory12_files/filelist.xml">

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
    
    
    
    <table id="t1" border="0" cellspacing="0" width="100%" height="3965">
  <tr>
    <td height="36" valign="top"><font size="6"><b>Neural Network Based 
    Classification</b></font></td>
  </tr>
  <tr>
    <td height="241" valign="top">
    <p class="MsoNormal" style="margin-top: 7">What Are Artificial Neural Networks?</p>
    <p class="MsoNormal" align="justify">A parallel distributed computing mechanisms inspired by the functioning of human brain. 
    Computation is highly parallel and each processor performs an extremely simple function. 
    Operating in continuous domains is often preferred. System behavior is often learned rather than programmed.</p>
    <p class="MsoNormal" align="justify">&nbsp;</p>
    <p class="MsoNormal" align="justify">Why Study Artificial Neural Networks 
    (ANN)?</p>
    <p class="MsoNormal" align="justify">ANN model brain &amp; behavior. It solve 
    difficult engineering problems such as classification and regression. It is Inspired from Neurobiology.</p>
    <p class="MsoNormal"><b>Neuron</b></td>
  </tr>
  <tr>
    <td height="205" valign="top"><p><!--[if gte vml 1]><v:shapetype id="_x0000_t75"
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
</v:shapetype><v:shape id="_x0000_s1058" type="#_x0000_t75" style='width:280.5pt;
 height:235.5pt;mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image001.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=374 height=314
src="theory12_files/image002.jpg" v:shapes="_x0000_s1058"><![endif]></p>
    </td>
  </tr>
  <tr>
    <td height="395" valign="top">
    <p class="MsoNormal" align="justify">A neuron consists of many-inputs / one-output unit. Output can be excited or not excited. Incoming signals from other neurons determine if the neuron shall excite (&quot;fire&quot;) 
    or not. Output subject to attenuation in the synapses, which are junction parts of the neuron. The contribution of the signals depends on the<span style="font-size: 12.0pt; font-family: Liberation Serif"> strength 
    of the synaptic connection.</span></p>
    <p class="MsoNormal" align="justify"><b>Artificial Neuron</b></p>
    <p class="MsoNormal" align="justify">Strength of connection between the neurons is stored as a weight-value for the specific connection. Learning the solution to a problem 
    is actually finding the 
    correct connection weights</p>
    <p class="MsoNormal" align="justify"><b>Artificial Neuron</b></p>
    <p class="MsoNormal" align="justify">The internal components of artificial neuron 
    are:</p>
    <p class="MsoNormal">-Weights</p>
    <p class="MsoNormal">-Threshold/Bias</p>
    <p class="MsoNormal">-Summing Unit</p>
    <p class="MsoNormal">-Activation Function</p>
    </td>
  </tr>
  <tr>
    <td height="380" valign="top"><!--[if gte vml 1]><v:shape
 id="_x0000_s1059" type="#_x0000_t75" style='width:469.5pt;height:271.5pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image003.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=626 height=362
src="theory12_files/image004.jpg" v:shapes="_x0000_s1059"><![endif]></td>
  </tr>
  <tr>
    <td height="30" valign="top">
    <p class="MsoNormal"><b>Mathematical Representation</b></p>
    </td>
  </tr>
  <tr>
    <td height="312" valign="top"><!--[if gte vml 1]><v:shape
 id="_x0000_s1060" type="#_x0000_t75" style='width:466.5pt;height:216.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image005.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=622 height=289
src="theory12_files/image006.jpg" v:shapes="_x0000_s1060"><![endif]></td>
  </tr>
  <tr>
    <td height="205" valign="top" >
					<p class="MsoNormal" align="justify">The knowledge is in the 
                    weights. In the brain, the activation function 
                    of a given neuron is determined during neural development. 
                    Thus, learning is thought to involve changes in synaptic 
                    strengths or connection weights. Artificial neural network systems use a 
                    fixed activation function and often a fixed pattern of 
                    connectivity between processing elements. Learning involves 
                    re-computing the connection weights. These systems are sometimes called 
                    connectionist systems.</p>
                    <p class="MsoNormal" align="justify"><b>Multilayered Perceptron</b></p>
                    <p class="MsoNormal" align="justify">ANN research was in the limbo for 
                    nearly two decades when the single stage perceptron 
                    network was found unable to deal with many commonly encountered problems. The multistage perceptron network was 
                    felt to be the answer to this problem. However, the 
                    problem is: How is the multilayered perceptron 
                    network trained?</p>
                    </td>
  </tr>
  <tr>
    <td height="367" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1063" type="#_x0000_t75" style='width:474pt;height:265.5pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image007.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=632 height=354
src="theory12_files/image008.jpg" v:shapes="_x0000_s1063"><![endif]></td>
  </tr>
  <tr>
    <td height="33" valign="top" >
					<p class="MsoNormal"><b>Training the Multilayer Perceptron Network</b></p>
                    </td>
  </tr>
 
  <tr>
    <td height="324" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1065" type="#_x0000_t75" style='width:480pt;height:242.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image009.png" o:title="" cropleft="204f"/>
</v:shape><![endif]--><![if !vml]><img border=0 width=640 height=323
src="theory12_files/image010.jpg" v:shapes="_x0000_s1065"><![endif]></td>
  </tr>
 
  <tr>
    <td height="31" valign="top" >
					<p class="MsoNormal">Total Error computed over all neurons 
                    in the output layer</p>
                    </td>
  </tr>
 
  <tr>
    <td height="69" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1066" type="#_x0000_t75" style='width:115.5pt;height:48pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image011.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=154 height=64
src="theory12_files/image012.jpg" v:shapes="_x0000_s1066"><![endif]></td>
  </tr>
 
  <tr>
    <td height="31" valign="top" >
					<p class="MsoNormal">If there are N training samples, then 
                    the average<span style="font-size: 12.0pt; font-family: Liberation Serif">
                    error can be computed as</span></p>
                    </td>
  </tr>
 
  <tr>
    <td height="73" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1067" type="#_x0000_t75" style='width:119.25pt;height:50.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image013.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=159 height=67
src="theory12_files/image014.jpg" v:shapes="_x0000_s1067"><![endif]></td>
  </tr>
 
  <tr>
    <td height="51" valign="top" >
					<p class="MsoNormal" align="justify">Given that the weights are the 
                    unknowns, find the derivative of the error function with 
                    respective to the weights and move in the direction of 
                    the negative gradient.</p>
                    </td>
  </tr>
 
  <tr>
    <td height="77" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1068" type="#_x0000_t75" style='width:298.5pt;height:51pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image015.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=398 height=68
src="theory12_files/image016.jpg" v:shapes="_x0000_s1068"><![endif]></td>
  </tr>
 
  <tr>
    <td height="27" valign="top" >
					<p class="MsoNormal">We have to compute each of the terms on 
                    the RHS to obtain the derivative on the LHS</p>
                    </td>
  </tr>
 
  <tr>
    <td height="223" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1069" type="#_x0000_t75" style='width:230.25pt;height:157.5pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image017.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=307 height=210
src="theory12_files/image018.jpg" v:shapes="_x0000_s1069"><![endif]></td>
  </tr>
 
  <tr>
    <td height="262" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1070" type="#_x0000_t75" style='width:249pt;height:193.5pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image019.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=332 height=258
src="theory12_files/image020.jpg" v:shapes="_x0000_s1070"><![endif]></td>
  </tr>
 
  <tr>
    <td height="277" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1071" type="#_x0000_t75" style='width:353.25pt;height:195.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image021.png" o:title="" croptop="809f"/>
</v:shape><![endif]--><![if !vml]><img border=0 width=471 height=261
src="theory12_files/image022.jpg" v:shapes="_x0000_s1071"><![endif]></td>
  </tr>
 
  <tr>
    <td height="253" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1072" type="#_x0000_t75" style='width:396.75pt;height:179.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image023.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=529 height=239
src="theory12_files/image024.jpg" v:shapes="_x0000_s1072"><![endif]></td>
  </tr>
 
  <tr>
    <td height="27" valign="top" >
					<p class="MsoNormal">By gradient descent rule,</p>
                    </td>
  </tr>
 
  <tr>
    <td height="19" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1073" type="#_x0000_t75" style='width:401.25pt;height:30pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image025.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=535 height=40
src="theory12_files/image026.jpg" v:shapes="_x0000_s1073"><![endif]></td>
  </tr>
 
  <tr>
    <td height="19" valign="top" >
					<p class="MsoNormal" align="justify">Case 1: Neuron k is an output node</p>
                    <p class="MsoNormal" align="justify">Case 2: Neuron j is a hidden node; the 
                    error in the output of the hidden node is not 
                    straight-forward because there is no defined output at a 
                    hidden node.</p>
                    </td>
  </tr>
 
  <tr>
    <td height="19" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1074" type="#_x0000_t75" style='width:265.5pt;height:72.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image027.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=354 height=97
src="theory12_files/image028.jpg" v:shapes="_x0000_s1074"><![endif]></td>
  </tr>
 
  <tr>
    <td height="19" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1075" type="#_x0000_t75" style='width:459pt;height:267pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image029.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=612 height=356
src="theory12_files/image030.jpg" v:shapes="_x0000_s1075"><![endif]></td>
  </tr>
 
  <tr>
    <td height="19" valign="top" >
					<p class="MsoNormal"><b>Weight updating rule: Error Backpropagation</b></p>
                    <p class="MsoNormal" align="justify">The algorithm takes its name – backpropagation – from the fact that during training, the error is 
                    propagated back, from the output to the hidden layer!</p>
                    <p class="MsoNormal" align="justify"><b>Computational Complexity</b></p>
                    <p class="MsoNormal" align="justify">The learning algorithm based on 
                    backpropagation of error is relatively efficient at least with regard to a single 
                    pass through the training set.</p>
                    <p class="MsoNormal"><b>Multilayer Feed-forward Network</b></p>
                    </td>
  </tr>
 
  <tr>
    <td height="19" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1078" type="#_x0000_t75" style='width:455.25pt;height:236.25pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image031.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=607 height=315
src="theory12_files/image032.jpg" v:shapes="_x0000_s1078"><![endif]><p>&nbsp;</td>
  </tr>
 
  <tr>
    <td height="19" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1079" type="#_x0000_t75" style='width:450.75pt;height:262.5pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image033.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=601 height=350
src="theory12_files/image034.jpg" v:shapes="_x0000_s1079"><![endif]></td>
  </tr>
 
  <tr>
    <td height="19" valign="top" >
					<p class="MsoNormal"><b>Moving Towards Error Minimum</b></p>
                    <p class="MsoNormal" align="justify">The error does not decrease monotonously towards the minimum value. Oscillations, and stagnation are 
                    common<span style="font-size: 12.0pt; font-family: Liberation Serif">
                    during the gradient descent procedure.</span></p>
                    </td>
  </tr>
 
  <tr>
    <td height="1" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1081" type="#_x0000_t75" style='width:437.25pt;height:258.75pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image035.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=583 height=345
src="theory12_files/image036.jpg" v:shapes="_x0000_s1081"><![endif]><p>&nbsp;</td>
  </tr>
 
  <tr>
    <td height="19" valign="top" >
					<p class="MsoNormal"><b>Network Configuration issues</b></p>
                    <p class="MsoNormal" align="justify">The network size cannot be too small 
                    as it cannot learn the relationship between 
                    the input and the output. The network size cannot be too large 
                    as it takes too long to train. Then it 
                    generalizes poorly.</p>
                    <p class="MsoNormal" align="justify"><b>Weight Initialization</b></p>
                    <p class="MsoNormal" align="justify">Before training begins, what values 
                    should weights have?</p>
                    <p class="MsoNormal" align="justify">Too large weights or all zero weights 
                    are not desirable. Thus, weights are typically 
                    initialized to small random values.Optimization techniques can be used 
                    for smart network weight initialization. 
                    Genetic algorithms are one such approach.</p>
                    </td>
  </tr>
 
  <tr>
    <td height="19" valign="top" >
					<!--[if gte vml 1]><v:shape
 id="_x0000_s1082" type="#_x0000_t75" style='width:376.5pt;height:46.5pt;
 mso-wrap-distance-left:0;mso-wrap-distance-right:0;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' filled="t">
 <v:fill color2="black"/>
 <v:imagedata src="theory12_files/image037.png" o:title=""/>
</v:shape><![endif]--><![if !vml]><img border=0 width=502 height=62
src="theory12_files/image038.jpg" v:shapes="_x0000_s1082"><![endif]></td>
  </tr>
 
  <tr>
    <td height="19" valign="top" >
					<p class="MsoNormal" align="justify"><b>Momentum</b></p>
                    <p class="MsoNormal" align="justify">Oscillations can be 
                    reduced as:</p>
                    <p class="MsoNormal" align="justify">Weights at iteration t+1 depend on 
                    error derivative and difference between 
                    weights at iterations t and t-1. µ - momentum term. Usually smaller than the gain term &#951;.</p>
                    <p class="MsoNormal" align="justify"><b>Problems with BP Algorithm</b></p>
                    <p class="MsoNormal" align="justify">-<i>Inability to learn</i>. Error on training patterns never 
                    reaches a low level. This typically means that either the network 
                    architecture is inappropriate or the learning process 
                    has pushed the network into a bad part of weight 
                    space.</p>
                    <p class="MsoNormal" align="justify">-<i>Inability to generalize</i>. The network may master the training 
                    patterns but fail to generalize to novel situations. This 
                    typically means that either the training environment is 
                    impoverished or the network has over-learned from the 
                    inputs</p>
                    <p class="MsoNormal" align="justify"><b>Supervised Image Classification 
                    using Neural Network</b></p>
                    <p class="MsoNormal" align="justify">Supervised image 
                    classification can be done using neural network by 
                    performing following:</p>
                    <p class="MsoNormal" align="justify">Identify the number of classes. Identify the training data and 
                    generate the training patterns. Define the network. Input/Output layers, Hidden layers,<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>Gain and momentum terms. </p>
                    <p class="MsoNormal" align="justify">Size of input layer = number of bands 
                    in the input data.</p>
                    <p class="MsoNormal" align="justify">Size of output layer = number of 
                    classes into which the data is mapped.</p>
                    <p class="MsoNormal" align="justify">Hidden layer(s): = in practice, one 
                    or two hidden layers are used.</p>
                    <p class="MsoNormal" align="justify">Usually first hidden layer has more 
                    nodes and second hidden layer has fewer 
                    nodes.</p>
                    <p class="MsoNormal" align="justify">Gain term = 0.1 to 0.5 in practice. Higher the gain term value, faster 
                    the change in weights, but can lead to instability.</p>
                    <p class="MsoNormal" align="justify">Momentum term = 0.01 to 0.1 in 
                    practice. Gain and momentum values are modified if convergence is slow.</p>
                    <p class="MsoNormal">&nbsp;</td>
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