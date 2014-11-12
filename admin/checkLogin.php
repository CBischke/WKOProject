<?php
session_start();
$uid = $_SESSION['id'];
$username = 'null';


$con = mysql_connect('localhost', 'root', '');
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }
//Connecting...
mysql_select_db("wko",$con);
$query = "SELECT * FROM `account` WHERE `ID` = '$uid'";
$result = mysql_query($query, $con);
//the id is there, user has logged in
if(mysql_num_rows($result) > 0)
{
	$u = mysql_fetch_array($result, MYSQL_ASSOC);
	$username = $u['Name'];
}
else
{
	header("Location: ../login.php?logout=not");
	die;
}
?>