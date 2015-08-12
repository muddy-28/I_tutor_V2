<html>

<head>
	<title>Concept Map Flow Builder</title>

	<!-- 
		LiveReload support.
		http://livereload.com/
		-->
	<script src="http://localhost:35729/livereload.js?snipver=1"></script>
	<link href='http://fonts.googleapis.com/css?family=Ubuntu+Mono' rel='stylesheet' type='text/css'>

</head>

<body ng-app="app" ng-controller="AppCtrl" mouse-capture ng-keydown="keyDown($event)" ng-keyup="keyUp($event)">
	<hr style="margin:50px">
	<div style="width: 100%; overflow: hidden;">
		<div style="width: 150px; float: left;">
			
			<br>
			<button ng-click="addNewNode()" title="Add a new node to the chart">
				Add Node
			</button>
			<br>
			<br>
			<button ng-click="addNewInputConnector()" ng-disabled="chartViewModel.getSelectedNodes().length == 0" title="Add a new input connector to the selected node">
				Add Input Connector
			</button>
			<br>
			<br>
			<button ng-click="addNewOutputConnector()" ng-disabled="chartViewModel.getSelectedNodes().length == 0" title="Add a new output connector to the selected node">
				Add Output Connector
			</button>
			<br>
			<br>
			<button ng-click="deleteSelected()" ng-disabled="chartViewModel.getSelectedNodes().length == 0 && chartViewModel.getSelectedConnections().length == 0" title="Delete selected nodes and connections">
				Delete Selected
			</button>
			<br>
			<br>
			<form action="#" method="POST">
				<textarea name="json_obj" hidden="true" style=" width: 100%; height: 100%;" chart-json-edit view-model="chartViewModel">
				</textarea>
				<input type="text" name="name" required></input>
				<button type="submit" >Save ConceptMap</button>	
			</form>
		</div>
		<div style="margin-left: 200px;">

			<!--This custom element defines the flowchart.-->
			<flow-chart style="margin: 5px; width: 90%; height: 80%;" chart="chartViewModel">
			</flow-chart>
		</div>
	</div>
	<hr style="margin:3px">
	<link rel="stylesheet" type="text/css" href="app.css">

	<!-- Library code. -->
	<script src="lib/jquery-2.0.2.js" type="text/javascript"></script>
	<script src="lib/angular.js" type="text/javascript"></script>

	<!-- Flowchart code. -->
	<script src="debug.js" type="text/javascript"></script>
	<script src="flowchart/svg_class.js" type="text/javascript"></script>
	<script src="flowchart/mouse_capture_service.js" type="text/javascript"></script>
	<script src="flowchart/dragging_service.js" type="text/javascript"></script>
	<script src="flowchart/flowchart_viewmodel.js" type="text/javascript"></script>
	<script src="flowchart/flowchart_directive.js" type="text/javascript"></script>

	<!-- App code. -->
	<script src="app.js" type="text/javascript"></script>
</body>

</html>

<?php
require_once("views/function.php");
if(isset($_POST['json_obj']))
{    echo $_POST['json_obj']."<br><br>";
    $map=$_POST['json_obj'];
 	$map_name=$_POST['name'];
 

$servername = "localhost";
$username = "root";
$password = "mysql";
$dbname = "conceptmap_builder";
?>
<?php
// Create connectionjwhdhaaaaaaa
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection setting doest not match. plz check \'process.php\'<br>Connection failed: " . $conn->connect_error);
} 
 $USR= $_SESSION['user_name'];
//
$sql_map = "INSERT INTO `concept-maps` (`map_id`, `map_data`, `map_created_by`, `created_on` ,`name`) VALUES (NULL,'$map','$USR', CURRENT_TIMESTAMP, '$map_name')";

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
	$sql_dest = "INSERT INTO `rltn4rm_p2c`(`src_node_id`, `src_Cntcr_INDEX`, `dest_node_id`, `dest_Cntcr_INDEX`, `map_id`) VALUES ($node_src,$node_connectr_index,$node_desti,$node_desti_connectr_index,$last_map)";
if ($conn->query($sql_dest) === TRUE) {
    $last_outconnector = $conn->insert_id;
    echo "<i>Dest connector</i> created successfully.<br>";
} else {
    echo "Error: " . $sql_dest . "<br>" . $conn->error;
}

}
 
$conn->close();
 header("location:index.php?msg=<h3>Created Map has been saved</h3>");
}
else
    echo "create map n follow procedure...";
 ?>