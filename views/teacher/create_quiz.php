<html>
<head>
<title>RB's Enterprises</title>
	<?php 
		$_map_id=$_GET['data_map_id'];
		$_node_id=$_GET['node_id'];
	?>
<meta name="robots" content="noindex, nofollow" />

<link href='http://fonts.googleapis.com/css?family=Ubuntu+Mono' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="views/tinymce/tinymce.min.js"></script>
<script type="text/javascript">
	// Disable all menus
tinymce.init({
    menu : { // this is the complete default configuration
        edit   : {title : 'Edit'  , items : 'undo redo | cut copy paste pastetext | selectall'},
        insert : {title : 'Insert', items : 'link media | template hr'},
        view   : {title : 'View'  , items : 'visualaid'},
        format : {title : 'Format', items : 'bold italic underline strikethrough superscript subscript | formats | removeformat'},
        table  : {title : 'Table' , items : 'inserttable tableprops deletetable | cell row column'},
        tools  : {title : 'Tools' , items : 'spellchecker code'}
    }
});
tinymce.init({
    selector: "textarea",
    theme: "modern",
    plugins: [
        "advlist autolink lists link image charmap print preview hr anchor pagebreak",
        "searchreplace wordcount visualblocks visualchars code fullscreen",
        "insertdatetime media nonbreaking save table contextmenu directionality",
        "emoticons template paste textcolor colorpicker textpattern imagetools"
    ],
    toolbar1: "undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
    toolbar2: " preview media | forecolor backcolor",
    image_advtab: true,
    templates: [
        {title: 'muddy_28', content: 'muddy_28'},
        {title: 'muddy_28', content: 'muddy_28'}
    ]
});
</script>
</head>
<body>
		<hr style="margin:10px">
	<div style="width: 80%; float:left;">
			<form action="save_quiz.php" method="POST">
				<label>Question 1</label>
				<textarea name="quention_1" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option A</label>
				<textarea name="quention_1_option_a" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option B</label>
				<textarea name="quention_1_option_b" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option C</label>
				<textarea name="quention_1_option_c" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option D</label>
				<textarea name="quention_1_option_d" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea>
	<label>Answer</label>
	<select name="answer_1">
		<option value="a">a</option>
		<option value="b">b</option>
		<option value="c">c</option>
		<option value="d">d</option>
	</select>
					<label>Question 2</label>
				<textarea name="quention_2" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option A</label>
				<textarea name="quention_2_option_a" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option B</label>
				<textarea name="quention_2_option_b" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option C</label>
				<textarea name="quention_2_option_c" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option D</label>
				<textarea name="quention_2_option_d" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea>
	<label>Answer</label>
	<select name="answer_2">
		<option value="a">a</option>
		<option value="b">b</option>
		<option value="c">c</option>
		<option value="d">d</option>
	</select>
								<label>Question 3</label>
				<textarea name="quention_3" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option A</label>
				<textarea name="quention_3_option_a" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option B</label>
				<textarea name="quention_3_option_b" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option C</label>
				<textarea name="quention_3_option_c" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option D</label>
				<textarea name="quention_3_option_d" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea>
	<label>Answer</label>
	<select name="answer_3">
		<option value="a">a</option>
		<option value="b">b</option>
		<option value="c">c</option>
		<option value="d">d</option>
	</select>
					<label>Question 4</label>
				<textarea name="quention_4" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option A</label>
				<textarea name="quention_4_option_a" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option B</label>
				<textarea name="quention_4_option_b" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option C</label>
				<textarea name="quention_4_option_c" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option D</label>
				<textarea name="quention_4_option_d" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea>
	<label>Answer</label>
	<select name="answer_4">
		<option value="a">a</option>
		<option value="b">b</option>
		<option value="c">c</option>
		<option value="d">d</option>
	</select>
					<label>Question 5</label>
				<textarea name="quention_5" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option A</label>
				<textarea name="quention_5_option_a" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option B</label>
				<textarea name="quention_5_option_b" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option C</label>
				<textarea name="quention_5_option_c" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option D</label>
				<textarea name="quention_5_option_d" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea>
	<label>Answer</label>
	<select name="answer_5">
		<option value="a">a</option>
		<option value="b">b</option>
		<option value="c">c</option>
		<option value="d">d</option>
	</select>
				<input name="map_id" value="<?php echo $_map_id ;?>" readonly >
				<input name="node_id" value="<?php echo $_node_id; ?>" readonly >
				<button type="submit">Save ConceptMap</button>
			</form>
	</div>
	<hr style="margin:10px">
	<link rel="stylesheet" type="text/css" href="views/conceptmap_builder/app.css">
</body>

</html>