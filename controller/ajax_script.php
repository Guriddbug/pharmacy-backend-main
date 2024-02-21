<?php

echo "TEst123"; 

echo "<pre>"; print_r($_POST);
$tags = $_POST['tags'];
    
    $tagValues = []; // Initialize an empty array to store the tag values
    
    foreach ($tags as $tag) {
        // Append each tag value to the $tagValues array
        $tagValues[] = $tag;
    }
    
    // Concatenate the tag values with spaces
    echo $tagString = implode(" ", $tagValues);
	
include('../admin/config.php');

try
{
 $DB_con = new PDO('mysql:host='. $database['host'] .';dbname='. $database['db'], $database['user'], $database['pass']);
 $DB_con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e)
{
 $e->getMessage();
}
