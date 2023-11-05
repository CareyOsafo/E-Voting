<?php
	include 'includes/session.php';
	include 'includes/conn.php';

	$return = 'home.php';
	if(isset($_GET['return'])){
		$return = $_GET['return'];
	}

	if(isset($_POST['save'])){
		$title = $_POST['title'];

		$date= date("Y-m-d H:i:s");
		$title=$_POST['title'];
		$startdate=$_POST['startdate'];
		$enddate=$_POST['enddate'];
		$isopen=$_POST['isopen'];
		$addedby = $_SESSION['admin'];

        $update= "UPDATE election_settings SET election_title='$title', startdate='$startdate', enddate='$enddate', isactive='$isopen',dateadded='$date',addedby='$addedby'";
        $conn->query($update);

		$file = 'config.ini';
		$content = 'election_title = '.$title;

		file_put_contents($file, $content);

		$_SESSION['success'] = 'Election details updated successfully';
		
	}
	else{
		$_SESSION['error'] = "Fill up config form first";
	}

	header('location: '.$return);

?>