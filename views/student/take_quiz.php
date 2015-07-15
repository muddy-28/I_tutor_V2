<?php

$data_map_id=$_GET['data_map_id'];
$node_id=$_GET['node_id'];
echo $data_map_id."--".$node_id;
$answers=array();
$sql="SELECT `question`, `optn_A`, `optn_B`, `optn_C`, `optn_D`, `answer`, `question_id` FROM `quiz_nodes` WHERE map_id='$data_map_id' && node_id='$node_id'";

include ('views/connection.php');

        $con = connectToDatabase();
		$result=mysqli_query($con,$sql)or die(mysql_error(). "Query Failed");
    
      if (mysql_error()) 
      {
        mysql_error()."Query Failed";
      }else{
		  echo "<br><br><h4>Quiz is:.-</h4><br>
		  <li>you don't have to check 2 options for one question you may face plenty.</li>
		  <li>System would not respond agist dual answer which may  cause negetive marking.</li>";
		  if ($result) {
    // output data of each row
			$q=1;  
			  $check_box_a="<input name=\"a[]\" type=\"checkbox\" value=\"a\" >";
			  $check_box_b="<input name=\"a[]\" type=\"checkbox\" value=\"b\" >";
			  $check_box_c="<input name=\"a[]\" type=\"checkbox\" value=\"c\" >";
			  $check_box_d="<input name=\"a[]\" type=\"checkbox\" value=\"d\" >";
			  $submit_button="<input name=\"quiz\" type=\"submit\" value=\"Submit\">";
			  echo "<form action=\"#\" method=\"post\">";
			  
     while ($row = mysqli_fetch_row($result)) 
        {
		 
		 echo "<br> question-{$q}<br>{$row['0']}";
		 echo "<br>{$check_box_a}{$row['1']}";
		 echo "<br>{$check_box_b}{$row['2']}";
		 echo "<br>{$check_box_c}{$row['3']}";
		 echo "<br>{$check_box_d}{$row['4']}";
		 $answers[$q-1]=$row['5'];
		 $q=$q+1;
	 }
			  echo "<input name=\"map\" value=\"{$data_map_id}\" type=\"text\" readonly>"; 
			  echo "<input name=\"node\" value=\"{$node_id}\" type=\"text\" readonly>"; 
			  echo "{$submit_button}</form>";
} else 
{
    echo "0 results for maps to user ".$_SESSION['user_name'];
}
      }
if(isset($_POST['a']))
{
	$obtained=0;
	$ans="";
	echo $_POST['map'].$_POST['node'];
	$options=$_POST['a'];
	$n=count($_POST['a']);
	echo "<br><h3>you attempted {$n} questions</h3><br>";
	for($i=0; $i<$n;$i++)
	{
		echo "{$options[$i]}<br>";
		$ans=$ans.','.$options[$i];
		if($options[$i]==$answers[$i])
		{
			$obtained=$obtained+5;
		}
	}
	echo "<br><h3>you have obtained {$obtained} marks</h3>";
	if(($obtained/30)>=0.6)
	{
		$status=true;
	}
	else
	{
		$status=false;
	}
	
	$ma=$_POST['map'];
	$no=$_POST['node'];
	$usr=$_SESSION['user_name'];
	echo $ma."<br>".$no."<br>".$usr."<br>".$status."<br>".$obtained."<br>".$ans;
$sql_a_result="INSERT INTO `quiz_attempts`(`map_id`, `node_id`, `user_name`, `marks_obt`, `status`, `answers`, `record_flag`) VALUES ({$ma},{$no},\"{$usr}\",{$obtained},{$status},\"{$ans}\",null)";
		$conn = connectToDatabase();	
		$result=mysqli_query($conn,$sql_a_result)or die(mysql_error(). "Query Failed");
    
      if (mysql_error()) 
      {
        mysql_error()."Query Failed";
      }else{
		  $percnt=($obtained*100)/30;
		  echo "<br><br><h4>Result is Recorded!!!!</h4><br>";
		  header("location:index.php?msg=<h4>Result is Recorded!!!!</h4><h3>your marks are {$percnt} %</h3>");
	  }
}


?>