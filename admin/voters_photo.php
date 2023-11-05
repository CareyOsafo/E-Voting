<?php
	include 'includes/session.php';

	if(isset($_POST['upload'])){
		$id = $_POST['id'];
		$filename = $_FILES['photo']['name'];
		$image = addslashes(file_get_contents($_FILES['photo']['tmp_name']));
		$image_name = addslashes($_FILES['photo']['name']);
		$image_size = getimagesize($_FILES['photo']['tmp_name']);
	
		$photo_location = "../images" . $_FILES["photo"]["name"];

		if(!empty($filename)){
			move_uploaded_file($_FILES["photo"]["tmp_name"], "../images" . $_FILES["photo"]["name"]);
		}
		
		$sql = "UPDATE voters SET photo = '$photo_location' WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Photo updated successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

	}
	else{
		$_SESSION['error'] = 'Select voter to update photo first';
	}

	header('location: voters.php');
?>