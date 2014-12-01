<!DOCTYPE html>
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
							<img src="./slideShow/img/homeImg.jpg" alt="slide2">
							<div class="info">
								<h2>TITLE</h2>
								<p>Look at all this info about this pic</p>
						     </div> <!--info -->
					    </div> <!--item -->
								
						<div class="items">
							<img src="./slideShow/img/homeImg.jpg" alt="slide2" >
							<div class="info">
								<h2>TITLE 2</h2>
								<p>Look at all of this info about this cool pic</p>
							</div> <!--info -->
						</div> <!--item -->
					</div> <!--slider -->
				</div><!--hero -->


				<p>
					Yes. We are a make believe space company living in a real virtual made up universe. You may ask, what universe? And to that question is an easy answer: <a href="https://kerbalspaceprogram.com/" target="New Window">The Kerbal Space Program Universe!</a> 
					<br>
					Here at Periapsis Space Program we design, build, test, crash and barely fly interstellar rockets! Most of our scientists have gone to school and have degrees in the 3rd burn, so we might not know calculus, but we certainly know how to guess and check. 
				</p>
			</div>
			<div class="mainLeft">
				<h3>Dedicated to space. Dedicated to you.</h3>
				<p>
					Do you need a package delivered to the moon? If yes, just call us! Is this delivery time sensitive? If yes, probably call someone else!
				</p>
				<p>
					Our mom's have said that,
				</p>
				<p>
					<span class="imp">"We have been the world's leader in interstellar rocketry for the past twenty years." </span> 
				</p>
				<p>
					Wow! Thats a long time. Imagine where we will be in the next twenty years -- maybe the company headquarters will finally invest in a coffee machine.
				</p>
			</div>
			<div class="mainRight">
				<h3>Our Company Values:</h3>
				<p>Space</p>
				<p>Rockets</p>
				<p>Explosions</p>
				<p>Your Money</p>
				<p>Therapy</p>
			</div>
		</div>
		<div class="clear"></div>
		<?php include 'footer.php';?>
	</div>
</body>
</html>
