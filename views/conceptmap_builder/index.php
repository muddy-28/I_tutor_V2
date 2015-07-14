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
			<br>

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

			<form action="process.php" method="POST">
				<textarea name="json_obj" hidden="true" style="width: 100%; height: 100%;" chart-json-edit view-model="chartViewModel">
				</textarea>

				<button type="submit">Save ConceptMap</button>
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