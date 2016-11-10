<?php
include_once("../sessioncheck.php");
include_once("header.php");
getHeader(6,"Regression Analysis","Trip Generatrion");
require_once("../util/system.php");
selectDatabase();
$Exp = $_POST["Exp"];

?>

<div id="body">
<h1 class="title_header1" align="right">Regression Analysis</h1>

<h1><a href=\"#\"><br>Result of Self-Evaluation</a></h1><br>

<?php

// Showing the Result of Self Evalution & Saving into database.

$stuff = mysql_query("SELECT * FROM selfeval where ExpNo=".$Exp." order by Srno") or die("MySQL Login Error: ".mysql_error()); 
$UsrId=$_SESSION['uid'];

if (mysql_num_rows($stuff) > 0) { 
$cor_ans=0;
$wrong=0;
$empt_ans=0;
$row=mysql_num_rows($stuff);
 $i=1;
 
echo('<br><font size=2.5>
  		<table class="table table-bordered table-hover">
  		<tr align=center height=30>
  			<th width=5%>Sr No.</th>
  			<th width=75%>Question</th>
  			<th width=5%>Result</th>
  			<th width=15%>Correct Answer</th>
  		</tr>
  		
  
  ');
 
while($row = mysql_fetch_array($stuff))
  {
   
  $Srno=$row['Srno'];
  $QtsType=$row['QType'];
  $Question=$row['Question'];	 
  $Answer=$row['Answer'];
  $username=$_SESSION['user'];
  //$sel_ans=$_POST['rd_opt'.$i];
  
  if(empty($_POST['rd_opt'.$Srno]))
  { 	
  $sel_ans='Did Not Answered';
  }
  else 
  {
  	// Retrieving the values of radio button 
  	$sel_ans=$_POST['rd_opt'.$Srno];
  }
  $date_time = date('Y-m-d H:i:s');    
 $sql = "INSERT INTO `evalresult`(`ExpNo`, `UsrNo`, `username`, `QtsNo`, `Answer`, `DOE`) values('$Exp','$UsrId','$username','$Srno','$sel_ans','$date_time')";
  //echo $sql;
  //echo('<br>');
  
  $result=mysql_query($sql);
  
  if (!$result) 
	{  die("ERROR: " . mysql_error() . "\n"); } 
  
  echo('  		
  		<tr height=30>
  			<td align=center>'.$i.'</td>
  			<td>'.$Question.'</td>  		
  	');
  
    
  if($sel_ans=='Did Not Answered')
  {
  	$empt_ans++;
  	echo('<td align="center">'.$sel_ans.'</td>');
  }
  elseif (trim($Answer)==trim($sel_ans))
  {
  	$cor_ans++;
  	echo('<td align="center">'.$sel_ans.'<img alt="Right" src="img/right.jpg"/></td>');
  	//echo('<td align="center"><img alt="Right" src="img/Right.gif"/></td>');
  }
  else
  {
  	$wrong++;
  	echo('<td align="center">'.$sel_ans.'<img alt="Wrong" src="img/wrong.jpg"/></td>');
  //	echo(' <td align="center"><img alt="Wrong" src="img/Wrong.gif"/></td>');
  }
  
  echo(' <td align="center">'.$Answer.'</td></tr>');
  
  $i++;
  }
  echo('  		
  		<tr>
  			<td colspan=4>&nbsp;</td>
  		</tr>
  		</table></font>
  
  ');
}
//$wrong = $i - $cor_ans;

  echo(' <h3><b><center><br><br> No. of Correct Answers :  ' .$cor_ans. ' &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No. of Wrong Answers : '.$wrong.'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No. of Not attempted Qts : '.$empt_ans.' </h3></b><br> ');

?>

<script language="javascript">
function chk1()
{  
	document.FrmExel.action="../ExcelRpt.php?Exp=<?=$Exp?>";   	
}
function chk2()
{  
	var stile = "top=200,left=400,width=800,height=500,status=0,scrollbars=1";
	window.open("../PrintRpt.php?Exp=<?=$Exp?>", "", stile);
	
	//document.FrmExel.action="PrintRpt.php";	  
	//document.FrmExel.target="_blank";  
}
</script>
<br>
<center>
  <form action="SelfEvalResult.php" name="FrmExel"> 
  <Input type = "hidden" Name = "Exp" Value = "<?php echo $Exp ?>" />
  <input class="button" type="submit" value="Generate Excel Report" name="Submit" OnClick="return chk1()">
  &nbsp;&nbsp;
  <input type="button" value="Print Report" name="PSubmit" OnClick="return chk2()">
  </form>
</center>
</div>
<?php
include_once("footer.php");
getFooter(6);
?>   
