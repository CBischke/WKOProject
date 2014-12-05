<!DOCTYPE html>
<?php

include './checkLogin.php';

$con = mysql_connect('localhost', 'root', '');
if (!$con)
{
  die('Could not connect: ' . mysql_error());
}
//Connecting...
mysql_select_db("wko",$con);

if(isset($_POST['Approve']))
{
	$id = $_POST['ID'];

	$query = "UPDATE `testimony` SET `Show` = '1' WHERE `ID` = '$id' ";
	mysql_query($query, $con);
}
else if (isset($_POST['Dismiss']))
{
	$id = $_POST['ID'];

	$query = "DELETE FROM `testimony` WHERE `ID` = '$id'";
	mysql_query($query, $con);
}

$query = "SELECT * FROM `testimony` WHERE `Show` = '0' ORDER BY ID DESC";
$results = mysql_query($query, $con);

?>

<html>
<head>
	<title>Messages</title>
	<meta charset="UTF-8">
	
	<script src="./util.js"></script>
	

		<link rel="stylesheet" href="./stylesheet.css">
		<link rel="stylesheet" type="text/css" href="../style.css">
	<script src="./parser_rules/advanced.js" ></script>
    <script src="./dist/wysihtml5-0.3.0.js" ></script>
</head>
<body>

<div id="bodyContainer">
	<?php include './menu.php';?>
	
	<div class="clear"></div>
	<div id="mainBody">
	<div class="clear"></div>

	<?php
	while($pageInfo = mysql_fetch_array($results))
	{
	  	$content = $pageInfo['Content'];
	  	$content = preg_replace('{^(<br(\s*/)?>)+}i', '', $content);
	  	$name = $pageInfo['Name'];
	  	$id = $pageInfo['ID'];
  	?>


		<form class='generalForm' enctype='multipart/form-data' action='' method='POST'>
			<p><?=$name?></p>
			<textarea name='Content1' cols=50 rows=5 readonly>"<?=strip_tags($content)?>"</textarea>
			<textarea name='Content' cols=2 rows=2 readonly style='display:none;'>"<?=$pageInfo['Content']?>"</textarea>
			<div class='line'></div>
			<input type='hidden' name='Name' value='<?=$name?>'>
			<input type='hidden' name='ID' value='<?=$id?>'>
			<input type='submit' value='Approve' name='Approve'><br/>
			<input type='submit' value='Dismiss' name='Dismiss'><br/>
		</form>
				
	<?php } ?>

   </div>
   </div>
</body>
</html>
