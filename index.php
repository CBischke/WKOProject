<!DOCTYPE html>
<?php

	$page = 'home';

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

?>

<html>
<head>
	<title>Chris Bischke -- Homework 2</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="util.js"></script>
	
	<script src="../parser_rules/advanced.js" ></script>
    <script src="../dist/wysihtml5-0.3.0.js" ></script>
    <script type='text/javascript' src='./slideShow/jquery-2.1.1.min.js'> </script>
    <script type='text/javascript' src='./slideShow/jquery.cycle.all.js'> </script>
	 <script type='text/javascript'>
	  $('#slider').cycle({
		  fx:         'scrollHorz',
	      next:       '#next',
	      prev:       '#prev',
	      pager:      '#pager',
	      timeout:     3000,
		  speed:       900
		  });
	  </script>
	  <link rel="stylesheet" type="text/css" href="./slideShow/style1.css">


</head>
<body>
	<div id="bodyContainer">

		<?php include 'menu.php';?>
		
		<div class="clear"></div>
		<div id="mainBody">
			<div class="mainCenter">
				<h2>Whole Kids Outreach</h2>

				<div id="hero">
					<div id="slider">
						<div class="items">
							<img src="./slideShow/img/0.jpg" alt="slide2">
							<div class="info">
								<h2>TITLE</h2>
								<p>Look at all this info about this pic</p>
						     </div> <!--info -->
					    </div> <!--item -->
								
						<div class="items">
							<img src="./slideShow/img/1.jpg" alt="slide2" >
							<div class="info">
								<h2>TITLE 2</h2>
								<p>Look at all of this info about this cool pic</p>
							</div> <!--info -->
						</div> <!--item -->
					</div> <!--slider -->
				</div><!--hero -->

				<?= $content ?>
				
			</div>
		</div>
		<div class="clear"></div>
		<?php include 'footer.php';?>
	</div>
</body>
</html>
