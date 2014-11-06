<!DOCTYPE html>
<?php

if(!isset($_GET['mission']))
{
	$isMissionSelected = false;
}
else
{
	$isMissionSelected = true;
	$currentMission = $_GET['mission'];
	$dir = "./missions/".$currentMission."/";

	$currentFile = $dir . "info.txt";
	$missionInfo = file($currentFile);

	$currentFile = $dir . "details.txt";
	$missionDetails = file_get_contents($currentFile);
}
?>
<html>
<head>
	<title>Programs and Services</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="util.js"></script>
</head>
<body>
	<div id="bodyContainer">
		
		<?php include 'menu.php';?>
		
		<div class="clear"></div>
		<div id="mainBody">
			<div class="menuButtonContainer">
				<div class="menuButtons">
					<ul>
						<li><a href = "./programs.php?p=home">Home</a></li> 
						<li><a href = "./programs.php?p=center">Center</a></li>
						<li><a href = "./programs.php?p=testimonies">Testimonies</a></li> 
					</ul>
				</div>
			</div>
			<div class="clear"></div>
			<div class="mainCenter">
			<h2>Programs</h2>
			</div>
			<?php if($isMissionSelected) {?>
				<div class="mainLeft">
					<p class="question">Mission Name</p>
					<p class="answer"><?=$missionInfo[0];?></p>
					<p class="question">Mission date</p>
					<p class="answer"><?=$missionInfo[1];?></p>
					<p class="question">Mission Destination</p>
					<p class="answer"><?=$missionInfo[2];?></p>
					<p class="question">Mission Cargo</p>
					<p class="answer"><?=$missionInfo[3];?></p>
					<p class="question">Mission Status</p>
					<?php if($missionInfo[4] == "FAILURE") {?>
						<p class="answerFAIL"><?=$missionInfo[4];?></p>
					<?php } elseif($missionInfo[4] == "SUCCESS") { ?>
						<p class="answerPASS"><?=$missionInfo[4];?></p>
					<?php } ?>
				</div>
				<div class="mainRight">
					<img src="<?=$dir . "img.png"?>" alt="mission picture" id="img">
				</div>
				<div class="mainRight">
					<h3>Mission details</h3>
					<p><?=$missionDetails?></p>
				</div>
			<?php }?>
		</div>
		<div class="clear"></div>
		<?php include 'footer.php';?>
	</div>
</body>
</html>
