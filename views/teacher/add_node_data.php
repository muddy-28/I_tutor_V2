<?php
include('views/connection.php');
$mapi_data_insert=$_GET['data_map_id'];
$node_id=$_GET['node_id'];
echo " add data :P{$mapi_data_insert}{$node_id}";
if(isset($_POST['content']))
{
	$content=addslashes($_POST['content']);
	$sql1="UPDATE `nodes` SET `node_content`='$content' WHERE map_id='$mapi_data_insert' && nodeID='$node_id'";
	
	$con = connectToDatabase();
	$result=mysqli_query($con,$sql1)or die(mysql_error(). "Query Failed");
    if (mysql_error()) 
      {
        mysql_error()."Query Failed";
      }else{
		if ($result) {
			echo "i am done";
	} else 
	{
			echo "failure";
		}
      }   
}



?>

<html>
	<body>
		<script type="text/javascript" src="https://tinymce.cachefly.net/4.2/tinymce.min.js"></script>
<script type="text/javascript">
tinymce.init({
    selector: "textarea",
    theme: "modern",
    plugins: [
        "advlist autolink lists link image charmap print preview hr anchor pagebreak",
        "searchreplace wordcount visualblocks visualchars code fullscreen",
        "insertdatetime media nonbreaking save table contextmenu directionality",
        "emoticons template paste textcolor colorpicker textpattern imagetools"
    ],
    toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
    toolbar2: "print preview media | forecolor backcolor emoticons",
    image_advtab: true,
    templates: [
        {title: 'Test template 1', content: 'Test 1'},
        {title: 'Test template 2', content: 'Test 2'}
    ]
});
</script>

<form method="post" action="#">
	<label>Enter Concept Material</label>
    <textarea name="content" style="width:100%"></textarea>
	<button type="submit">Save Concept Material</button>
</form>
	</body>
</html>