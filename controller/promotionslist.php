<?php

session_start();

if (isset($_SESSION['manager_email'])){
    
require '../admin/config.php';
require '../admin/functions.php';	
require '../views/header.view.php';
require '../views/navbar.view.php';    

$errors = '';

$connect = connect($database);
if(!$connect){
	header('Location: ' . SITE_URL . '/controller/error.php');
	} 

if ($_SERVER['REQUEST_METHOD'] == 'POST'){
	// print_r($_POST);
	$post_title = $_POST['post_title'];
	$description = $_POST['post_description'];
	$replace = array('<p>','</p>');
	$post_description =  str_replace($replace,'',$description);
	$promotion = $_POST['randomCodeInput'];
	$promotion_image = $_FILES["post_image"]["name"];
	$tmp_name = $_FILES["post_image"]["tmp_name"];
	$currentDirectory = getcwd();
	$folderPath = dirname($currentDirectory);
	echo $path = "".$folderPath."/assets/images/". $promotion_image;
	$image = move_uploaded_file($tmp_name, $path);
//	header('Location:' . SITE_URL . '/controller/promotions.php');
	$sql = $connect->prepare(
	    'INSERT INTO promotions (post_title, post_description, promotion,promotion_image) VALUES (:post_title, :post_description, :promotion,:promotion_image)'
	);


// Execute the prepared statement
$result = $sql->execute(array(
    ':post_title' => $post_title,
    ':post_description' => $post_description,
    ':promotion' => $promotion,
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

// $tags_lists = get_all_tags($connect);

require '../views/promotionlist.view.php';
require '../views/footer.view.php';
    
}else{

	header('Location: ' . SITE_URL . '/controller/login.php');		
}


?>