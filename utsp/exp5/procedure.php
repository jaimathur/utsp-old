<?php
include_once("../sessioncheck.php");
  include_once("header.php");
  getHeader(3,"Singly constrained Gravity Model","Trip Distribution");
?> 
<div id="body">
<h1 class="title_header1" align="right">Singly constrained Gravity Model</h1>
<h1 class="designation">Procedure</h1>
<span class="title">Step 1</span>
<p>
	<li>Click on &#145;Click Here To Perform Experiment with GUI&#146;.</li>
	<li>In order to start with the experiments make sure that the input files are available in the format given in the default file. The default file can be downloaded from the table as shown in the image.</li>
</p>
<p><center><img src="img/img_1.bmp"/></center></p>
<br>
<span class="title">Step 2</span>
<p>Go to Methods to select the type of experiment to be performed. Browse the required input file  </p>
<p><center><img src="img/img_2.bmp"/></center></p>
<br>
<p>There four types of Impedance Functions</p>
<p>
	<li >Power Function : <b>F<sub>ij</sub>=C<sup>&#x3B2;</sup><sub>ij</sub></b>
	</li>
	<li >Exponential Function : <b>F<sub>ij</sub>=e<sup>-&#x3B2;<sub>1</sub>C<sub>ij</sub></sup></b>
	</li>
	<li >Gamma Function : <b>F<sub>ij</sub>=e<sup>-&#x3B2;<sub>1</sub>C<sub>ij</sub></sup>C<sup>-&#x3B2;<sub>2</sub></sup><sub>ij</sub></b>
	</li>
	<li >Linear Function : <b>F<sub>ij</sub>=&#x3B2;<sub>1</sub>+&#x3B2;<sub>2</sub>C<sub>ij</sub></b>
	</li>
</p>
<p>Select the required impedance function and value of &#x3B2;<sub>1</sub>, &#x3B2;<sub>2</sub>,C<sub>ij</sub> Then click &#39;OK&#39; to get the output.</p>
<p>Example of the output file of Origin Constrained experiment</p>
<br>
<p><center><img src="img/img_3.bmp"/></center></p>
<br>
<p><center><img src="img/img_3.bmp"/></center></p>
<br>
<span class="title">Demo Video to run PHP Based Experiment</span>
<br>
<center>
<video id=0 controls width=640 height=400>
  <source src="video/gravityPHP.mp4" type="video/mp4">
  <source src="video/gravityPHP.ogv" type='video/ogg; codecs="theora, vorbis"'/>
  <source src="video/gravityPHP.webm" type="video/webm">
  <object data="video/gravityPHP.mp4" width=640 height=400>
    <embed src="video/gravityPHP.swf" width=640 height=400>
  </object> 
  <br>
  Video may not play properly or be visible, most likely your browser does not support HTML5 video.
</video>
</center>
<br>
<span class="title">Demo Video to run Java Based Experiment</span>
<br>
<center>
<video id=0 controls width=640 height=400>
  <source src="video/GravityMethod2.mp4" type="video/mp4">
  <source src="video/GravityMethod2.ogv" type='video/ogg; codecs="theora, vorbis"'/>
  <source src="video/GravityMethod2.webm" type="video/webm">
  <object data="video/GravityMethod2.mp4" width=640 height=400>
    <embed src="video/GravityMethod2.swf" width=640 height=400>
  </object> 
  <br>
  Video may not play properly or be visible, most likely your browser does not support HTML5 video.
</video>
</center>

<p>&nbsp;</p>
</div>
  <?php
  include_once("footer.php");
  getFooter(3);
?>  