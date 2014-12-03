<!DOCTYPE html>
<?php
session_start();
$error = "";
if(isset($_GET['error']))
{
	if($_GET['error'] == 1)
		$error = "The username or password field was blank. Please try again.";
	if($_GET['error'] == 2)
		$error = "The username or password was invaild. Please try again.";
	if($_GET['error'] == 3)
		$error = "You've logged in successfully.";
}

if(isset($_GET['logout']))
{
	if($_GET['logout'] == 'yes')
		session_destroy();
	if($_GET['logout'] == 'not')
	{
		$error = "Log in please.";
		session_destroy();
	}
}
?>
<html>
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="./style.css">
</head>
<body>
	<div id="bodyContainer">

		<?php include './menu.php';?>
		
		<div class="clear"></div>
		<div id="mainBody">
			<div class="mainCenter">
				<p id="error"><?=$error?></p>
				<form class="generalForm" action="processLogin.php" method="POST">
					<p>Username:</p> 
					<input type="text" name="username" placeholder="username"><br/>
					<p>Password:</p>
					<input type="password" name="password" placeholder="password"><br/>
					<input type="submit" value="submit" name="send"><br/>
					<br/>
				</form>
			</div>
		</div>
		<div class="clear"></div>
		
	</div>
</body>
</html>
