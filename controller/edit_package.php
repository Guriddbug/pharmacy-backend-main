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
	$package_id = cleardata($_POST['package_id']);
	$package_title = cleardata($_POST['package_title']);
	$package_description = $_POST['package_description'];
	$package_status = cleardata($_POST['package_status']);
	$one_time_price = cleardata($_POST['one_time_price']);
	$price_30_days = cleardata($_POST['price_30_days']);
	$price_60_days = cleardata($_POST['price_60_days']);
	$price_90_days = cleardata($_POST['price_90_days']);
	$package_products = cleardata($_POST['product_selected']);
	$post_image_save = $_POST['post_image_save'];
	$post_image = $_FILES['post_image'];

	if (empty($post_image['name'])) {
		$post_image = $post_image_save;
	} else{
			$imagefile = explode(".", $_FILES["post_image"]["name"]);
			$renamefile = round(microtime(true)) . '.' . end($imagefile);
		$post_image_upload = '../' . $items_config['images_folder'];
		move_uploaded_file($_FILES['post_image']['tmp_name'], $post_image_upload . 'post_' . $renamefile);
		$post_image = 'post_' . $renamefile;
	}
	
	$statement = $connect->prepare("UPDATE packages 
                                        SET package_title = :package_title, 
                                            package_description = :package_description, 
                                            one_time_price = :one_time_price, 
                                            price_30_days = :price_30_days, 
                                            price_60_days = :price_60_days, 
                                            price_90_days = :price_90_days, 
                                            package_status = :package_status, 
                                            package_products = :package_products,
                                            post_image = :post_image
                                        WHERE package_id = :package_id");

    
    $statement->execute(array(
        ':package_title' => $package_title,
        ':package_description' => $package_description,
        ':one_time_price' => $one_time_price,
        ':price_30_days' => $price_30_days,
        ':price_60_days' => $price_60_days,
        ':price_90_days' => $price_90_days,
        ':package_status' => $package_status,        
        ':package_products' => $package_products,
        ':post_image' => $post_image,
        ':package_id' => $package_id
    ));
	
	header('Location:' . SITE_URL . '/controller/packages.php');

}else{

	$id_package = id_package($_GET['id']);
    
	if(empty($id_package)){
		header('Location: ' . SITE_URL . '/controller/home.php');
	}

	$package = get_package_per_id($connect, $id_package);
    
    if (!$package){
		header('Location: ' . SITE_URL . '/controller/home.php');
	}

	$package = $package['0'];

}


require '../views/edit.packages.view.php';
require '../views/footer.view.php';
    
}else {

	header('Location: ' . SITE_URL . '/controller/login.php');		
}


?>