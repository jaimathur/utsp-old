<?php
include_once("../sessioncheck.php");
  include_once("header.php");
  getHeader(5,"Doubly constrained Gravity Model","Trip Distribution");
?> 

  <div id="body">
<h1 class="title_header1" align="right">Doubly constrained Gravity Model</h1>
    <h1 class="designation">FAQs</h1>
    <ul class="questions">
      <li>
        When to use doubly constrained model?<span class="answers">
        <p>The doubly constrained model can be used when the following condition is satisfied.</p>
          <div>When sum of all the trips attracted to all the attraction zones will be equal to the
           total number of trips produced in a production zone. Mathematically:
          $$\nonumber \sum \limits_{j} T_{ij} = O_{i}$$
          </div>
          <div>When sum of trips produced for all the trip production zones will be equal 
            to the number of trips attracted to a destination zone.  Mathematically:  
             $$\nonumber \sum \limits_{j} T_{ij} = D_{i}$$
          </div>
        </span>
      </li>
   </ul>
  </div>
	
  <?php
  include_once("footer.php");
  getFooter(5);
?>   