<?php
include("views/function.php");
$_map_id=$_POST['map_id'];

$_node_id=$_POST['node_id'];
$q1=$_POST['quention_1'];
$q1_a= $_POST['quention_1_option_a'];
$q1_b= $_POST['quention_1_option_b'];
$q1_c= $_POST['quention_1_option_c'];
$q1_d= $_POST['quention_1_option_d'];
$q1_ans= $_POST['answer_1'];

$q1=addslashes($q1);
$q1_a=addslashes($q1_a);
$q1_b=addslashes($q1_b);
$q1_c=addslashes($q1_c);
$q1_d=addslashes($q1_d);


$q2=$_POST['quention_2'];
$q2_a= $_POST['quention_2_option_a'];
$q2_b= $_POST['quention_2_option_b'];
$q2_c= $_POST['quention_2_option_c'];
$q2_d= $_POST['quention_2_option_d'];
$q2_ans= $_POST['answer_2'];

$q2=addslashes($q2);
$q2_a=addslashes($q2_a);
$q2_b=addslashes($q2_b);
$q2_c=addslashes($q2_c);
$q2_d=addslashes($q2_d);

$q3=$_POST['quention_3'];
$q3_a= $_POST['quention_3_option_a'];
$q3_b= $_POST['quention_3_option_b'];
$q3_c= $_POST['quention_3_option_c'];
$q3_d= $_POST['quention_3_option_d'];
$q3_ans= $_POST['answer_3'];

$q3=addslashes($q3);
$q3_a=addslashes($q3_a);
$q3_b=addslashes($q3_b);
$q3_c=addslashes($q3_c);
$q3_d=addslashes($q3_d);

$q4=$_POST['quention_4'];
$q4_a= $_POST['quention_4_option_a'];
$q4_b= $_POST['quention_4_option_b'];
$q4_c= $_POST['quention_4_option_c'];
$q4_d= $_POST['quention_4_option_d'];
$q4_ans= $_POST['answer_4'];

$q4=addslashes($q4);
$q4_a=addslashes($q4_a);
$q4_b=addslashes($q4_b);
$q4_c=addslashes($q4_c);
$q4_d=addslashes($q4_d);

$q5=$_POST['quention_5'];
$q5_a= $_POST['quention_5_option_a'];
$q5_b= $_POST['quention_5_option_b'];
$q5_c= $_POST['quention_5_option_c'];
$q5_d= $_POST['quention_5_option_d'];
$q5_ans= $_POST['answer_5'];

$q5=addslashes($q5);
$q5_a=addslashes($q5_a);
$q5_b=addslashes($q5_b);
$q5_c=addslashes($q5_c);
$q5_d=addslashes($q5_d);

$q7=$_POST['quention_7'];
$q7_a= $_POST['quention_7_option_a'];
$q7_b= $_POST['quention_7_option_b'];
$q7_c= $_POST['quention_7_option_c'];
$q7_d= $_POST['quention_7_option_d'];
$q7_ans= $_POST['answer_7'];

$q7=addslashes($q7);
$q7_a=addslashes($q7_a);
$q7_b=addslashes($q7_b);
$q7_c=addslashes($q7_c);
$q7_d=addslashes($q7_d);

$q8=$_POST['quention_8'];
$q8_a= $_POST['quention_8_option_a'];
$q8_b= $_POST['quention_8_option_b'];
$q8_c= $_POST['quention_8_option_c'];
$q8_d= $_POST['quention_8_option_d'];
$q8_ans= $_POST['answer_8'];

$q8=addslashes($q8);
$q8_a=addslashes($q8_a);
$q8_b=addslashes($q8_b);
$q8_c=addslashes($q8_c);
$q8_d=addslashes($q8_d);

$q6=$_POST['quention_6'];
$q6_a= $_POST['quention_6_option_a'];
$q6_b= $_POST['quention_6_option_b'];
$q6_c= $_POST['quention_6_option_c'];
$q6_d= $_POST['quention_6_option_d'];
$q6_ans= $_POST['answer_6'];

$q6=addslashes($q6);
$q6_a=addslashes($q6_a);
$q6_b=addslashes($q6_b);
$q6_c=addslashes($q6_c);
$q6_d=addslashes($q6_d);

$sql="INSERT INTO `quiz_nodes`(`map_id`, `node_id`, `question`, `optn_A`, `optn_B`, `optn_C`, `optn_D`, `answer`) VALUES ('$_map_id','$_node_id','$q1','$q1_a','$q1_b','$q1_c','$q1_d','$q1_ans')";

$sql2="INSERT INTO `quiz_nodes`(`map_id`, `node_id`, `question`, `optn_A`, `optn_B`, `optn_C`, `optn_D`, `answer`) VALUES ('$_map_id','$_node_id','$q2','$q2_a','$q2_b','$q2_c','$q2_d','$q2_ans')";

$sql3="INSERT INTO `quiz_nodes`(`map_id`, `node_id`, `question`, `optn_A`, `optn_B`, `optn_C`, `optn_D`, `answer`) VALUES ('$_map_id','$_node_id','$q3','$q3_a','$q3_b','$q3_c','$q3_d','$q3_ans')";

$sql4="INSERT INTO `quiz_nodes`(`map_id`, `node_id`, `question`, `optn_A`, `optn_B`, `optn_C`, `optn_D`, `answer`) VALUES ('$_map_id','$_node_id','$q4','$q4_a','$q4_b','$q4_c','$q4_d','$q4_ans')";

$sql5="INSERT INTO `quiz_nodes`(`map_id`, `node_id`, `question`, `optn_A`, `optn_B`, `optn_C`, `optn_D`, `answer`) VALUES ('$_map_id','$_node_id','$q5','$q5_a','$q5_b','$q5_c','$q5_d','$q5_ans')";

$sql6="INSERT INTO `quiz_nodes`(`map_id`, `node_id`, `question`, `optn_A`, `optn_B`, `optn_C`, `optn_D`, `answer`) VALUES ('$_map_id','$_node_id','$q6','$q6_a','$q6_b','$q6_c','$q6_d','$q6_ans')";

$sql7="INSERT INTO `quiz_nodes`(`map_id`, `node_id`, `question`, `optn_A`, `optn_B`, `optn_C`, `optn_D`, `answer`) VALUES ('$_map_id','$_node_id','$q7','$q7_a','$q7_b','$q7_c','$q7_d','$q7_ans')";

$sql8="INSERT INTO `quiz_nodes`(`map_id`, `node_id`, `question`, `optn_A`, `optn_B`, `optn_C`, `optn_D`, `answer`) VALUES ('$_map_id','$_node_id','$q8','$q8_a','$q8_b','$q8_c','$q8_d','$q8_ans')";

echo create_question($sql);
echo create_question($sql2);
echo create_question($sql3);
echo create_question($sql4);
echo create_question($sql5);
echo create_question($sql6);
echo create_question($sql7);
echo create_question($sql8);



header("location:index.php?msg=<h3>Created Quiz has been saved</h3>");
?>