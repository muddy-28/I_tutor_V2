<?php
include ('connection.php');
function get_maps($usr)
{
        $con = connectToDatabase();
		//SELECT * FROM `concept-maps` WHERE 1
	 	$sql1 = "SELECT `map_id`, `map_data`, `map_created_by`, `created_on` FROM `concept-maps` WHERE map_created_by='$usr'";
		$result=mysqli_query($con,$sql1)or die(mysql_error(). "Query Failed");
    
      if (mysql_error()) 
      {
        mysql_error()."Query Failed";
      }else{
		  echo "<br><br>Your Conceptmaps are:<br>";
		  if ($result) {
    // output data of each row
			  
     while ($row = mysqli_fetch_row($result)) 
        {
		 echo "<br> <a href=\"index.php?page=get_map_data&&data_map_id={$row['0']}\">{$row['0']}</a>";
		 	$mapi=$row['0'];
	 }
} else 
{
    echo "0 results for maps to user ".$_SESSION['user_name'];
}
      }     
}
function get_maps_st()
{
        $con = connectToDatabase();
		//SELECT * FROM `concept-maps` WHERE 1
	 	$sql1 = "SELECT `map_id`, `map_data`, `map_created_by`, `created_on` FROM `concept-maps`";
		$result=mysqli_query($con,$sql1)or die(mysql_error(). "Query Failed");
    
      if (mysql_error()) 
      {
        mysql_error()."Query Failed";
      }else{
		  echo "<br><br>Your Conceptmaps are:<br>";
		  if ($result) {
    // output data of each row
			  
     while ($row = mysqli_fetch_row($result)) 
        {
		 echo "<br> <a href=\"index.php?page=get_map_data&&data_map_id={$row['0']}\">{$row['0']}</a>";
		 	$mapi=$row['0'];
	 }
} else 
{
    echo "0 results for maps to user ".$_SESSION['user_name'];
}
      }     
}

function get_nodes($mapi)
{
        $con = connectToDatabase();
	 	$sql1 = "SELECT `map_id`, `node_id`, `nodeID`, `nodeName` FROM `nodes` WHERE map_id='$mapi'";
		$result=mysqli_query($con,$sql1)or die(mysql_error(). "Query Failed");
    
      if (mysql_error()) 
      {
        $message = mysql_error()."Query Failed";
      }else{
		  if ($result) {
    // output data of each row
     while ($row = mysqli_fetch_row($result)) 
        {
            echo "<br>map_id:-".$row['0']."<br>node_id:-".$row['2']."<br>node_name:-".$row['3'];
		 	get_nodes_in_connections($row['1']);
		 	get_nodes_out_connections($row['1']);
	 }
} else 
{
    echo "0 results for maps to user ".$_SESSION['user_name'];
}
		  
      }     
}
function get_nodes_in_connections($node_id)
{
        $con = connectToDatabase();
	 	$sql1 = "SELECT * FROM `input_connection` WHERE node_id='$node_id'";
		$result=mysqli_query($con,$sql1)or die(mysql_error(). "Query Failed");
    
      if (mysql_error()) 
      {
        $message = mysql_error()."Query Failed";
      }else{
		  if ($result) {
    // output data of each row
     while ($row = mysqli_fetch_row($result)) 
        {
            echo "<br>in_connector_code:-".$row['1']."<br>in_connector_name:-".$row['2'];            
	 }
} else 
{
    echo "0 results for maps to user ".$_SESSION['user_name'];
}
      }
}
function get_nodes_out_connections($node_id)
{
        $con = connectToDatabase();
	 	$sql1 = "SELECT * FROM `output_connection` WHERE node_id='$node_id'";
		$result=mysqli_query($con,$sql1)or die(mysql_error(). "Query Failed");
    
      if (mysql_error()) 
      {
        $message = mysql_error()."Query Failed";
      }else{
		  if ($result) {
    // output data of each row
     while ($row = mysqli_fetch_row($result)) 
        {
            echo "<br>out_connector_code:-".$row['1']."<br>out_connector_name:-".$row['2'];            
	 }
} else 
{
    echo "0 results for maps to user ".$_SESSION['user_name'];
}
      }
}


function create_question($sql_question)
{
        $con = connectToDatabase();
		$result=mysqli_query($con,$sql_question)or die(mysql_error(). "Query Failed");
    
      if (mysql_error()) 
      {
        return mysql_error()."Query Failed";
      }
	  else
	  {	  
		 return "Question Saved";
	  } 
      }

?>