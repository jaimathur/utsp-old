<?php
include_once("../sessioncheck.php");
include_once("header.php");
getHeader(6,"All or Nothing (AON) Assignment","Trip Assignment");
 require_once("../util/system.php");
 selectDatabase();
?> 
<script>
function chk() {
    var elements = document.getElementsByClassName("answers");
    var counter = 0;
    for (var i = 1; i <= elements.length; i++) {
        temp = document.getElementsByName('rd_opt' + i);
        for (var j = 0; j < temp.length; j++) {
            if (temp[j].checked) {
                counter++;
                break;
            }
        }
        console.log(elements.length);
    }
    

    if (counter === elements.length) {
        var retVal = confirm("Do you want to continue ?");
        if (retVal === true) {
            return true;
        } else {
            return false;
        }
    } else {
        var retVal = confirm("Do you want to continue ?");
        if (retVal === true) {
            return true;
        } else {
            return false;
        }
    }
   
}
</script>
<div id="body">
<h1 class="title_header1" align="right">All or Nothing Assignment</h1>
    <h1 class="designation">Self Evaluation</h1>

<?php

// Retrieving the Questions & options from the database & Showing to the user 

$stuff = mysql_query("SELECT * FROM selfeval where ExpNo='8' order by Srno") or die("MySQL Login Error: ".mysql_error()); 

if (mysql_num_rows($stuff) > 0) 
{ 

	$row=mysql_num_rows($stuff);
 	$i=1;
 	echo('<div class=\"entry\">');
 	echo(' <ul class="question_form">');
	
 	while($row = mysql_fetch_array($stuff))
  	{ 
  	$Srno=$row['Srno'];
  	$QtsType=$row['QType'];
  	$Question=$row['Question'];	
  	$Option1=$row['Option1'];
  	$Option2=$row['Option2'];
  	$Option3=$row['Option3'];
  	$Option4=$row['Option4'];
    
  	echo ('<li><div class="question">'.$Question.'  </b><br><Form name ="form1" Method ="POST" ACTION ="SelfEvalResult.php"></li> <ul class="answers">');

  if($QtsType=='MO')
  {
 	 ?>
  	<li><Input type = "radio" NAME="rd_opt<?=$row["Srno"];?>" Value = "<?=$Option1?>" /> <?=$Option1?></li>
  	<li><Input type = "radio" NAME="rd_opt<?=$row["Srno"];?>" Value = "<?=$Option2?>" /> <?=$Option2?></li>
  	<li><Input type = "radio" NAME="rd_opt<?=$row["Srno"];?>" Value = "<?=$Option3?>" /> <?=$Option3?></li>
  	<li><Input type = "radio" NAME="rd_opt<?=$row["Srno"];?>" Value = "<?=$Option4?>" /> <?=$Option4?></li>  
 	 <?php 
  }
  elseif($QtsType='TF')
  {
  	?>
  	<li><Input type = "radio" NAME="rd_opt<?=$row["Srno"];?>" Value = "True" /> True </li>
  	<li><Input type = "radio" NAME="rd_opt<?=$row["Srno"];?>" Value = "False" /> False </li>
  	
 	 <?php   	
  }
  echo "<br></ul>";
 
  $i++;  
 }
  echo(' 
  <Input type = "hidden" Name = "Exp" Value = "8" />
  <Input type = "submit" class="button" value = "submit" name="submit" onclick="return chk();">
</FORM> </div>'
  		);
}

?>
</div>
<?php
include_once("footer.php");
getFooter(6);
?>   