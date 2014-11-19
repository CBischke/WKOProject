<!DOCTYPE html>

<?php

if (isset($_POST["wysihtml5-textarea"]))
{
$testarea = $_POST["wysihtml5-textarea"];
}
?>

<html>
  <head>
	<link rel="stylesheet" href="http://yui.yahooapis.com/2.9.0/build/reset/reset-min.css">
    <link rel="stylesheet" href="stylesheet.css">
	<script src="./parser_rules/advanced.js" ></script>
    <script src="./dist/wysihtml5-0.3.0.js" ></script>
	
    <meta charset="utf-8">
	<title>example</title>
	</head>
	
	<body>
	
	<p>
	<?= $testarea ?>
	</p>
	
	
	
	
	</body>
	</html>