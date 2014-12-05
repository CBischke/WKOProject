<!DOCTYPE html>
<?php

$con = mysql_connect('localhost', 'root', '');
if (!$con)
{
  die('Could not connect: ' . mysql_error());
}
//Connecting...
mysql_select_db("wko",$con);

if(isset($_POST['Send']))
{
	$name = addslashes($_POST['name']);
	$content = addslashes(nl2br($_POST['Content']));
	$error = "Your message has been sent";

	mysql_real_escape_string($name);
	mysql_real_escape_string($content);

	$query = "INSERT INTO `testimony` (`Name`, `Content`) VALUES('$name', '$content')";
	mysql_query($query, $con) or die;
}
else
{
	$error = "";
}






$query = "SELECT * FROM `testimony` WHERE `Show` = '1' ORDER BY `ID` DESC";
$result = mysql_query($query, $con);

?>
<html>
<head>
	<title>Testimony</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="util.js"></script>
</head>
<body>
	<div id="bodyContainer">
		
		<?php include 'menu.php';?>
		
		<div class="clear"></div>
		<div id="mainBody">
			<div class="clear"></div>
			<div class="mainCenter">
				<?php
					while($pageInfo = mysql_fetch_array($result))
					{	
						$content = $pageInfo['Content'];
						$content = preg_replace('{^(<br(\s*/)? >)+}i', '', $content);
						$name = $pageInfo['Name'];
				?>
					<p><?=$content?></p>
					<h3><?=$name?></h3>
				<?php } ?>

			</div>
			<div class = "mainCenter">
				<p id="error"><?=$error?></p>
				<form class="generalForm" action = "" method="POST">
					<p>Name:</p> 
					<input type="text" name="name"><br>
					<p>Message:</p>
					<textarea name="Content" cols="50" rows="12"></textarea><br>
					<br>
					<input type="submit" value="Send" name="Send"><br/>
				</form>
			</div>
		</div>
		<div class="clear"></div>
		<?php include 'footer.php';?>
	</div>
</body>
</html>
