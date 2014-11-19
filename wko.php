<!DOCTYPE html>
<?php
if(isset($_GET['p']))
{
	$page = $_GET['p'];

	$con = mysql_connect('localhost', 'root', '');
	if (!$con)
	{
	  die('Could not connect: ' . mysql_error());
	}
	//Connecting...
	mysql_select_db("wko",$con);
	$query = "SELECT * FROM `content` WHERE `Page` = '$page'";
	$result = mysql_query($query, $con);
	//the id is there, user has logged in
	if(mysql_num_rows($result) > 0)
	{
		$pageInfo = mysql_fetch_array($result, MYSQL_ASSOC);
		$content = $pageInfo['Content'];
	}
}
?>
<html>
<head>
	<title><?=$page?></title>
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
			<?=$content?>
			</div>
		</div>
		<div class="clear"></div>
		<?php include 'footer.php';?>
	</div>
</body>
</html>
