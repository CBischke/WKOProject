<!DOCTYPE html>
<html>
<head>
	<title>Chris Bischke -- Homework 2</title>
	<meta charset="UTF-8">
	
	<script src="util.js"></script>
	

		<link rel="stylesheet" href="stylesheet.css">
		<link rel="stylesheet" type="text/css" href="style.css">
	<script src="./parser_rules/advanced.js" ></script>
    <script src="./dist/wysihtml5-0.3.0.js" ></script>
</head>
<body>
	
	<div id="wysihtml5-editor-toolbar">
	      <header>
        <ul class="commands">
          <li data-wysihtml5-command="bold" title="Make text bold (CTRL + B)" class="command"></li>
          <li data-wysihtml5-command="italic" title="Make text italic (CTRL + I)" class="command"></li>
          <li data-wysihtml5-command="insertUnorderedList" title="Insert an unordered list" class="command"></li>
          <li data-wysihtml5-command="insertOrderedList" title="Insert an ordered list" class="command"></li>
          <li data-wysihtml5-command="createLink" title="Insert a link" class="command"></li>
          <li data-wysihtml5-command="insertImage" title="Insert an image" class="command"></li>
          <li data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h1" title="Insert headline 1" class="command"></li>
          <li data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h2" title="Insert headline 2" class="command"></li>
          <li data-wysihtml5-command-group="foreColor" class="fore-color" title="Color the selected text" class="command">
            <ul>
              <li data-wysihtml5-command="foreColor" data-wysihtml5-command-value="silver"></li>
              <li data-wysihtml5-command="foreColor" data-wysihtml5-command-value="gray"></li>
              <li data-wysihtml5-command="foreColor" data-wysihtml5-command-value="maroon"></li>
              <li data-wysihtml5-command="foreColor" data-wysihtml5-command-value="red"></li>
              <li data-wysihtml5-command="foreColor" data-wysihtml5-command-value="purple"></li>
              <li data-wysihtml5-command="foreColor" data-wysihtml5-command-value="green"></li>
              <li data-wysihtml5-command="foreColor" data-wysihtml5-command-value="olive"></li>
              <li data-wysihtml5-command="foreColor" data-wysihtml5-command-value="navy"></li>
              <li data-wysihtml5-command="foreColor" data-wysihtml5-command-value="blue"></li>
            </ul>
          </li>
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
	
	
	
	
	
	
	<form action="testpage.php" method="post">
    <section>
      <textarea id="wysihtml5-editor" name="wysihtml5-textarea" spellcheck="false" wrap="off" autofocus placeholder="Enter something ...">
	<div id="bodyContainer">

		<?php include 'menu.php';?>
		
		<div class="clear"></div>
		<div id="mainBody">
			<div class="mainCenter">
				<h2>Whole Kids Outreach</h2>
				<img src="./img/homeImg.jpg" alt="A beautiful rocket explosion." id="img">
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
	   </textarea>
   </section>
   <input type="submit" value="Submit form">
   </form>
   
    <script>
		
      var editor = new wysihtml5.Editor("wysihtml5-editor", {
        toolbar:     "wysihtml5-editor-toolbar",
        stylesheets: ["http://yui.yahooapis.com/2.9.0/build/reset/reset-min.css", "css/editor.css"],
        parserRules: wysihtml5ParserRules
      });
      
      editor.on("load", function() {
        var composer = editor.composer;
		
        composer.selection.selectNode(editor.composer.element.querySelector("h1"));
      });
    </script>
</body>
</html>
