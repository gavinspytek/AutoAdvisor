<?php
$con=mysqli_connect("localhost","root","","autoadvisor",4000);
if(mysqli_connect_errno()) {
	die("Failed to connect with MySQL: ". mysqli_connect_error());
}

//Calls math classes and credits
$sql = "SELECT class_title, class_credits FROM maclasses";
$result = mysqli_query($con,$sql);
$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
$sqlDesc = "SELECT class_des FROM maclasses";
$resultDesc = mysqli_query($con,$sqlDesc);


?>