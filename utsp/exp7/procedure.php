<?php
include_once("../sessioncheck.php");
  include_once("header.php");
  getHeader(3,"Calibration of Singly Constrained Gravity Model","Trip Distribution");
?> 
<div id="body">
<h1 class="title_header1" align="right">Calibration of Singly Constrained Gravity Model</h1>
<h1 class="designation">Procedure</h1>
<span class="title">Step 1</span>
<p>
	<li>Click on &#145;Click Here To Perform Experiment with GUI&#146;.  
	</li>
	<li>In order to start with the experiments make sure that the input files are available in the format given in the default file. The default file can be downloaded from the table as shown in the image.	</li>
</p>
<p><center><img src="img/img_1.bmp"/></center></p>
<br>
<span class="title">Step 2</span>
<p>Go to Model in order to perform Calibration of Singly Constrained Gravity Model. Browse the required input file.</p>
<br>
<p><center><img src="img/img_2.bmp"/></center></p>
<br>
<p>There are two types of Impedance Functions</p>
<p><center><img src="img/img_3.bmp"/></center></p>
<br>
<p>
	<li>Power Function : <b>F<sub>ij</sub>=C<sup>&#x3B2;</sup><sub>ij</sub></b>
	</li>
	<li>Exponential Function : <b>F<sub>ij</sub>=e<sup>-&#x3B2;<sub>1</sub>C<sub>ij</sub></sup></b>
	</li>
</p>
<br>
<p>Select the method of model (Origin or Destination Constrained) and the frinctional factor function required then click &#145;OK&#145; in order to get the output. </p>
<br>
<span class="title">Step 3</span>
<p>Sample of the output is given below. Save the output by clicking on &#145;File&#145;. The graph can also be saved in the form of image(.png).</p>
<br>
<p><center><img src="img/img_4.bmp"/></center></p>
<br>
<p>Graphical representation of the output while finding optimal Beta value can also be viewed. Sample image is given below.</p>
<p><center><img src="img/img_5.bmp"/></center></p>
<br>
<span class="title">Demo Video to run PHP Based Experiment</span>
<br>
<center>
<video id=0 controls width=640 height=400>
  <source src="video/CaliberationPHP.mp4" type="video/mp4">
  <source src="video/CaliberationPHP.ogv" type='video/ogg; codecs="theora, vorbis"'/>
  <source src="video/CaliberationPHP.webm" type="video/webm">
  <object data="video/CaliberationPHP.mp4" width=640 height=400>
    <embed src="video/CaliberationPHP.swf" width=640 height=400>
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
  <source src="video/Caliberation2.mp4" type="video/mp4">
  <source src="video/Caliberation2.ogv" type='video/ogg; codecs="theora, vorbis"'/>
  <source src="video/Caliberation2.webm" type="video/webm">
  <object data="video/Caliberation2.mp4" width=640 height=400>
    <embed src="video/Caliberation2.swf" width=640 height=400>
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