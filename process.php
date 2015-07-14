<?php
// include the configs / constants for the database connection
require_once("config/db.php");

// load the login class
require_once("classes/Login.php");
require_once("views/function.php");

// create a login object. when this object is created, it will do all login/logout stuff automatically
// so this single line handles the entire login process. in consequence, you can simply ...
$login = new Login();

// ... ask if we are logged in here:
if ($login->isUserLoggedIn() == true) {
    // the user is logged in. you can do whatever you want here.
    // for demonstration purposes, we simply show the "you are logged in" view.
	if(isset($_POST['json_obj']))
{    echo $_POST['json_obj']."<br><br>";
    $map=$_POST['json_obj'];
 	$ma_name=$_POST['map_name'];
 

$servername = "localhost";
$username = "root";
$password = "mysql";
$dbname = "conceptmap_builder";
?>
<html>
	<body>
		<form action="#"  method="post">
ConceptMap Name:<br>
<input type="text" name="map_name">
<br>
<input type="text" name="json_obj" value="<?php echo $map; ?>" readonly>
<button type="submit" value="submit">submit</button>
		</form>

	</body>
</html>
<?php
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection setting doest not match. plz check \'process.php\'<br>Connection failed: " . $conn->connect_error);
} 
 $USR= $_SESSION['user_name'];
//
$sql_map = "INSERT INTO `concept-maps` (`map_id`, `map_data`, `map_created_by`, `created_on`) VALUES (NULL,'$map','$USR', CURRENT_TIMESTAMP)";

if ($conn->query($sql_map) === TRUE) {
    $last_map = $conn->insert_id;
    echo "<i>Map</i> created successfully. Last inserted map ID is: " . $last_map."<br>";
} else {
    echo "Error: " . $sql_map . "<br>" . $conn->error;
}
 
 $map_decod=json_decode($map,true);
 
// var_dump($map_decod);

$nodes = $map_decod["nodes"];
$count_nodes=count($nodes);
for($nodes_count=0;$nodes_count<$count_nodes;$nodes_count++)
{
echo "<br>NAME:-".$nodes[$nodes_count]['name']."<br>";
    $name=$nodes[$nodes_count]['name'];
echo "ID:-".$nodes[$nodes_count]['id']."<br>";
    $id=$nodes[$nodes_count]['id'];
$sql_node = "INSERT INTO `nodes`(`map_id`, `node_id`, `nodeID`, `nodeName`) VALUES ($last_map,NULL,$id,'$name')";
if ($conn->query($sql_node) === TRUE) {
    $last_id = $conn->insert_id;
    echo "<i>NODE</i> created successfully. Last inserted ID is: " . $last_id."<br>";
} else {
    echo "Error: " . $sql_node . "<br>" . $conn->error;
}
  
//--------------input connectors--------------    
$i_conn=$nodes[$nodes_count]['inputConnectors'];
$count_i_conn=count($i_conn);
for($i_conn_count=0;$i_conn_count<$count_i_conn;$i_conn_count++)
{
    echo "in connector".$i_conn_count.":_".$i_conn[$i_conn_count]['name']."<br>";
    $nme=$i_conn[$i_conn_count]['name'];
    $sql_node = "INSERT INTO input_connection(`node_id`, `connector_code`, `connector_name`) VALUES ($last_id,$i_conn_count,'$nme')";
if ($conn->query($sql_node) === TRUE) {
    $last_inconnector = $conn->insert_id;
    echo "<i>Input connector</i> created successfully. Last inserted ID is: " . $last_inconnector."<br>";
} else {
    echo "Error: " . $sql_node . "<br>" . $conn->error;
}
}
//--------------output connectors--------------    
$o_conn=$nodes[$nodes_count]['outputConnectors'];
$count_o_conn=count($o_conn);
//echo $count_o_conn;
for($o_conn_count=0;$o_conn_count<$count_o_conn;$o_conn_count++)
{
    echo "out connector-".$o_conn_count.":_".$o_conn[$o_conn_count]['name']."<br>";
    $name=$o_conn[$o_conn_count]['name'];
    $sql_node = "INSERT INTO output_connection(`node_id`, `connector_code`, `connector_name`) VALUES ($last_id,$o_conn_count,'$name')";
if ($conn->query($sql_node) === TRUE) {
    $last_outconnector = $conn->insert_id;
    echo "<i>Output connector</i> created successfully. Last inserted ID is: " . $last_outconnector."<br>";
} else {
    echo "Error: " . $sql_node . "<br>" . $conn->error;
}   
}
	echo "<br><br>";
}
//--------------connections working--------------------
$connec = $map_decod["connections"];
$count_conn=count($connec);
for($cnnc_count=0;$cnnc_count<$count_conn;$cnnc_count++)
{
//--------------soucre of cnnection--------------
$sour= $connec[$cnnc_count]['source'];
    
    //INSERT INTO `src_node`(`node_id`, `connector_code`, `node`) VALUES ([value-1],[value-2],[value-3])
    
    echo "source node:- ".$sour['nodeID']."<br>";
    $node_src=$sour['nodeID'];
    $node_connectr_index=$sour['connectorIndex'];
    echo "source conector:- ".$sour['connectorIndex']."<br>";
$sql_src = "INSERT INTO `src_node`(`node_id`, `connector_code`, `map_id`) VALUES ($node_src,$node_connectr_index,$last_map)";
if ($conn->query($sql_src) === TRUE) {
    //$last_outconnector = $conn->insert_id;
    echo "<i>src connector</i> created successfully.<br>";
} else {
    echo "Error: " . $sql_src . "<br>" . $conn->error;
}
    //--------------destination of connection--------------
$des_conn= $connec[$cnnc_count]['dest'];
    echo "destination node:- ".$des_conn['nodeID']."<br>";
    echo "destination conector:- ".$des_conn['connectorIndex']."<br>";
    $node_desti=$des_conn['nodeID'];
    $node_desti_connectr_index=$des_conn['connectorIndex'];
$sql_dest = "INSERT INTO `dest_node`(`node_id`, `connector_code`, `map_id`) VALUES ($node_desti,$node_desti_connectr_index,$last_map)";
if ($conn->query($sql_dest) === TRUE) {
    $last_outconnector = $conn->insert_id;
    echo "<i>Dest connector</i> created successfully.<br>";
} else {
    echo "Error: " . $sql_dest . "<br>" . $conn->error;
}
	//INSERT INTO `rltn4rm_p2c`(`src_node_id`, `src_Cntcr_INDEX`, `dest_node_id`, `dest_Cntcr_INDEX`) VALUES ([value-1],[value-2],[value-3],[value-4])
	
	$sql_dest = "INSERT INTO `rltn4rm_p2c`(`src_node_id`, `src_Cntcr_INDEX`, `dest_node_id`, `dest_Cntcr_INDEX`, `map_id`) VALUES ($node_src,$node_connectr_index,$node_desti,$node_desti_connectr_index,$last_map)";
if ($conn->query($sql_dest) === TRUE) {
    $last_outconnector = $conn->insert_id;
    echo "<i>Dest connector</i> created successfully.<br>";
} else {
    echo "Error: " . $sql_dest . "<br>" . $conn->error;
}

}
 
$conn->close();
 header("location:index.php?msg=Created Map has been saved");
}
else
    echo "create map n follow procedure...";
} else {
    // the user is not logged in. 
    include("views/not_logged_in.php");
}
 ?>