<?php 
ini_set('display_errors', true);
include_once("../sessioncheck.php");
include_once("../util/system.php");

$UploadFile = $_SESSION['user'];
$folder = USER_ROOT."/".$UploadFile."/Experiment2/";
selectDatabase();
$sql = "SELECT  `FName` ,  `LName` ,  `EmailId` FROM  `usermaster` WHERE  `UserName` ='".$UploadFile."'";
$result = mysql_query($sql);
while($row = mysql_fetch_array($result)) {
	   $m_fname= $row['FName'] ;
	   $m_lname= $row['LName'];
	   $email = $row['EmailId'];
}
basename(__DIR__);

$name=$m_fname."  ".$m_lname;

$title='UTSP VLab: Report for '.basename(__DIR__);
$message= 'Hi '.$name.",\n Please find the report for the ".basename(__DIR__)." in the attachment.\n\n\n Thanks,\n Virtual Labs,\n Urban Transporation Systems Engineering,\n IIT Bombay";

//require_once "Mail/Mail.php";

require_once('../PHPMailer/class.phpmailer.php');
$from = "utsp@vlabs.ac.in";
$to = $email;
$subject = $title;
$body = 'Hi,<br>'.$message."<br><br> Thanks,<br>".$name;
 

$mail = new PHPMailer(); // create a new object
$mail->IsSMTP(); // enable SMTP
$mail->SMTPDebug = 1; // debugging: 1 = errors and messages, 2 = messages only
$mail->SMTPAuth = true; // authentication enabled
$mail->SMTPSecure = 'ssl'; // secure transfer enabled REQUIRED for GMail
$mail->Host = "smtp.gmail.com";
$mail->Port = 465; // or 587
$mail->IsHTML(true);
$mail->Username = 'utsp@vlabs.ac.in';
$mail->Password = 'utspvlab';
$mail->SetFrom($from);
$mail->Subject = $subject;
$mail->Body = $body;
$mail->AddAddress('utsp@vlabs.ac.in');
$mail->AddAttachment($folder.'RegressionAnalysis'.date("Ymdhms").'.pdf'); 
$mail->AddAttachment($folder."DataRegr.xls"); 

 if(!$mail->Send())
    {
        echo("<p>" . $mail->getMessage() . "</p>");
    } 
    
		
?>