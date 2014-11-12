<?php
session_start();

$_SESSION['id'] = "";

session_destroy();
session_unset();

header("location: ../login.php");
?>