<?php
session_start();
$con = mysql_connect('localhost', 'root', '');
if (!$con)
{
  die('Could not connect: ' . mysql_error());
}
//Connecting...
mysql_select_db("wko",$con);

$password = $_POST['password'];
$username = $_POST['username'];
$newPassword = sha1($password);

if($password == null || $username == null)
{
	//user didnt enter either a username or password
	header('Location: login.php?error=1');
	die;
}
else
{
	$getUser = mysql_query("SELECT * FROM `account` WHERE `Name` = '" . stripcslashes($username) . "'");
	//get all the rows with that username
	$test = mysql_num_rows($getUser);
	//if the rows return atleast one value, the username exsits and check to see if the password works
	if($test >0)
	{

		$u = mysql_fetch_array($getUser);
		if($u['NewPassword'] == sha1($password))
		{
			//password and the username match
			//as well as the encrypted password
			$_SESSION['id'] = $u['ID'];
			header('Location: ./admin/');
		}
		else if($u['Password'] == $password)
		{
			//username and password match
			//but the user has no encrypted password. set the new encrypted and change the old password to null
			$iq = "UPDATE `account` SET `NewPassword` = '$newPassword', `Password` ='' WHERE `Name` = '".$u['Name']."'";
			mysql_query($iq, $con) or die('MySQL Error:'.mysql_error($con));

			$_SESSION['id'] = $u['ID'];
			header('Location: ./admin/');
		}
		else
		{
			//password didn't match
			header('Location: login.php?error=2');
			die;
		}

	}
	else
	{
		//username did not return a row, so it does not exsits
		header('Location: login.php?error=2');
		die;
	}

	mysql_free_result($getUser);
}

mysql_close($con);
?>