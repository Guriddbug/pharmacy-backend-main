<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

require './app_core.php';

if ($_SERVER['REQUEST_METHOD'] !== 'GET') {
    echo json_encode(['error' => 'Invalid request method']);
    exit;
}

$connect = connect($database);
if (!$connect) {
    echo json_encode(['error' => 'Database connection failed']);
    exit;
}

// Retrieve user ID from parameters
$user_id = filter_input(INPUT_GET, 'userId', FILTER_SANITIZE_STRING);

// Validate user ID
if (empty($user_id)) {
    echo json_encode(['error' => 'User ID is missing']);
    exit;
}

$sqlQuery = "
    SELECT purchases.*, products.*, types.type_title
    FROM purchases
    JOIN products ON purchases.product_id = products.product_id
    LEFT JOIN types ON products.product_type = types.type_id
    WHERE purchases.user_id = :user_id
";

$sentence = $connect->prepare($sqlQuery);
$sentence->execute([':user_id' => $user_id]);
$qResults = $sentence->fetchAll(PDO::FETCH_ASSOC);

$data = array();

foreach ($qResults as $row) {
    $purchase_id = $row['purchase_id'];
    $final_price = $row['final_price'];
    $product_id = $row['product_id'];
    $user_id = $row['user_id'];
    $discount_code = $row['discount_code'];
    $quantity = $row['quantity'];
    $selected_option = $row['selected_option'];

    // Product information
    $product_data = [
        'product_id' => $row['product_id'],
        'product_title' => html_entity_decode($row['product_title']),
        'product_description' => formatHTML($row['product_description']),
        'product_image' => getImage($row['product_image']),
        'type_title' => isset($row['type_title']) ? html_entity_decode($row['type_title']) : '', // Check if key exists
        'product_featured' => $row['product_featured'],
        'product_price' => $row['product_price'],
        'product_link' => html_entity_decode($row['product_link']),
        'review_des' => $row['review_des'],
        'technology' => $row['technology'],
        'hiworks' => $row['hiworks'],
        'volumn' => $row['volumn'],
        'one_time_price' => $row['one_time_price'],
        'price_30_days' => $row['price_30_days'],
        'price_60_days' => $row['price_60_days'],
        'price_90_days' => $row['price_90_days'],
    ];

    $data[] = [
        'purchase_id' => $purchase_id,
        'final_price' => $final_price,
        'product_id' => $product_id,
        'user_id' => $user_id,
        'discount_code' => $discount_code,
        'quantity' => $quantity,
        'selected_option' => $selected_option,
        'product_info' => $product_data,
    ];
}

echo json_encode($data, JSON_NUMERIC_CHECK);
?>
