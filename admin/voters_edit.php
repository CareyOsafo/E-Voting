<?php
	include 'includes/session.php';

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
		$staffid = $_POST['staffid'];
		$voterid = $_POST['edit_voterid'];
		$staffname = $_POST['staffname'];
		$password = $_POST['password'];

		$sql = "SELECT * FROM voters WHERE id = $id";
		$query = $conn->query($sql);
		$row = $query->fetch_assoc();

		if($password == $row['password']){
			$password = $row['password'];
		}
		else{
			$password = password_hash($password, PASSWORD_DEFAULT);
		}

		$sql = "SELECT * FROM voters WHERE voters_id=$voterid";
		$query = $conn->query($sql);
		$row = $query->fetch_assoc();

		if($query->num_rows > 0){
			$_SESSION['error'] =  'Voter ID is already assigned, try again!';
		}
		else{
		$sql = "UPDATE voters SET staffname = '$staffname', staffid = '$staffid', voters_id = '$voterid', password = '$password' WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Voter updated successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	}


	else{
		$_SESSION['error'] = 'Fill up edit form first';
	}

	header('location: voters.php');

?>