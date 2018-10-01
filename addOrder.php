<?php
	include "connect.php";
	session_start();
try 
{	
	//echo "enter";
	$url=$_REQUEST['url'];
	$name=$_REQUEST['name'];
	$total=$_REQUEST['total'];
	$quantity=$_REQUEST['quantity'];	
	$id = $_SESSION['user_id'];

	//echo $url;
	$stmt=$db->prepare("INSERT INTO Orders(u_id, name, url, quantity, total, done) VALUES(:id, :n, :u, :qty, :tot, 0)");
	//echo $name;
	$stmt->bindParam(':id', $id);
	$stmt->bindParam(':n', $name);
	$stmt->bindParam(':u', $url);
	$stmt->bindParam(':qty', $quantity);
	$stmt->bindParam(':tot', $total);
	//echo "3";
	$stmt->execute();

	echo "Selected item added to the cart!";

}
catch(Exception $e)
{
	echo "Fail.";
}

?>