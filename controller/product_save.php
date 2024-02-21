<?php
error_reporting(E_ALL);
session_start();
$response = [];
if (isset($_SESSION['manager_email'])) {
    require '../admin/config.php';
    require '../admin/functions.php';

    $errors = '';

    $connect = connect($database);
    if (!$connect) {
        $response = [
            'status' => true,
            'redirect' => SITE_URL . '/controller/error.php'
        ];
    } else {

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            //Add Product
            if(cleardata($_POST['product_fun']) == "create") {
                if (cleardata($_POST['product_type']) == 6) { //Accessories
                    $imagename = [];
                    // $product_image1 = $_FILES['product_image_1'];
                    $product_image1 = $_FILES['new_upload_image'];
                    foreach ($product_image1['name'] as $key => $value) {
                        $product_image = $value;
                        $imagefile = explode(".", $product_image);
                        $imagename[] =	$renamefile = 'product_' . round(microtime(true)) . rand(10, 100) . '.' . end($imagefile);
                        $product_image_upload = '../' . $items_config['images_folder'] . '/';
                        move_uploaded_file($product_image1['tmp_name'][$key], $product_image_upload . $renamefile);
                    }

                    $product_type = cleardata($_POST['product_type']);

                    $price = cleardata($_POST['product_price']);
                    $discount = cleardata($_POST['discount']);
                    $product_status = cleardata($_POST['product_status']);
                    $product_title = cleardata($_POST['product_title']);
                    $product_description = cleardata($_POST['product_description']);
                    $product_featured = cleardata($_POST['product_featured']);
                    $product_image = (!empty($imagename) ? implode(',',$imagename) : NULL);

                    try {
                        $statment = $connect->prepare("INSERT INTO products (product_id,product_title,product_description,product_type,product_featured,product_status,product_price,discount,product_image) VALUES (null, :product_title,:product_description,:product_type,:product_featured,:product_status,:product_price,:discount,:product_image)");

                        $statment->execute(array(
                            ':product_title' => $product_title,
                            ':product_description' => $product_description,
                            ':product_type' => $product_type,
                            ':product_featured' => $product_featured,
                            ':product_status' => $product_status,
                            ':product_price' => $price,
                            ':discount' => $discount,
                            ':product_image' => $product_image,
                        ));
                    } catch (PDOException $e) {
                        // Handle errors
                        $response = [
                            'status' => false,
                            'error' => $e->getMessage()
                        ];
                    }
                }

                if (cleardata($_POST['product_type']) == 8) { //Devices
                    $imagename = [];
                    $videoname = '';
                    // $product_image1 = $_FILES['product_image_1'];
                    $product_image1 = $_FILES['new_upload_image'];
                    foreach ($product_image1['name'] as $key => $value) {
                        $product_image = $value;
                        $imagefile = explode(".", $product_image);
                        $imagename[] =	$renamefile = 'product_' . round(microtime(true)) . rand(10, 100) . '.' . end($imagefile);
                        $product_image_upload = '../' . $items_config['images_folder'] . '/';
                        move_uploaded_file($product_image1['tmp_name'][$key], $product_image_upload . $renamefile);
                    }

                    if(isset($_FILES['video_filw']['name']) && !empty($_FILES['video_filw']['name'])) {
                        $product_image = $_FILES['video_filw']['name'];
                        $imagefile = explode(".", $product_image);
                        $videoname = 'product_' . round(microtime(true)) . rand(10, 100) . '.' . end($imagefile);
                        $product_image_upload = '../' . $items_config['video_folder'] . '/';
                        move_uploaded_file($_FILES['video_filw']['tmp_name'], $product_image_upload . $videoname);
                    }

                    $product_type = cleardata($_POST['product_type']);
                    $product_title = cleardata($_POST['product_title']);
                    $product_description = cleardata($_POST['product_description']);
                    $wyslt = cleardata($_POST['wyslt']);
                    $technology = cleardata($_POST['technology']);
                    $benefits = cleardata($_POST['benefits']);
                    $hiworks = cleardata($_POST['hiworks']);
                    $htuse = cleardata($_POST['htuse']);
                    $tips = cleardata($_POST['tips']);
                    $price = cleardata($_POST['product_price']);
                    $discount = cleardata($_POST['discount']);
                    $articles = cleardata($_POST['articles']);
                    //$tags = cleardata($_POST['tags']);
                    $tags_new = $_POST['tags'];
                    $tagValues = []; // Initialize an empty array to store the tag values
    
    foreach ($tags_new as $tagss) {
        // Append each tag value to the $tagValues array
        $tagValues[] = $tagss;
    }
    
    $tags = implode(",", $tagValues);
                    $product_featured = cleardata($_POST['product_featured']);
                    $product_status = cleardata($_POST['product_status']);
                    $product_image = (!empty($imagename) ? implode(',',$imagename) : NULL);
                    $product_video = $videoname != '' ? $videoname : NULL;

                    try {
                        $statment = $connect->prepare("INSERT INTO products (product_id,product_title,product_description,product_type,product_featured,product_status,product_price,discount,wyslt,benefits,technology,hiworks,htuse,tips,articles,tags,product_image,product_video) VALUES (null, :product_title,:product_description,:product_type,:product_featured,:product_status,:product_price,:discount,:wyslt,:benefits,:technology,:hiworks,:htuse,:tips,:articles,:tags,:product_image,:product_video)");

                        $statment->execute(array(
                            ':product_title' => $product_title,
                            ':product_description' => $product_description,
                            ':product_type' => $product_type,
                            ':product_featured' => $product_featured,
                            ':product_status' => $product_status,
                            ':product_price' => $price,
                            ':discount' => $discount,
                            ':tags' => $tags,
                            ':wyslt' => $wyslt,
                            ':benefits' => $benefits,
                            ':technology' => $technology,
                            ':hiworks' => $hiworks,
                            ':htuse' => $htuse,
                            ':tips' => $tips,
                            ':articles' => $articles,
                            ':product_image' => $product_image,
                            ':product_video' => $product_video
                        ));
                    } catch (PDOException $e) {
                        // Handle errors
                        $response = [
                            'status' => false,
                            'error' => $e->getMessage()
                        ];
                    }
                }
                
                if (cleardata($_POST['product_type']) == 10) { //	Skin Care
                    $imagename = [];
                    // $product_image1 = $_FILES['product_image_1'];
                    $product_image1 = $_FILES['new_upload_image'];
                    foreach ($product_image1['name'] as $key => $value) {
                        $product_image = $value;
                        $imagefile = explode(".", $product_image);
                        $imagename[] = $renamefile = 'product_' . round(microtime(true)) . rand(10, 100) . '.' . end($imagefile);
                        $product_image_upload = '../' . $items_config['images_folder'] . '/';
                        move_uploaded_file($product_image1['tmp_name'][$key], $product_image_upload . $renamefile);
                    }

                    if(isset($_FILES['video_filw']['name']) && !empty($_FILES['video_filw']['name'])) {
                        $product_image = $_FILES['video_filw']['name'];
                        $imagefile = explode(".", $product_image);
                        $videoname = 'product_' . round(microtime(true)) . rand(10, 100) . '.' . end($imagefile);
                        $product_image_upload = '../' . $items_config['video_folder'] . '/';
                        move_uploaded_file($_FILES['video_filw']['tmp_name'], $product_image_upload . $videoname);
                    }
                    
                    $product_type = cleardata($_POST['product_type']); //
                    $size = cleardata($_POST['size']); //
                    $product_title = cleardata($_POST['product_title']); //
                    $product_description = cleardata($_POST['product_description']); //
                    $wyslt = cleardata($_POST['wyslt']); //
                    $key_ingredient = cleardata($_POST['key_ingredient']); //
                    $hiworks = cleardata($_POST['hiworks']); //
                    $htuse = cleardata($_POST['htuse']); //
                    $tips = cleardata($_POST['tips']); //
                    $one_time_price = cleardata($_POST['one_time_price']); //
                    $discount = cleardata($_POST['discount']); //
                    $price_30_days = cleardata($_POST['price_30_days']);
                    $desc_30 = cleardata($_POST['desc_30']);
                    $price_60_days = cleardata($_POST['price_60_days']);
                    $desc_60 = cleardata($_POST['desc_60']);
                    $price_90_days = cleardata($_POST['price_90_days']);
                    $desc_90 = cleardata($_POST['desc_90']);
                    $price_120_days = cleardata($_POST['price_120_days']);
                    $desc_120 = cleardata($_POST['desc_120']);
                    $articles = cleardata($_POST['articles']); //
                    //$tags = cleardata($_POST['tags']); //
                    $tags_new = $_POST['tags'];
                    $tagValues = []; // Initialize an empty array to store the tag values
    
    foreach ($tags_new as $tagss) {
        // Append each tag value to the $tagValues array
        $tagValues[] = $tagss;
    }
    
    $tags = implode(",", $tagValues);
                    $product_featured = cleardata($_POST['product_featured']); //
                    $product_status = cleardata($_POST['product_status']); //
                    $product_image = (!empty($imagename) ? implode(',',$imagename) : NULL);
                    $product_video = $videoname != '' ? $videoname : NULL;
                    try {
                        $statment = $connect->prepare("INSERT INTO products (product_id,product_title,product_description,product_type,product_featured,product_status,one_time_price,discount,wyslt,hiworks,htuse,tips,articles,tags,size,key_ingredient,price_30_days,desc_30,price_60_days,desc_60,price_90_days,desc_90,price_120_days,desc_120,product_image,product_video) VALUES (null, :product_title,:product_description,:product_type,:product_featured,:product_status,:one_time_price,:discount,:wyslt,:hiworks,:htuse,:tips,:articles,:tags,:size,:key_ingredient,:price_30_days,:desc_30,:price_60_days,:desc_60,:price_90_days,:desc_90,:price_120_days,:desc_120,:product_image,:product_video)");

                        $statment->execute(array(
                            ':product_title' => $product_title,
                            ':product_description' => $product_description,
                            ':product_type' => $product_type,
                            ':product_featured' => $product_featured,
                            ':product_status' => $product_status,
                            ':one_time_price' => $one_time_price,
                            ':discount' => $discount,
                            ':tags' => $tags,
                            ':wyslt' => $wyslt,
                            ':hiworks' => $hiworks,
                            ':htuse' => $htuse,
                            ':tips' => $tips,
                            ':articles' => $articles,
                            ':size' => $size,
                            ':key_ingredient' => $key_ingredient,
                            ':price_30_days' => $price_30_days,
                            ':desc_30' => $desc_30,
                            ':price_60_days' => $price_60_days,
                            ':desc_60' => $desc_60,
                            ':price_90_days' => $price_90_days,
                            ':desc_90' => $desc_90,
                            ':price_120_days' => $price_120_days,
                            ':desc_120' => $desc_120,
                            ':product_image' =>  $product_image,
                            ':product_video' => $product_video
                        ));
                    } catch (PDOException $e) {
                        // Handle errors
                        $response = [
                            'status' => false,
                            'error' => $e->getMessage()
                        ];
                        // die("Connection failed: " . $e->getMessage());
                    }
                }

                if (cleardata($_POST['product_type']) == 11) { //Accidental Warranty
                    $product_image1 = $_FILES['product_image'];
                    $product_image = $product_image1['name'];
                    $imagefile = explode(".", $product_image);
                    $renamefile = round(microtime(true)) . rand(10, 100) . '.' . end($imagefile);
                    $product_image_upload = '../' . $items_config['images_folder'] . '/';
                    move_uploaded_file($product_image1['tmp_name'], $product_image_upload . 'product_' . $renamefile);

                    $product_type = cleardata($_POST['product_type']);
                    $product_title = cleardata($_POST['product_title']);
                    $product_description = cleardata($_POST['product_description']);
                    $price = cleardata($_POST['product_price']);
                    $discount = cleardata($_POST['discount']);
                    $product_featured = cleardata($_POST['product_featured']);
                    $product_status = cleardata($_POST['product_status']);
                    $product_image = 'product_' . $renamefile;
                    // $tags = cleardata($_POST['tags']); 
                    try {
                        $statment = $connect->prepare("INSERT INTO products (product_id,product_title,product_description,product_type,product_featured,product_status,product_price,discount,product_image) VALUES (null, :product_title,:product_description,:product_type,:product_featured,:product_status,:product_price,:discount,:product_image)");

                        $statment->execute(array(
                            ':product_title' => $product_title,
                            ':product_description' => $product_description,
                            ':product_type' => $product_type,
                            ':product_featured' => $product_featured,
                            ':product_status' => $product_status,
                            ':product_price' => $price,
                            ':discount' => $discount,
                            ':product_image' => $product_image,
                        ));
                    } catch (PDOException $e) {
                        // Handle errors
                        $response = [
                            'status' => false,
                            'error' => $e->getMessage()
                        ];
                    }
                }
                
                if (cleardata($_POST['product_type']) == 12) { //Packages
                    $imagename = [];
                    // $product_image1 = $_FILES['product_image_1'];
                    $product_image1 = $_FILES['new_upload_image'];
                    foreach ($product_image1['name'] as $key => $value) {
                        $product_image = $value;
                        $imagefile = explode(".", $product_image);
                        $renamefile = 'product_' . round(microtime(true)) . rand(10, 100) . '.' . end($imagefile);
                        $imagename[] =	$renamefile;
                        $product_image_upload = '../' . $items_config['images_folder'] . '/';
                        move_uploaded_file($product_image1['tmp_name'][$key], $product_image_upload . $renamefile);
                    }
                    $product_type = cleardata($_POST['product_type']);
                    $product_title = cleardata($_POST['product_title']);
                    $product_description = cleardata($_POST['product_description']);
                    $wyslt = cleardata($_POST['wyslt']);
                    $whats_include = cleardata($_POST['ws_incl']);
                    $price = cleardata($_POST['product_price']);
                    $discount = cleardata($_POST['discount']);
                    $price_30_days = cleardata($_POST['price_30_days']);
                    $desc_30 = cleardata($_POST['desc_30']);
                    $price_60_days = cleardata($_POST['price_60_days']);
                    $desc_60 = cleardata($_POST['desc_60']);
                    $price_90_days = cleardata($_POST['price_90_days']);
                    $desc_90 = cleardata($_POST['desc_90']);
                    $product_status = cleardata($_POST['product_status']);
                    $product_image = (!empty($imagename) ? implode(',',$imagename) : NULL);
                    try {
                        $statment = $connect->prepare("INSERT INTO products (product_id,product_title,product_description,product_type,product_status,product_price,discount,wyslt,ws_incl,price_30_days,desc_30,price_60_days,desc_60,price_90_days,desc_90,product_image) VALUES (null, :product_title,:product_description,:product_type,:product_status,:product_price,:discount,:wyslt,:whats_include,:price_30_days,:desc_30,:price_60_days,:desc_60,:price_90_days,:desc_90,:product_image)");

                        $statment->execute(array(
                            ':product_title' => $product_title,
                            ':product_description' => $product_description,
                            ':product_type' => $product_type,
                            ':product_status' => $product_status,
                            ':product_price' => $price,
                            ':discount' => $discount,
                            ':wyslt' => $wyslt,
                            ':whats_include' => $whats_include,
                            ':price_30_days' => $price_30_days,
                            ':desc_30' => $desc_30,
                            ':price_60_days' => $price_60_days,
                            ':desc_60' => $desc_60,
                            ':price_90_days' => $price_90_days,
                            ':desc_90' => $desc_90,
                            ':product_image' => $product_image
                        ));
                    } catch (PDOException $e) {
                        // Handle errors
                        $response = [
                            'status' => false,
                            'error' => $e->getMessage()
                        ];
                    }
                }
                
                $response = [
                    'status' => true,
                    'redirect' => SITE_URL . '/controller/products.php'
                ];
            }

            //Edit Product
            if(cleardata($_POST['product_fun']) == "edit") {
                $product_id = cleardata($_POST['product_id']);

                if (cleardata($_POST['product_type']) == 6) { //Accessories
                    $imagename = [];
                    if(isset($_POST['uploaded_images']) && !empty($_POST['uploaded_images'])) {
                        $imagename = $_POST['uploaded_images'];
                    }

                    if(isset($_FILES['new_upload_image']) && !empty($_FILES['new_upload_image'])) {
                        $product_image1 = $_FILES['new_upload_image'];
                        foreach ($product_image1['name'] as $key => $value) {
                            $product_image = $value;
                            $imagefile = explode(".", $product_image);
                            $imagename[] =	$renamefile = 'product_' . round(microtime(true)) . rand(10, 100) . '.' . end($imagefile);
                            $product_image_upload = '../' . $items_config['images_folder'] . '/';
                            move_uploaded_file($product_image1['tmp_name'][$key], $product_image_upload . $renamefile);
                        }
                    }

                    $product_type = cleardata($_POST['product_type']);

                    $price = cleardata($_POST['product_price']);
                    $discount = cleardata($_POST['discount']);
                    $product_status = cleardata($_POST['product_status']);
                    $product_title = cleardata($_POST['product_title']);
                    $product_description = cleardata($_POST['product_description']);
                    $product_featured = cleardata($_POST['product_featured']);
                    $product_image = (!empty($imagename) ? implode(',',$imagename) : NULL);

                    try {
                        $statement = $connect->prepare("UPDATE products SET 
                            product_title = :product_title, 
                            product_description = :product_description, 
                            product_type = :product_type, 
                            product_featured = :product_featured, 
                            product_status = :product_status, 
                            product_price = :product_price, 
                            discount = :discount,
                            product_image = :product_image
                            WHERE product_id = :product_id");

                        $statement->execute(array(
                            ':product_title' => $product_title,
                            ':product_description' => $product_description,
                            ':product_type' => $product_type,
                            ':product_featured' => $product_featured,
                            ':product_status' => $product_status,
                            ':product_price' => $price,
                            ':discount' => $discount,
                            ':product_image' => $product_image,
                            ':product_id' => $product_id,
                        ));
                    } catch (PDOException $e) {
                        // Handle errors
                        $response = [
                            'status' => false,
                            'error' => $e->getMessage()
                        ];
                    }
                }

                if (cleardata($_POST['product_type']) == 8) { //Devices
                    $imagename = [];
                    $videoname = '';
                    
                    if(isset($_POST['uploaded_images']) && !empty($_POST['uploaded_images'])) {
                        $imagename = $_POST['uploaded_images'];
                    }

                    if(isset($_FILES['new_upload_image']) && !empty($_FILES['new_upload_image'])) {
                        $product_image1 = $_FILES['new_upload_image'];
                        foreach ($product_image1['name'] as $key => $value) {
                            $product_image = $value;
                            $imagefile = explode(".", $product_image);
                            $imagename[] =	$renamefile = 'product_' . round(microtime(true)) . rand(10, 100) . '.' . end($imagefile);
                            $product_image_upload = '../' . $items_config['images_folder'] . '/';
                            move_uploaded_file($product_image1['tmp_name'][$key], $product_image_upload . $renamefile);
                        }
                    }

                    if(isset($_FILES['video_filw']['name']) && !empty($_FILES['video_filw']['name'])) {
                        $product_image = $_FILES['video_filw']['name'];
                        $imagefile = explode(".", $product_image);
                        $videoname = 'product_' . round(microtime(true)) . rand(10, 100) . '.' . end($imagefile);
                        $product_image_upload = '../' . $items_config['video_folder'] . '/';
                        move_uploaded_file($_FILES['video_filw']['tmp_name'], $product_image_upload . $videoname);
                    } else if(isset($_POST['uploaded_video']) && $_POST['uploaded_video'] != '') {
                        $videoname = $_POST['uploaded_video'];
                    }

                    $product_type = cleardata($_POST['product_type']);
                    $product_title = cleardata($_POST['product_title']);
                    $product_description = cleardata($_POST['product_description']);
                    $wyslt = cleardata($_POST['wyslt']);
                    $technology = cleardata($_POST['technology']);
                    $benefits = cleardata($_POST['benefits']);
                    $hiworks = cleardata($_POST['hiworks']);
                    $htuse = cleardata($_POST['htuse']);
                    $tips = cleardata($_POST['tips']);
                    $price = cleardata($_POST['product_price']);
                    $discount = cleardata($_POST['discount']);
                    $articles = cleardata($_POST['articles']);
                    $tags = cleardata($_POST['tags']);
                    $product_featured = cleardata($_POST['product_featured']);
                    $product_status = cleardata($_POST['product_status']);
                    $product_image = (!empty($imagename) ? implode(',',$imagename) : NULL);
                    $product_video = $videoname != '' ? $videoname : NULL;

                    try {
                        $statement = $connect->prepare("UPDATE products SET 
                            product_title = :product_title, 
                            product_description = :product_description, 
                            product_type = :product_type, 
                            product_featured = :product_featured, 
                            product_status = :product_status, 
                            product_price = :product_price, 
                            discount = :discount,
                            wyslt = :wyslt,
                            benefits = :benefits,
                            technology = :technology,
                            hiworks = :hiworks, 
                            htuse = :htuse,
                            tips = :tips,
                            articles = :articles,
                            tags = :tags,
                            product_image = :product_image,
                            product_video = :product_video
                            WHERE product_id = :product_id");

                        $statement->execute(array(
                            ':product_title' => $product_title,
                            ':product_description' => $product_description,
                            ':product_type' => $product_type,
                            ':product_featured' => $product_featured,
                            ':product_status' => $product_status,
                            ':product_price' => $price,
                            ':discount' => $discount,
                            ':tags' => $tags,
                            ':wyslt' => $wyslt,
                            ':benefits' => $benefits,
                            ':technology' => $technology,
                            ':hiworks' => $hiworks,
                            ':htuse' => $htuse,
                            ':tips' => $tips,
                            ':articles' => $articles,
                            ':product_image' => $product_image,
                            ':product_video' => $product_video,
                            ':product_id' => $product_id,
                        ));
                    } catch (PDOException $e) {
                        // Handle errors
                        $response = [
                            'status' => false,
                            'error' => $e->getMessage()
                        ];
                    }
                }

                if (cleardata($_POST['product_type']) == 10) { //	Skin Care

                    $imagename = [];
                    if(isset($_POST['uploaded_images']) && !empty($_POST['uploaded_images'])) {
                        $imagename = $_POST['uploaded_images'];
                    }

                    if(isset($_FILES['new_upload_image']) && !empty($_FILES['new_upload_image'])) {
                        $product_image1 = $_FILES['new_upload_image'];
                        foreach ($product_image1['name'] as $key => $value) {
                            $product_image = $value;
                            $imagefile = explode(".", $product_image);
                            $imagename[] = $renamefile = 'product_' . round(microtime(true)) . rand(10, 100) . '.' . end($imagefile);
                            $product_image_upload = '../' . $items_config['images_folder'] . '/';
                            move_uploaded_file($product_image1['tmp_name'][$key], $product_image_upload . $renamefile);
                        }
                    }

                    $videoname = '';
                    if(isset($_FILES['video_filw']['name']) && !empty($_FILES['video_filw']['name'])) {
                        $product_image = $_FILES['video_filw']['name'];
                        $imagefile = explode(".", $product_image);
                        $videoname = 'product_' . round(microtime(true)) . rand(10, 100) . '.' . end($imagefile);
                        $product_image_upload = '../' . $items_config['video_folder'] . '/';
                        move_uploaded_file($_FILES['video_filw']['tmp_name'], $product_image_upload . $videoname);
                    } else if(isset($_POST['uploaded_video']) && $_POST['uploaded_video'] != '') {
                        $videoname = $_POST['uploaded_video'];
                    }

                    $product_type = cleardata($_POST['product_type']); //
                    $size = cleardata($_POST['size']); //
                    $product_title = cleardata($_POST['product_title']); //
                    $product_description = cleardata($_POST['product_description']); //
                    $wyslt = cleardata($_POST['wyslt']); //
                    $key_ingredient = cleardata($_POST['key_ingredient']); //
                    $hiworks = cleardata($_POST['hiworks']); //
                    $htuse = cleardata($_POST['htuse']); //
                    $tips = cleardata($_POST['tips']); //
                    $one_time_price = cleardata($_POST['one_time_price']); //
                    $discount = cleardata($_POST['discount']); //
                    $price_30_days = cleardata($_POST['price_30_days']);
                    $desc_30 = cleardata($_POST['desc_30']);
                    $price_60_days = cleardata($_POST['price_60_days']);
                    $desc_60 = cleardata($_POST['desc_60']);
                    $price_90_days = cleardata($_POST['price_90_days']);
                    $desc_90 = cleardata($_POST['desc_90']);
                    $price_120_days = cleardata($_POST['price_120_days']);
                    $desc_120 = cleardata($_POST['desc_120']);
                    $articles = cleardata($_POST['articles']); //
                    //$tags = cleardata($_POST['tags']); //
                    //$tags = '6 9'; //

                     $tags_new = $_POST['tags'];
                    $tagValues = []; // Initialize an empty array to store the tag values
    
                    foreach ($tags_new as $tagss) {
                        // Append each tag value to the $tagValues array
                        $tagValues[] = $tagss;
                    }
                    
                    $tags = implode(",", $tagValues);
                    


                    $product_featured = cleardata($_POST['product_featured']); //
                    $product_status = cleardata($_POST['product_status']); //
                    $product_image = (!empty($imagename) ? implode(',',$imagename) : NULL);
                    $product_video = $videoname != '' ? $videoname : NULL;
                    try {
                        $statement = $connect->prepare("UPDATE products SET 
                            product_title = :product_title, 
                            product_description = :product_description, 
                            product_type = :product_type, 
                            product_featured = :product_featured, 
                            product_status = :product_status, 
                            one_time_price = :one_time_price, 
                            discount = :discount,
                            wyslt = :wyslt,
                            hiworks = :hiworks, 
                            htuse = :htuse,
                            tips = :tips,
                            articles = :articles,
                            tags = :tags,
                            size = :size,
                            key_ingredient = :key_ingredient,
                            price_30_days = :price_30_days, 
                            desc_30 = :desc_30,
                            price_60_days = :price_60_days, 
                            desc_60 = :desc_60,
                            price_90_days = :price_90_days, 
                            desc_90 = :desc_90,
                            price_120_days = :price_120_days,
                            desc_120 = :desc_120,
                            product_image = :product_image,
                            product_video = :product_video
                            WHERE product_id = :product_id");

                        $statement->execute(array(
                            ':product_title' => $product_title,
                            ':product_description' => $product_description,
                            ':product_type' => $product_type,
                            ':product_featured' => $product_featured,
                            ':product_status' => $product_status,
                            ':one_time_price' => $one_time_price,
                            ':discount' => $discount,
                            ':tags' => $tags,
                            ':wyslt' => $wyslt,
                            ':hiworks' => $hiworks,
                            ':htuse' => $htuse,
                            ':tips' => $tips,
                            ':articles' => $articles,
                            ':size' => $size,
                            ':key_ingredient' => $key_ingredient,
                            ':price_30_days' => $price_30_days,
                            ':desc_30' => $desc_30,
                            ':price_60_days' => $price_60_days,
                            ':desc_60' => $desc_60,
                            ':price_90_days' => $price_90_days,
                            ':desc_90' => $desc_90,
                            ':price_120_days' => $price_120_days,
                            ':desc_120' => $desc_120,
                            ':product_image' =>  $product_image,
                            ':product_video' => $product_video,
                            ':product_id' => $product_id,
                        ));
                    } catch (PDOException $e) {
                        // Handle errors
                        $response = [
                            'status' => false,
                            'error' => $e->getMessage()
                        ];
                        // die("Connection failed: " . $e->getMessage());
                    }
                }

                if (cleardata($_POST['product_type']) == 11) { //Accidental Warranty
                    $renamefile = '';
                    if(isset($_FILES['product_image']['name']) && !empty($_FILES['product_image']['name'])) {
                        $product_image1 = $_FILES['product_image'];
                        $product_image = $product_image1['name'];
                        $imagefile = explode(".", $product_image);
                        $renamefile = 'product_' . round(microtime(true)) . rand(10, 100) . '.' . end($imagefile);
                        $product_image_upload = '../' . $items_config['images_folder'] . '/';
                        move_uploaded_file($product_image1['tmp_name'], $product_image_upload . $renamefile);
                    } else if(isset($_POST['single_uploaded_images']) && $_POST['single_uploaded_images'] != '') {
                        $renamefile = $_POST['single_uploaded_images'];
                    }

                    $product_type = cleardata($_POST['product_type']);
                    $product_title = cleardata($_POST['product_title']);
                    $product_description = cleardata($_POST['product_description']);
                    $price = cleardata($_POST['product_price']);
                    $discount = cleardata($_POST['discount']);
                    $product_featured = cleardata($_POST['product_featured']);
                    $product_status = cleardata($_POST['product_status']);
                    $product_image = $renamefile;
                    // $tags = cleardata($_POST['tags']); 
                    try {
                        $statement = $connect->prepare("UPDATE products SET 
                            product_title = :product_title, 
                            product_description = :product_description, 
                            product_type = :product_type, 
                            product_featured = :product_featured, 
                            product_status = :product_status, 
                            product_price = :product_price, 
                            discount = :discount,
                            product_image = :product_image
                            WHERE product_id = :product_id");

                        $statement->execute(array(
                            ':product_title' => $product_title,
                            ':product_description' => $product_description,
                            ':product_type' => $product_type,
                            ':product_featured' => $product_featured,
                            ':product_status' => $product_status,
                            ':product_price' => $price,
                            ':discount' => $discount,
                            ':product_image' => $product_image,
                            ':product_id' => $product_id,
                        ));
                    } catch (PDOException $e) {
                        // Handle errors
                        $response = [
                            'status' => false,
                            'error' => $e->getMessage()
                        ];
                    }
                }
                
                if (cleardata($_POST['product_type']) == 12) { //Packages
                    $imagename = [];
                    if(isset($_POST['uploaded_images']) && !empty($_POST['uploaded_images'])) {
                        $imagename = $_POST['uploaded_images'];
                    }
                    if(isset($_FILES['new_upload_image']) && !empty($_FILES['new_upload_image'])) {
                        $product_image1 = $_FILES['new_upload_image'];
                        foreach ($product_image1['name'] as $key => $value) {
                            $product_image = $value;
                            $imagefile = explode(".", $product_image);
                            $renamefile = 'product_' . round(microtime(true)) . rand(10, 100) . '.' . end($imagefile);
                            $imagename[] =	$renamefile;
                            $product_image_upload = '../' . $items_config['images_folder'] . '/';
                            move_uploaded_file($product_image1['tmp_name'][$key], $product_image_upload . $renamefile);
                        }
                    }
                    $product_type = cleardata($_POST['product_type']);
                    $product_title = cleardata($_POST['product_title']);
                    $product_description = cleardata($_POST['product_description']);
                    $wyslt = cleardata($_POST['wyslt']);
                    $whats_include = cleardata($_POST['ws_incl']);
                    $price = cleardata($_POST['product_price']);
                    $discount = cleardata($_POST['discount']);
                    $price_30_days = cleardata($_POST['price_30_days']);
                    $desc_30 = cleardata($_POST['desc_30']);
                    $price_60_days = cleardata($_POST['price_60_days']);
                    $desc_60 = cleardata($_POST['desc_60']);
                    $price_90_days = cleardata($_POST['price_90_days']);
                    $desc_90 = cleardata($_POST['desc_90']);
                    $product_status = cleardata($_POST['product_status']);
                    $product_image = (!empty($imagename) ? implode(',',$imagename) : NULL);
                    try {
                        $statement = $connect->prepare("UPDATE products SET 
                            product_title = :product_title, 
                            product_description = :product_description, 
                            product_type = :product_type,
                            product_status = :product_status, 
                            product_price = :product_price, 
                            discount = :discount,
                            wyslt = :wyslt,
                            ws_incl = :ws_incl,
                            price_30_days = :price_30_days, 
                            desc_30 = :desc_30,
                            price_60_days = :price_60_days, 
                            desc_60 = :desc_60,
                            price_90_days = :price_90_days, 
                            desc_90 = :desc_90,
                            product_image = :product_image
                            WHERE product_id = :product_id");

                        $statement->execute(array(
                            ':product_title' => $product_title,
                            ':product_description' => $product_description,
                            ':product_type' => $product_type,
                            ':product_status' => $product_status,
                            ':product_price' => $price,
                            ':discount' => $discount,
                            ':wyslt' => $wyslt,
                            ':ws_incl' => $whats_include,
                            ':price_30_days' => $price_30_days,
                            ':desc_30' => $desc_30,
                            ':price_60_days' => $price_60_days,
                            ':desc_60' => $desc_60,
                            ':price_90_days' => $price_90_days,
                            ':desc_90' => $desc_90,
                            ':product_image' => $product_image,
                            ':product_id' => $product_id,
                        ));
                    } catch (PDOException $e) {
                        // Handle errors
                        $response = [
                            'status' => false,
                            'error' => $e->getMessage()
                        ];
                    }
                }

                $response = [
                    'status' => true,
                    'redirect' => SITE_URL . '/controller/products.php'
                ];
            }
        }
    }
} else {
    $response = [
        'status' => true,
        'redirect' => SITE_URL . '/controller/login.php'
    ];
}
header('Content-Type: application/json');
echo json_encode($response);