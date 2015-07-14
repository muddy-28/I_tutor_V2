<?php
if ($_SESSION['user_type']=="admin") 
{
    include("admin_menu.php");	  
	/* gets the variable $page */
	if (!empty($_GET['page'])) {
        $page=$_GET['page'];
        $page .= '.php';
        $page='views/admin/'.$page;
		include($page);
	} 	/* if $page has a value, include it */
	else {
		echo "<h3>welcom mr ".$_SESSION['user_name']."</h3>";
	} 	/* otherwise, include the default page */
}
?><!-- because people were asking: "index.php?logout" is just my simplified form of "index.php?logout=true" -->