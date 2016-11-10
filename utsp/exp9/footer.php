<?php
include_once("../sessioncheck.php");

/*
	1	-	aim
	2	-	theory
	3	-	procedure
	4 	-   experiment
	5   -   faq
	6	-	selfevaluation

*/

function getFooter($id) {
?>
 <a  href="#" class="scrollup"></a>
<div class="footer" align="right">
    <hr/>
    <ul>
       <li><a href="../login/contact.php">Contact Us</a></li>
      <li><a href="../login/people.php">People</a><span class="vline"/></li>
      <li><a href="../login/experiments.php">Experiments</a><span class="vline"/></li>
      <li ><a href="../login/index.php">Home</a><span class="vline"/></li>      
    </ul>
  </div>
</div>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-37587264-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>  </body>
</html>
	
<?php
}
?>