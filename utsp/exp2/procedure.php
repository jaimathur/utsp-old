<?php
include_once("../sessioncheck.php");
  include_once("header.php");
  getHeader(3,"Regression Analysis", "Trip Generation");
?> 
<div id="body">
<h1 class="title_header1" align="right">Regression Analysis</h1>
<h1 class="designation">Procedure</h1>
<span class="title">Step 1</span>
<p>Select the type of experiment you want to perform.  The format of the input file should be according to the default file. </P>
<p><center><img src="img/2.8.jpg"/></center></p>
<br>
<span class="title">Step 2</span>
<p>Select the input file by &ldquo;open&rdquo; option and then go to &ldquo;Analyze&rdquo; to perform various regression analysis experiments.</P>
<p><center><img src="img/2.1.jpg"/></center></p>
<br>
<p>Data Analysis can be done in three types </p>
<ul>
<li>Correlation</li>
<li>Description Statistics</li>
<li>Plot</li>
</ul>
<span class="title">Step 3</span>
<p>The Statistics of selected parameters is obtained in the format given below.</p>
<p>&nbsp;</p>
<p><center><img src="img/2.4.jpg" width="800" height="400"/></center></p>
<br>
<span class="title">Step 4</span>
<p>Output is obtained</p>
<p>Correlation between different parameters can be determined. The output is represented in the form of a matrix given below.</p>
<p>&nbsp;</p>
<p><center><img src="img/2.6.jpg"width="800" height="400"/></center></p>
<br>
<p>Example of the output obtained from Linear Regression Model is given below. After obtaining the equation select future data file to obtain future trips.</p>
<p>&nbsp;</p>
<p><center><img src="img/2.7.jpg"width="800" height="400"/></center></p>
</center>
<br>

<span class="title">Demo Video to know the procedure of performing PHP Based experiment</span>
<br>
<center>
<video id=0 controls width=640 height=400>
  <source src="video/RegressionPHP.mp4" type="video/mp4">
  <source src="video/RegressionPHP.ogv" type='video/ogg; codecs="theora, vorbis"'/>
  <source src="video/RegressionPHP.webm" type="video/webm">
  <object data="video/RegressionPHP.mp4" width=640 height=400>
    <embed src="video/RegressionPHP.swf" width=640 height=400>
  </object> 
  <br>
  Video may not play properly or be visible, most likely your browser does not support HTML5 video.
</video>
</center>


<br>

<span class="title">Demo Video to know the procedure of performing Java Based experiment</span>
<br>
<center>
<video id=0 controls width=640 height=400>
  <source src="video/Regression.mp4" type="video/mp4">
  <source src="video/Regression.ogv" type='video/ogg; codecs="theora, vorbis"'/>
  <source src="video/Regression.webm" type="video/webm">
  <object data="video/Regression.mp4" width=640 height=400>
    <embed src="video/Regression.swf" width=640 height=400>
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
  