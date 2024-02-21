<?php

 session_start();
if (isset($_SESSION['manager_email'])){
    
    
require '../admin/config.php';
require '../admin/functions.php';	
$title_page = 'Strings';
require '../views/header.view.php';
require '../views/navbar.view.php';    

$errors = '';
$success = '';

$connect = connect($database);
if(!$connect){
	header('Location: ' . SITE_URL . '/controller/error.php');
	}

if ($_SERVER['REQUEST_METHOD'] == 'POST'){
	
	$promotion_title =  $_POST['promotion_title'];
	$promotion_description = $_POST['promotion_description'];
	$promotion_discount = $_POST['promotion_discount'];
	$promotion_price = $_POST['promotion_price'];
	$promotion_code = $_POST['randomCodeInput'];
	//echo "<pre>"; print_r($_FILES); 
	$promotion_image = $_FILES["post_image"]["name"];
	$tmp_name = $_FILES["post_image"]["tmp_name"];
	$currentDirectory = getcwd();
	$folderPath = dirname($currentDirectory);
	echo $path = "".$folderPath."/assets/images/". $promotion_image;
	$image = move_uploaded_file($tmp_name, $path);
$sql = $connect->prepare(
    'INSERT INTO promotion (promotion_title, promotion_description, promotion_discount, promotion_price, promotion_code, promotion_image) VALUES (:promotion_title, :promotion_description, :promotion_discount, :promotion_price, :promotion_code, :promotion_image)'
);


// Execute the prepared statement
$result = $sql->execute(array(
    ':promotion_title' => $promotion_title,
    ':promotion_description' => $promotion_description,
    ':promotion_discount' => $promotion_discount,
    ':promotion_price' => $promotion_price,
    ':promotion_code' => $promotion_code,
	':promotion_image' => $promotion_image
));

// Check if the execution was successful
if ($result) {
    echo "Insertion successful"; // or any other success message
} else {
    // Handle the error, you can output an error message or log it
    echo "Error: " . $sql->errorInfo()[2];
}
 
	

}

require '../views/promotion.view.php';
require '../views/footer.view.php';
    
}else {
		header('Location: ' . SITE_URL . '/controller/login.php');		
		}


?>