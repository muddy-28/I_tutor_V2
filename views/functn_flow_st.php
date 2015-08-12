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
         //   echo "<br>map_id:-".$row['0']."<br>node_id:-".$row['2']."<br>node_name:-".$row['3'];
		 	chk_node_prent_child($mapi,$row['2']);
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



function get_single_node($mapi,$id_node,$as)
{
        $con = connectToDatabase();
	 	$sql1 = "SELECT `map_id`, `node_id`, `nodeID`, `nodeName` FROM `nodes` WHERE map_id='$mapi' && nodeID='$id_node'";
		$result=mysqli_query($con,$sql1)or die(mysql_error(). "Query Failed");
    
      if (mysql_error()) 
      {
        $message = mysql_error()."Query Failed";
      }else{
		  if ($result) {
    // output data of each row
     while ($row = mysqli_fetch_row($result)) 
        {
		 if($as=="p")
			// $data=stripslashes($row['0']);
		 {   echo "<li><a href=\"index.php?page=get_node_data&&data_map_id={$row['0']} && node_id={$row['2']}\">{$row['3']}</a>"."map_id:-".$row['0']." node_id:-".$row['2']." node_name:-".$row['3']."</li>";
		 }
		 else
		 {
			 echo "<li><ul><li><a href=\"index.php?page=get_node_data&&data_map_id={$row['0']}&&node_id={$row['2']}\">{$row['3']}</a>"."map_id:-".$row['0']." node_id:-".$row['2']." node_name:-".$row['3']."</li></ul></li>";
		 
		 }
			 
	 }
} else 
{
    echo "0 results for maps to user ".$_SESSION['user_name'];
}
		  
      }     
}

function chk_node_prent_child($mapi,$node_id)
{
		$con = connectToDatabase();
	 	$sql1 = "SELECT * FROM `rltn4rm_p2c` WHERE map_id='$mapi' && src_node_id ='$node_id'";
		$result=mysqli_query($con,$sql1)or die(mysql_error(). "Query Failed");
      if (mysql_error()) 
      {
        $message = mysql_error()."Query Failed";
      }else{
		  if ($result) {
     while ($row = mysqli_fetch_row($result)) 
        {	
		 if($row[0]==$node_id)
			{
				get_single_node($mapi,$node_id,"p");
			 	get_single_node($mapi,$row['2'],"c");
			 }
		 else if ($count>0){
		 		get_single_node($mapi,$row['2'],"c");
			 
		 }
		 
	 }
} else 

    echo "0 results for maps to user ".$_SESSION['user_name'];
}
}
function get_single_node_with_data($mapi,$id_node)
{
		//echo "i m here<br>";

        $con = connectToDatabase();
	 	$sql1 = "SELECT * FROM `nodes` WHERE map_id='$mapi' && nodeID='$id_node'";
		$result=mysqli_query($con,$sql1)or die(mysql_error(). "Query Failed");
    
      if (mysql_error()) 
      {
        $message = mysql_error()."Query Failed";
      }else{
		  if ($result) {
    // output data of each row
     while ($row = mysqli_fetch_row($result)) 
        {
		 $data_node=stripslashes($row['4']);
		  echo "<a href=\"index.php?page=get_node_data&&data_map_id={$row['0']}&&node_id={$row['2']}\">{$row['3']}</a>"." Lecture:-<br><br><br>".$data_node;
		 echo "<br><br><br><a href=\"index.php?page=take_quiz&&data_map_id={$row['0']}&&node_id={$row['2']}\">Take Quiz {$row['3']}</a>";
		 
		 }
} else 
{
    echo "No data to user ".$_SESSION['user_name'];
}	  
      }     
}
function get_single_node_with_data2($mapi,$id_node)
{
		//echo "i m here<br>";

        $con = connectToDatabase();
	 	$sql1 = "SELECT * FROM `nodes` WHERE map_id='$mapi' && nodeID='$id_node'";
		$result=mysqli_query($con,$sql1)or die(mysql_error(). "Query Failed");
    
      if (mysql_error()) 
      {
        $message = mysql_error()."Query Failed";
      }else{
		  if ($result) {
    // output data of each row
     while ($row = mysqli_fetch_row($result)) 
        {
		 $data_node=stripslashes($row['5']);
		  echo "<a href=\"index.php?page=get_node_data&&data_map_id={$row['0']}&&node_id={$row['2']}\">{$row['3']}</a>"." Lecture:-".$data_node;
		  echo "<br><br><br><a href=\"index.php?page=take_quiz&&data_map_id={$row['0']}&&node_id={$row['2']}\">Take Quiz {$row['3']}</a>";
		 
		 }
} else 
{
    echo "No data to user ".$_SESSION['user_name'];
}
		  
      }     
}

function check_previous_record($mapi,$node_id)
{
	//echo "i m here<br>";
	$con = connectToDatabase();
	$sql1 = "SELECT * FROM `rltn4rm_p2c` WHERE map_id='$mapi' && src_node_id ='$node_id'";
	$result=mysqli_query($con,$sql1)or die(mysql_error(). "Query Failed");
    
      if (mysql_error()) 
      {
        $message = mysql_error()."Query Failed";
      }else{
		  if ($result) {
    // output data of each row
     while ($row = mysqli_fetch_row($result)) 
        {
		 
		 if(fail_pass($mapi,$row['2'])==true)
		 {	 
			 get_single_node_with_data($mapi,$id_node);
			 echo "iam here<br>";
		 }
		 if(fail_pass($mapi,$row['2'])==false)
		 {
			get_single_node_with_data2($mapi,$row['2']); 
			 			 echo "iam here1<br>";

		 }
		 else
		 {
			 echo "you should first attepmt to learn :-".get_single_node_with_data($mapi,$row['2']);
		 }
		 
	 	}
} 
		  else 
			{
			  			 echo "iam here<br>";

				get_single_node_with_data($mapi,$node_id);
			}
		  
      }

}
function fail_pass($mapi,$node_id)
{
		//echo "i m here<br>";

	$con = connectToDatabase();
	$usr=$_SESSION['user_name'];
	$sql1 = "SELECT * FROM `quiz_attempts` WHERE map_id='$mapi' && node_id ='$node_id' && user_name='$usr'";
	$result=mysqli_query($con,$sql1)or die(mysql_error(). "Query Failed");
    
      if (mysql_error()) 
      {
        $message = mysql_error()."Query Failed";
		  echo $message;
      }
	else{
			// output data of each row
			 while ($row = mysqli_fetch_row($result)) 
				{
				 echo "i m here<br>";
				 if($row['5'])
				 {	echo "i m here<br>";
					 echo true;}
				 else
				 {	 echo "i m here<br>";
					 echo false;}
				}
		 
	 // echo "i m here<br>";
	  }
	check_previous_record($mapi,$node_id);
	
}

?>