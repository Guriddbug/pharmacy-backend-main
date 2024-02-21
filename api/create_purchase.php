<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

require '../admin/config.php';
require '../admin/functions.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(['error' => 'Invalid request method']);
    exit;
}

$connect = connect($database);
if (!$connect) {
    echo json_encode(['error' => 'Database connection failed']);
    exit;
}

$uid = cleardata($_POST['uid']);
$finalPrice = cleardata($_POST['finalPrice']);
$productId = cleardata($_POST['productId']);
$userId = cleardata($_POST['userId']);
$discountCode = cleardata($_POST['discountCode']);
$quantity = cleardata($_POST['quantity']);
$selectedOption = cleardata($_POST['selectedOption']);

// Insert purchase data into the 'purchases' table
$insertQuery = "
    INSERT INTO purchases (final_price, product_id, user_id, discount_code, quantity, selected_option)
    VALUES (:final_price, :product_id, :user_id, :discount_code, :quantity, :selected_option)
";

$insertStatement = $connect->prepare($insertQuery);
$insertStatement->execute([
    ':final_price'      => $finalPrice,
    ':product_id'       => $productId,
    ':user_id'          => $userId,
    ':discount_code'    => $discountCode,
    ':quantity'         => $quantity,
    ':selected_option'  => $selectedOption,
]);

echo json_encode(['success' => 'Purchases successfully recorded']);
?>
