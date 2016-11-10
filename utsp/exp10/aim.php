<?php
include_once("../sessioncheck.php");
  include_once("header.php");
  getHeader(1,"All or Nothing (AON) Assignment","Trip Assignment");
?> 
	<div id="body">
<h1 class="title_header1" align="right">All or Nothing Assignment</h1>
    <h1 class="designation">Aim</h1>
    <p class="aim">To assign trips on a network for a given OD demand by using All or Nothing assignment technique.</p>
    <h1 class="designation">Objectives</h1>
    <ul class="objective">
      <li>To understand the concept of All-Or-Nothing route assignment technique.</li>
      <li>To perform All-Or-Nothing route assignment experiment for a given network and obtain link flow volumes.</li>
    </ul>
  </div>
	
<?php
  include_once("footer.php");
  getFooter(1);
?>   