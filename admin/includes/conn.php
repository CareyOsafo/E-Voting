<?php
	$conn = new mysqli('localhost', 'root', '', 'gnpcssa_election');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>