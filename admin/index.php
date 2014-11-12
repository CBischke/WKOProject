<!DOCTYPE html>
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
	header("Location: ./login.php?logout=not");
	die;
}
//END CONNECTION QUERY.
mysql_close($con);


?>
<html>
<head>
	<title>Admin</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
	<div id="bodyContainer">

		<?php include '../menu.php';?>
		
		<div class="clear"></div>
		<div id="mainBody">
			<div class="mainCenter">
				<p>Welcome <?=$username?> | <a href="./processLogout.php">Logout</a></p>
			</div>
		</div>
		<div class="clear"></div>
		<?php include '../footer.php';?>
	</div>
</body>
</html>
