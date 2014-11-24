<!DOCTYPE html>
<?php

include './checkLogin.php';
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

		<?php include './menu.php';?>
		
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
