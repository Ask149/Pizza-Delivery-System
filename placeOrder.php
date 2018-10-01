<?php
	include "connect.php";
	session_start();
try 
{
	$id = $_SESSION['user_id'];
	//echo $id;

	$stmt=$db->prepare("UPDATE Orders SET done=1 WHERE u_id=:i AND done=0");
	$stmt->bindParam(':i', $id);
	$stmt->execute();
	
	echo "Order placed!";
}
catch(Exception $e)
{
	echo "Fail.";
}
?>