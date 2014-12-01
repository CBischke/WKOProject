<!DOCTYPE html>
<?php

include './checkLogin.php';

if(isset($_POST['submit']))
{
	$page = $_GET['page'];

	$con = mysql_connect('localhost', 'root', '');
	if (!$con)
	{
	  die('Could not connect: ' . mysql_error());
	}
	//Connecting...
	mysql_select_db("wko",$con);

	$content = $_POST['wysihtml5-textarea'];
	$query = "UPDATE `content` SET `Content` = '$content' WHERE `Page` = '$page'";
	$result = mysql_query($query, $con);
}

if(isset($_GET['page']))
{
	$page = $_GET['page'];

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
else {
	
	$page = 'About';
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
	<title>edit</title>
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
	<div id="editMainBody">
	
	<div class="clear"></div>
	
	
	<form action="edit.php?page=<?=$page;?>" method="post">
	<div id="bodyContainer">
	<div id="wysihtml5-editor-toolbar">
	      <header>
        <ul class="commands">
          
      
          <li data-wysihtml5-command="insertUnorderedList" title="Insert an unordered list" class="command"></li>
    
          <li data-wysihtml5-command="createLink" title="Insert a link" class="command"></li>
          <li data-wysihtml5-command="insertImage" title="Insert an image" class="command"></li>
          <li data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h1" title="Insert headline 1" class="command"></li>
          <li data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h2" title="Insert headline 2" class="command"></li>

          <li data-wysihtml5-command="insertSpeech" title="Insert speech" class="command"></li>
          <li data-wysihtml5-action="change_view" title="Show HTML" class="action"></li>
        </ul>
      </header>
      <div data-wysihtml5-dialog="createLink" style="display: none;">
        <label>
          Link:
          <input data-wysihtml5-dialog-field="href" value="http://">
        </label>
        <a data-wysihtml5-dialog-action="save">OK</a>&nbsp;<a data-wysihtml5-dialog-action="cancel">Cancel</a>
      </div>

      <div data-wysihtml5-dialog="insertImage" style="display: none;">
        <label>
          Image:
          <input data-wysihtml5-dialog-field="src" value="http://">
        </label>
        <a data-wysihtml5-dialog-action="save">OK</a>&nbsp;<a data-wysihtml5-dialog-action="cancel">Cancel</a>
      </div>
    </div>

		<textarea id="wysihtml5-editor" name="wysihtml5-textarea" spellcheck="false" wrap="off" autofocus placeholder="Enter something ...">
			<?=$content;?>
		</textarea>

	</div>
	   
   
   <input type="submit" value="Submit form" name="submit">
   </form>
   
   </div>
   </div>
    <script>
		
      var editor = new wysihtml5.Editor("wysihtml5-editor", {
        toolbar:     "wysihtml5-editor-toolbar",
        stylesheets: ["http://yui.yahooapis.com/2.9.0/build/reset/reset-min.css", "editor.css"],
        parserRules: wysihtml5ParserRules
      });
      
      editor.on("load", function() {
        var composer = editor.composer;
		
        composer.selection.selectNode(editor.composer.element.querySelector("h1"));
      });
    </script>
</body>
</html>
