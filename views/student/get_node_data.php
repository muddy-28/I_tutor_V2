<?php
include('views/functn_flow_st.php');
$map_id=$_GET['data_map_id'];
$node=$_GET['node_id'];
//fail_pass(1308,11);
check_previous_record($map_id,$node);	
?>