<?php

$servername = "localhost";
$username = "root";
$password = "";

try 
{
	$db = new PDO("mysql:host=$servername;dbname=wtl;", $username, $password);
	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	//echo "Connected";
}
catch(PDOException $e)
{
	echo "Error has occured!\n" . $e->getMessage();
}

?>
