<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$datetime= date("Y-m-d H:i:s");
		$voterid = mysqli_real_escape_string($conn, $_POST['voterid']);
		$firstname = mysqli_real_escape_string($conn, $_POST['firstname']);
		$lastname = mysqli_real_escape_string($conn, $_POST['lastname']);
		$staffid = mysqli_real_escape_string($conn, $_POST['staffid']);
		$staffname =$firstname.' '.$lastname;
		$password = password_hash($_POST['password'], PASSWORD_DEFAULT);

		       //phpto upload
			   $image = addslashes(file_get_contents($_FILES['photo']['tmp_name']));
			   $image_name = addslashes($_FILES['photo']['name']);
			   $image_size = getimagesize($_FILES['photo']['tmp_name']);
			   move_uploaded_file($_FILES["photo"]["tmp_name"], "../images" . $_FILES["photo"]["name"]);
			   $photo_location = "../images" . $_FILES["photo"]["name"];


		/*$filename = mysqli_real_escape_string($conn, $_FILES['photo']['name']);
		if(!empty($filename)){
			move_uploaded_file($_FILES['photo']['tmp_name'], '../images/'.$filename);	
		}
		generate voters id
		$set = '123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
		$voter = substr(str_shuffle($set), 0, 15);*/


		$sql = "SELECT * FROM voters WHERE staffid=$staffid";
		$query = $conn->query($sql);
		$row = $query->fetch_assoc();

		if(($voterid == $row['voters_id']) || ($staffid == $row['staffid'])){
			$_SESSION['error'] =  'Voter ID or Staff ID is already assigned, try again!';
		}
		elseif (($voterid != $row['voters_id']) && ($staffid != $row['staffid'])){

		$sql = "INSERT INTO voters (voters_id, password, staffname, staffid, photo, date_added, isvalid) VALUES ('$voterid', '$password', '$staffname', '$staffid', '$photo_location', '$datetime', 'yes')";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Voter added successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
}
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}

	header('location: voters.php');
?>
