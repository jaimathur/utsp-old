<?php
include_once("../sessioncheck.php");
  include_once("header.php");
  getHeader(3,"All or Nothing (AON) Assignment","Trip Assignment");
?> 
<div id="body">
<h1 class="title_header1" align="right">All or Nothing Assignment</h1>
<h1 class="designation">Procedure</h1>
<span class="title">Step 1</span>
<p>Select the type of experiment you want to perform.  The format of the input file should be according to the default file. </P>
<p><center><img src="img/fig7.png"/></center></p>
<br>
<span class="title">Step 2</span>
<p>You can build your network by creating nodes and links by selecting the icon given below</p>
<br>
<p><center><img src="img/fig1.png"/></center></p>
<br>
<p><center><img src="img/fig2.png"/></center></p>
<br>
<p><center><img src="img/fig3.png"/></center></p>
<br>
<p>After creating network input data for your OD table. Go to "Choose OD pair" in"Experiment" option and input origin destination and trips data. </p>
<br>
<span class="title">Step 3</span>
<p>Select "Run" in "Experiment" to perform All or Nothing Experiment</p> 
<p><center><img src="img/fig4.png"/></center></p>
<br>
<p><center><img src="img/fig6.png"/></center></p>
<br>
<p>You can get the output values for individual step or select "Skip" option to your bottom right to get the final output</p>
<br>
<p><center><img src="img/fig5.png"/></center></p>
<br>
<span class="title">Step 4</span>
<p>Save the output file to the desired location</p>   
<br>
<span class="title">Demo Video to run PHP Based Experiment</span>
<br>
<center>
<video id=0 controls width=640 height=400>
  <source src="video/assgn.mp4" type="video/mp4">
  <source src="video/assgn.ogv" type='video/ogg; codecs="theora, vorbis"'/>
  <source src="video/assgn.webm" type="video/webm">
  <object data="video/assgn.mp4" width=640 height=400>
    <embed src="video/assgn.swf" width=640 height=400>
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
  <source src="video/UserEquilibrium.mp4" type="video/mp4">
  <source src="video/UserEquilibrium.ogv" type='video/ogg; codecs="theora, vorbis"'/>
  <source src="video/UserEquilibrium.webm" type="video/webm">
  <object data="video/UserEquilibrium.mp4" width=640 height=400>
    <embed src="video/UserEquilibrium.swf" width=640 height=400>
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