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
tinymce.init({
    mode: "textareas",
    plugins: "table",
    content_css: "css/content.css",
    style_formats: [
        {title: 'Bold text', inline: 'b'},
        {title: 'Red text', inline: 'span', styles: {color: '#ff0000'}},
        {title: 'Red header', block: 'h1', styles: {color: '#ff0000'}},
        {title: 'Example 1', inline: 'span', classes: 'example1'},
        {title: 'Example 2', inline: 'span', classes: 'example2'},
        {title: 'Table styles'},
        {title: 'Table row 1', selector: 'tr', classes: 'tablerow1'}
    ],
    formats: {
        alignleft: {selector: 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes: 'left'},
        aligncenter: {selector: 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes: 'center'},
        alignright: {selector: 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes: 'right'},
        alignfull: {selector: 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes: 'full'},
        bold: {inline: 'span', 'classes': 'bold'},
        italic: {inline: 'span', 'classes': 'italic'},
        underline: {inline: 'span', 'classes': 'underline', exact: true},
        strikethrough: {inline: 'del'},
        customformat: {inline: 'span', styles: {color: '#00ff00', fontSize: '20px'}, attributes: {title: 'My custom format'}}
    }
});
</script>
</head>
<body>
		<!-- <hr style="margin:10px"> -->
	<div style="width: 30%; Height: 20%; float:left;">
			<form action="save_quiz.php" method="POST">
				<label>Question 1</label>
				<textarea name="quention_1" style="width: 50%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option A</label>
				<textarea name="quention_1_option_a" style="width: 50%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option B</label>
				<textarea name="quention_1_option_b" style="width: 50%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option C</label>
				<textarea name="quention_1_option_c" style="width: 50%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option D</label>
				<textarea name="quention_1_option_d" style="width: 50%; height: 15%;" chart-json-edit view-model="chartViewModel">
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
					<label>Question 6</label>
				<textarea name="quention_6" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option A</label>
				<textarea name="quention_6_option_a" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option B</label>
				<textarea name="quention_6_option_b" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option C</label>
				<textarea name="quention_6_option_c" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option D</label>
				<textarea name="quention_6_option_d" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea>
	<label>Answer</label>
	<select name="answer_6">
		<option value="a">a</option>
		<option value="b">b</option>
		<option value="c">c</option>
		<option value="d">d</option>
	</select>
					<label>Question 7</label>
				<textarea name="quention_7" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option A</label>
				<textarea name="quention_7_option_a" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option B</label>
				<textarea name="quention_7_option_b" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option C</label>
				<textarea name="quention_7_option_c" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option D</label>
				<textarea name="quention_7_option_d" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea>
	<label>Answer</label>
	<select name="answer_7">
		<option value="a">a</option>
		<option value="b">b</option>
		<option value="c">c</option>
		<option value="d">d</option>
	</select>
					<label>Question 8</label>
				<textarea name="quention_8" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option A</label>
				<textarea name="quention_8_option_a" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option B</label>
				<textarea name="quention_8_option_b" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option C</label>
				<textarea name="quention_8_option_c" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea><br><br><br>
				<label>Option D</label>
				<textarea name="quention_8_option_d" style="width: 70%; height: 15%;" chart-json-edit view-model="chartViewModel">
				</textarea>
	<label>Answer</label>
	<select name="answer_8">
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