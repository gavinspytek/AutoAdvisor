<?php

	$con=mysqli_connect("localhost","root","","autoadvisor",4000);
    if(mysqli_connect_errno()) {
        die("Failed to connect with MySQL: ". mysqli_connect_error());
    }
	//Calls math classes and credits
	$sql = "SELECT class_title, class_credits FROM csclasses";
	$result = mysqli_query($con,$sql);

	$db = $con;
	$tableName = "csclasses";
	$columns = ['class_id', 'class_title','class_credits','class_des',
	'class_fall', 'class_winter','class_spring','class_summer','class_prereq','class_OffAsNeed'];
	$classCredits = ['class_title', "class_credits"];

?>