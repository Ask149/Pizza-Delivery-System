<html>
<head>
<title>Ask?Pizza</title>
<script></script>
<?php session_start(); ?>
<style>
	body{
		justify-content: center;
		align-items: center;
	}
	#orderHolder{
		margin-top: 5%;
		margin-left: 10%;
		margin-right: 10%;
		width: 80%;
		height: auto;
		text-overflow: align: center;
		background-color: white;
	}
	.card{
		box-shadow: 5px 5px 2px grey;
		z-index: 1;
		width: 100%;
		height: 40%;
		border: 1px solid black;
		display: inline-block;
	}
	.bottomcard{
		margin-top: 5%;
		z-index: 1;
		box-shadow: 0px 5px 2px grey;
		width: 95%;
		height: 40%;
		padding-left: 5%;
		border: 1px solid black;
		display: inline-block;
	}

	#image{
		width: 20%;
		height: 100%;
		float: left;
	}
	#info{
		width: 80%;	
		float: right;
		height: 100%;
		text-align: center;
	}
	#name{
		text-align: left;	
		float: left;
		font-size: 30px;
		font-weight: bold;
		width: 60%;
		height: 100%;
		
	}
	#detail{
		font-size: 20px;
		float: right;
		height: 100%;
		width: 40%;
	}
</style>
</head>
<body>
	<div id="orderHolder">
		<?php

		include "connect.php";

		$id = $_SESSION['user_id'];
		$stmt=$db->prepare("SELECT * FROM Orders WHERE u_id=:i AND done=0");
		$stmt->bindParam(':i', $id);
		$stmt->execute();

		while($row=$stmt->fetch(PDO::FETCH_ASSOC)){

			$name =  $row['name'];
			$url = $row['url'];
			$qty =  $row['quantity'];
			$total = $row['total'];
			echo '<div class="card">';
			echo '<div id="image">';
				echo '<img src="'.$url.'" alt="Image Comes Here" style="width: 200px; height:200px; margin-top:27px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.29);">';
			echo '</div>';
			echo '<div id="info">';
				echo '<div id="name"><h4><br>&nbsp&nbsp&nbsp&nbsp&nbsp'.$name.'</h4></div>';
				echo '<div id="detail"><p><br><br><br><br><b>Total</b> : Rs.'.$total.'/-</p></div>';
			echo '</div>';
		echo '</div>';
	}
	?>
	<div class="bottomcard" style="height:80px;">
		<div style="float:left; "><p style="width: 60%;"><h3>Please place your order here <button onclick="placeOrder()">Place Order</button></h3></p></div>
		</div>
	</div>
	<script type="text/javascript">
		function placeOrder(){
		 	  var str="yo";
		 	  var xhttp;
			  if (str.length == 0) { 
			    document.getElementById("txtHint").innerHTML = "";
			    return;
			  }
			  xhttp = new XMLHttpRequest();
			  xhttp.onreadystatechange = function() {
			    if (this.readyState == 4 && this.status == 200) {
			      alert(String(this.responseText));
			      //document.getElementById("txtHint").innerHTML = this.responseText;  
			    }
			  };
			  xhttp.open("POST", "placeOrder.php", true);
			  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			  xhttp.send("q="+str);
		}
	</script>
</body>
</html>