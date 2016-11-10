<?php
include_once("../sessioncheck.php");
require_once("../util/system.php");
selectDatabase();// Database Connection 

// Retrieving the values of variables

$Exp = $_GET["Exp"];
$UsrId=$_SESSION['uid'];
$UsrName=$_SESSION['user'];

// Current Date

$date_time = date('Y-m-d');  

// Displying the Result in web page for printing

if($Exp!="")
 {

 	$sql="select R.QtsNo, R.Answer as Ans, S.Question, S.Answer as Qans from evalresult R, selfeval S where R.ExpNo = ".$Exp." And R.UsrNo = ".$UsrId." And R.DOE = '".$date_time."' And R.QtsNo=S.Srno ORDER BY S.Srno";
 
	//echo $sql;
 
 	$result=mysql_query($sql);
 
  	$i=1;

 	echo "<br><h2> Result of Self-Evaluation of &nbsp;".$UsrName."</h2><br>";
 	
 	echo('<br><font size=2.5>
  		<table border=1 width =100% cellspacing=1 cellpadding=1>
  		<tr align=center height=30 bgcolor="#CCE6FF">
  			<th width=5%>Sr No.</th>
  			<th width=75%>Question</th>
  			<th width=5%>Given Answer </th>
  			<th width=15%>Correct Answer</th>
  		</tr> 		  
  ');
  	

 	while ($myrow1=mysql_fetch_array($result))
    { 
    
     echo('  		
  		<tr>
  			<td align=center bgcolor="#CCE6FF"><b>'.$i.'</b></td>
  			<td>'.$myrow1["Question"].'</td>
  			<td align=center>'.$myrow1["Ans"].'</td>
  			<td align=center>'.$myrow1["Qans"].'</td></tr>  			  		
  	');   
          
		
	$i++;	
	}
	
	echo('</table></font>');
 }
 
?>

<!-- Print Command-->

<center><br><br>
<A HREF="javascript:window.print()"><IMG SRC="images/PrintRpt.jpg" BORDER="0"</A>
</center>
