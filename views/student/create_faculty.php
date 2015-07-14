<?php
$servername = "localhost";
$username = "root";
$password = "mysql";
$dbname = "conceptmap_builder";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT * from users";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "id: " . $row["user_id"]. " - Name: " . $row["user_name"]. " " . $row["user_type"]. "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>