<?php
error_reporting( error_reporting() & ~E_NOTICE );
/*!
 * **************************************************************
 ****************  Adnan Shafique ******************************
 ***************************************************************/
 /* documentation at: http://adnanshafique.base.pk/documentation/
 /* Designed & Maintained by
 /*                                    - Viking Developers 
 /* Developer
 /*                                    - Adnan Shafique
 /* For Support Contact @
 /*                                    - adnanshafique@myself.com
 /* version 2.0.0 beta (20 Oct 2014)
 /* Licensed under GPL license:
 /* http://www.gnu.org/licenses/gpl.html
 */
?>
<html>
    <?php
        
        
        
        $root=$sub1=$sub1sub1=$sub1sub2=$sub2=$sub2sub1=$sub2sub2=$sub3=$sub3sub1=$sub3sub2=$sub4sub1=$sub4sub2='';

       
        $root=$_POST["textelement_1"];
        
        $sub1=$_POST["subtopic_1"];
        $sub1sub1=$_POST["sub_to_sub_11"];
        $sub1sub2=$_POST["sub_to_sub_21"];

        $sub2=$_POST["subtopic_2"];
        $sub2sub1=$_POST["sub_to_sub_12"];
        $sub2sub2=$_POST["sub_to_sub_22"];

        $sub3=$_POST["subtopic_3"];
        $sub3sub1=$_POST["sub_to_sub_13"];
        $sub3sub2=$_POST["sub_to_sub_23"];

        $sub4=$_POST["subtopic_4"];
        $sub4sub1=$_POST["sub_to_sub_14"];
        $sub4sub2=$_POST["sub_to_sub_24"];

$text = $root.$sub1. $sub1sub1. $sub1sub2. $sub2. $sub2sub1. $sub2sub2. $sub3. $sub3sub1.$sub3sub2. $sub4sub1. $sub4sub2;
     //  $txt = "user id date";
$myFile = "logs.txt";
$fh = fopen($myFile, 'a') or die("can't open file");
$stringData = $text.'\n';
fwrite($fh, $stringData);
fclose($fh);

    ?>
  <head>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["orgchart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Name');
        data.addColumn('string', 'Manager');
        data.addColumn('string', 'ToolTip');

        data.addRows([
          [{v:'<?php echo $root;?>', f:'<?php echo $root;?><div style="color:red; font-style:italic">Parent node</div>'}, '', 'goto hell :P'],
          [{v:'<?php echo $sub1;?>', f:'<?php echo $sub1;?><div style="color:red; font-style:italic">1st level node<div>'}, '<?php echo $root;?>', 'madmad'],
          ['<?php echo $sub2; ?>', '<?php echo $root;?>', ''], ['<?php echo $sub3; ?>', '<?php echo $root;?>', ''],['<?php echo $sub4; ?>', '<?php echo $root;?>', ''],
          ['<?php echo $sub1sub1; ?>', '<?php echo $sub1;?>', ''],['<?php echo $sub1sub2; ?>', '<?php echo $sub1;?>', ''],
          ['<?php echo $sub2sub1; ?>', '<?php echo $sub2; ?>', ''],['<?php echo $sub2sub2; ?>', '<?php echo $sub2; ?>', ''],
          ['<?php echo $sub3sub1; ?>', '<?php echo $sub3; ?>', ''],['<?php echo $sub3sub2; ?>', '<?php echo $sub3; ?>', ''],
          ['<?php echo $sub4sub1; ?>', '<?php echo $sub4; ?>', ''],['<?php echo $sub4sub2; ?>', '<?php echo $sub4; ?>', '']
        ]);

        var chart = new google.visualization.OrgChart(document.getElementById('chart_div'));
        chart.draw(data, {allowHtml:true});
      }
   </script>
    </head>
  <body>
    <div id="chart_div""></div>
  </body>
</html>