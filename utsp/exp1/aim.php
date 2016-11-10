<?php
include_once("../sessioncheck.php");
  include_once("header.php");
  getHeader(1,"Volume, Speed and Delay Study at Intersection","");
  /* added "Experiment: " on 28th Nov,2013 */

?> 
	<div id="body">
	<h1 class="title_header1" align="right">Volume, Speed and Delay Study at Intersection</h1>
    <h1 class="designation">Aim</h1>
    <p class="aim">To determine average travel time, average speed and also the amount of delay caused on a given route.</p>
    <h1 class="designation">Objectives</h1>
    <ul class="objective">
      <li>To determine average travel time between source and destination.</li>
      <li>To determine average speed between source and destination.</li>
      <li>To determine average delay between source and destination.</li>
    </ul>
  </div>

<?php
  include_once("footer.php");
  getFooter(1);
?>   
