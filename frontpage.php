<?php 

  session_start();

?>
<!DOCTYPE html>
<html>
<head>
	<title>ASK?Pizza</title>
	<link rel="stylesheet" type="text/css" href="frontpage.css">
  <script>
  window.onscroll = function() {myFunction()};
  var navbar = document.getElementById("navbar");
  var sticky = navbar.offsetTop;
  function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
  }
</script>

</head>
<body style="background-color:#DEB887;">
<div id="navbar">
  <a class="active" href="home_page_frame.html" target="navigate">Home</a>
  <a href="index.php" target="navigate">Category</a>
  <a href="list.php?name=1" target="navigate">Menu</a>
  <a href="orderPage.php" target="navigate">My Cart</a>
  <!--a href="#contact" target="navigate">Contact</a-->
  <a  style="float: right;" class="active" href="logout.php">Logout</a>
</div>
<!-- <ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="#menu">Menu</a></li>
  <li><a href="#order">Order Now!</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="#track">track</a></li>
  <li style="float: right;"><a class="active" href="#login">Login</a></li>
</ul> -->
<iframe src="/WTL/home_page/home_page_frame.html" width="100%" height="700" scrolling="yes" name="navigate" id="navigate">
<p> iframes are not supported by this browser </p>
</iframe>
</body>
</html>