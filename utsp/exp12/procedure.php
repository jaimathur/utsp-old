<?php
include_once("../sessioncheck.php");
  include_once("header.php");
  getHeader(3,"System Optimal Assignment","Trip Assignment");
?> 
<div id="body">
<h1 class="title_header1" align="right">System Optimal Assignment</h1>
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
<p>You can also upload your link and OD trip table by selecting the "Experiment" option</p>
<br>
<p><center><img src="img/fig8.png"/></center></p>
<br>
<p><center><img src="img/fig9.png"/></center></p>
<br>
<span class="title">Step 3</span>
<p>Select "Run" in "Experiment" to perform User Equilibrium Assignment</p> 
<br>
<span class="title">Step 5</span>
<p>Select the type of experiment you want to perform and give the corresponding value of the parameters</p>
<p><center><img src="img/fig10.png"/></center></p>
<br>
<p>You can get the output values for individual step or select "Skip" option to your bottom right to get the final output</p>
<br>
<p><center><img src="img/fig5.png"/></center></p>
<br>
<span class="title">Step 5</span>
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