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

	$package_title = cleardata($_POST['package_title']);
	$package_description = $_POST['package_description'];
	$package_status = cleardata($_POST['package_status']);
	$one_time_price = cleardata($_POST['one_time_price']);
	$price_30_days = cleardata($_POST['price_30_days']);
	$price_60_days = cleardata($_POST['price_60_days']);
	$price_90_days = cleardata($_POST['price_90_days']);
	$package_products = cleardata($_POST['product_selected']);
	$post_image = $_FILES['post_image']['tmp_name'];

	$imagefile = explode(".", $_FILES["post_image"]["name"]);
	$renamefile = round(microtime(true)) . '.' . end($imagefile);

	$post_image_upload = '../' . $items_config['images_folder'];

	move_uploaded_file($post_image, $post_image_upload . 'package_' . $renamefile);

	$statement = $connect->prepare("INSERT INTO packages (package_title, package_description, package_status, package_products, one_time_price, price_30_days, price_60_days, price_90_days, post_image) VALUES (:package_title, :package_description, :package_status, :package_products, :one_time_price, :price_30_days, :price_60_days, :price_90_days, :post_image)");

	$statement->execute(array(
	    ':package_title' => $package_title,
	    ':package_description' => $package_description,
	    ':package_status' => $package_status,
	    ':package_products' => $package_products,
	    ':one_time_price' => $one_time_price,
	    ':price_30_days' => $price_30_days,
	    ':price_60_days' => $price_60_days,
	    ':price_90_days' => $price_90_days,
	    ':post_image' => 'post_' . $renamefile
	));

		
	header('Location:' . SITE_URL . '/controller/packages.php');

}

$types_lists = get_all_types($connect);

require '../views/new.packages.view.php';
require '../views/footer.view.php';
    
}else {

	header('Location: ' . SITE_URL . '/controller/login.php');		
}


?>