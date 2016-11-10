<?php
 include_once("../sessioncheck.php");
  include_once("header.php");
  getHeader(3,"Mode Split");
?> 
<div id="body">
<h1 class="title_header1" align="right">Mode Split</h1>
<h1 class="designation">Procedure</h1>
<p>Question: Find the fare collected from each of the mode Car, Bus, Train ?</p>
<br>
<p>Give the details of different modes of travel obtained from the survey or any other sources in the table below</p>
<p><center><img src="img/img_1.bmp"/></center></p>
<br>
<p>The next step will give the details of each calculation. The formula used is given in detail in the theory section. </p>
<br>
<p><center><img src="img/img_2.bmp"/></center></p>
<br>
<p>Though the cost of travel by train is the least, this mode carries the maximum trips and thus most of the fare is collected by Train</p>
<br>
<p><center><img src="img/img_3.bmp"/></center></p>    
<br>
<span class="title">Demo Video to run PHP Based Experiment</span>
<br>
<center>
<video id=0 controls width=640 height=400>
  <source src="video/ms.mp4" type="video/mp4">
  <source src="video/ms.ogv" type='video/ogg; codecs="theora, vorbis"'/>
  <source src="video/ms.webm" type="video/webm">
  <object data="video/ms.mp4" width=640 height=400>
    <embed src="video/ms.swf" width=640 height=400>
  </object> 
  <br>
  Video may not play properly or be visible, most likely your browser does not support HTML5 video.
</video>
</center>
</div>
<?php
  include_once("footer.php");
  getFooter(3);
?>  