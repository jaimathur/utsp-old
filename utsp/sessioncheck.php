<?php
session_start();
$_SESSION['user']="jayshah";
if(!isset($_SESSION['user']))
{
?>
 <script>
	alert("You are not logged in !!");
	 window.location = "../login.php";
  </script>
<?php 
}
?>