<?php
function connectToDatabase() // create a function for connect database
	    {
	       	$db_server = mysqli_connect('localhost', 'root', 'mysql');

			if (!$db_server) die("Unable to connect to MySQL: " . mysqli_error());
			mysqli_select_db($db_server,'conceptmap_builder')
			or die("Unable to select database: " . mysqli_error());
			return $db_server;
		}

?>