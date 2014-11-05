<!DOCTYPE html>
<?php
$error = "";
if(isset($_POST['send']))
{

	$subject = "Periapsis Space Company Website";
	$name = $_POST['name'];
	$email = $_POST['email'];
	$msg = ereg_replace("\\\'", "'", $_POST['message']);
	$msg = ereg_replace('\\\"', "\"", $msg);
	$message1 = "From: $name\nEmail: $email\n\nMessage:\n$msg";
	
	$file = 'contactsBackup.txt';
	$append = file_get_contents($file);
	$append .= $_POST['email']."\n";
	file_put_contents($file, $append);



	//if this was a real webiste, I would put in multiple email adresses for each category
	if($_POST['emailTo'] == "contract")
		$youremail = "CBischke10@winona.edu";
	else if($_POST['emailTo'] == "complaint")
		$youremail = "Managers want to reduce email complaints by 50%, I found a way to reduce it by 100%";
	else if($_POST['emailto'] == "website")
		$youremail = "CBischke10@winona.edu";
	else
		$youremail = "CBischke10@winona.edu";

	if(@mail($youremail, $subject, $message1, "From: $email\r\nReply-to: $email\r\n"))
	{
	  $error = "Mail Sent Successfully";
	}else{
	  $error = "Mail Not Sent";
	}
	

	if($_POST['copy'] == "yes")
	{
		mail($email, $subject, $message1, "From: $email\r\nReply-to: $email\r\n");
	}
}
?>
<html>
<head>
	<title>Chris Bischke -- Homework 2</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div id="bodyContainer">

		<?php include 'menu.php';?>
		
		<div class="clear"></div>
		<div id="mainBody">
			<div class="mainCenter">
				<p id="error"><?=$error?></p>
				<form class="generalForm" method="POST">
					<p>Name:</p> 
					<input type="text" name="name"><br>
					<p>Email addess:</p>
					<input type="text" name="email"><br>
					<p>Message:</p>
					<textarea name="message" cols="50" rows="12"></textarea><br>
					<p>Area of concern:</p>
					<select name="emailTo">
					  <option value="contract">Contract</option>
					  <option value="complaint">Complaint</option>
					  <option value="website">Website</option>
					</select>
					<p>Copy of email?</p>
					<select name="copy">
					  <option value="yes">Yes</option>
					  <option value="no">No</option>
					</select>
					<br>
					<input type="submit" value="send" name="send"><br/>
				</form>
			</div>
		</div>
		<div class="clear"></div>
		<?php include 'footer.php';?>
	</div>
</body>
</html>
