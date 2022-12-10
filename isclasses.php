<?php
$con=mysqli_connect("localhost","root","","autoadvisor",4000);
if(mysqli_connect_errno()) {
	die("Failed to connect with MySQL: ". mysqli_connect_error());
}

//Calls is classes and credits
$sql = "SELECT class_title, class_credits FROM isclasses";
$result = mysqli_query($con,$sql);
?>