<?php
include_once("../sessioncheck.php");
  include_once("header.php");
  getHeader(5,"System Optimal Assignment","Trip Assignment");
?> 
	<div id="body">
<h1 class="title_header1" align="right">System Optimal Assignment</h1>
    <h1 class="designation">FAQs</h1>
    <ul class="questions">
      <li>Is System optimization a realistic model? If not, why we use it to model flow in a network?
        <span class="answers">System optimization is not a realistic model but it is very useful to transport planners and engineers, trying to manage the traffic to minimise travel costs and therefore achieve an optimum social equilibrium.</span></li>
      <li>Can User equilibrium and system optimal produce identical results?<span class="answers">
      When congestion effects are ignored (i.e. travel time is independent of flow) , User equilibrium and system optimal have same optimization function and hence produce identical results.</span></li> 
    </ul>
  </div>
<?php
  include_once("footer.php");
  getFooter(5);
?>  	