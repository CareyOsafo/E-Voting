<?php
	include 'includes/session.php';
	include 'includes/conn.php';

	if(isset($_POST['savesetting'])){
		$date= date("Y-m-d H:i:s");
		$title=$_POST['title'];
		$startdate=$_POST['startdate'];
		$enddate=$_POST['enddate'];
		$isopen=$_POST['isopen'];
		$addedby = $_SESSION['admin'];

        $update= "UPDATE election_settings SET election_title='$title', startdate='$startdate', enddate='$enddate', election_status='$isopen',dateadded='$date',addedby='$addedby'";
        $conn->query($update);

		$_SESSION['success'] = 'Election details updated successfully';
		
	}
	else{
		$_SESSION['error'] = "Fill up config form first";
	}

	header('location: election_config.php');

?>