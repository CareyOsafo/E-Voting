<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$position = $_POST['position'];
		$platform = $_POST['platform'];
		$filename = $_FILES['photo']['name'];

		//photo upload
		$image = addslashes(file_get_contents($_FILES['photo']['tmp_name']));
		$image_name = addslashes($_FILES['photo']['name']);
		$image_size = getimagesize($_FILES['photo']['tmp_name']);
		$photo_location = "../images" . $_FILES["photo"]["name"];
					   
		if(!empty($filename)){
			move_uploaded_file($_FILES["photo"]["tmp_name"], "../images" . $_FILES["photo"]["name"]);
		}

		$sql = "INSERT INTO candidates (position_id, firstname, lastname, photo, platform) VALUES ('$position', '$firstname', '$lastname', '$photo_location', '$platform')";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Candidate added successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

	}
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}

	header('location: candidates.php');
?>