<?php

include "connect.php";

try 
{	

	//echo "hi";
	$q = $_REQUEST['q'];

	//echo "$q";
	$stmt = $db->prepare("SELECT * FROM Customer WHERE username = :uname;");
	$stmt->bindParam(':uname', $q);
	$stmt->execute();

	$valid = "";

	if($row = $stmt->fetch(PDO::FETCH_ASSOC))
	{
		$valid = "Username already exists.";
	}
	else
	{
		if (strpos($q, '@') == false)
		{
			$valid = "Invalid username.";
		}
		else
		{
			$pos_at = strpos($q, '@');
			$pos_dot = strrpos($q, '.');

			if ($pos_dot<$pos_at)
				$valid = "Invalid username.";
			else
				$valid = "Username is valid.";	
		}
	}	

	echo $valid === "" ? "Username is valid" : $valid;


}
catch(Exception $e)
{
	echo "Error has occured!";
}

?>
