<?php
include('views/functn_flow.php');
$map_id=$_GET['data_map_id'];
$node=$_GET['node_id'];

get_single_node_with_data($map_id,$node);
	
?>