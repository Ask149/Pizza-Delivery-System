<?php

session_start();

include "connect.php";

$id = $_SESSION['user_id'];

$stmt2 = $db->prepare("SELECT * FROM currUser WHERE u_id = :i;");
    $stmt2->bindParam(':i', $id);  
    $stmt2->execute();

    $row = $stmt2->fetch(PDO::FETCH_ASSOC);
    $logintime = $row['date_time'];  
    $uname = $row['username'];
   	echo "$uname";

    if ($id)
    {
     	$stmt2 = $db->prepare("INSERT INTO deletedUser VALUES(:i, :u, :lt,now());");
     	$stmt2->bindParam(':i', $id);
     	$stmt2->bindParam(':u', $row['email']);
      $stmt2->bindParam(':lt', $logintime);	
     	$stmt2->execute();

      $stmt2 = $db->prepare("DELETE FROM currUser WHERE u_id = :i;");
      $stmt2->bindParam(':i', $id);  
      $stmt2->execute();

      unset($_SESSION['user_id']);

     	header('Location: login.html');
     }
     else
     {
      unset($_SESSION['user_id']);
      header('Location: login.html');
     }

?>