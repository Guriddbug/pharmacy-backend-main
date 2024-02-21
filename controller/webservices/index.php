<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);

require 'config.php';
require 'functions.php';

/*if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(['error' => 'Invalid request method']);
    exit;
}*/

$connect = connect($database);
if (!$connect) {
    echo json_encode(['error' => 'Database connection failed']);
    exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Handle POST request
    $user_id = $_POST['user_id'];
    $f_name = $_POST['f_name'];
    $l_name = $_POST['l_name'];
    $street_address = $_POST['street_address'];
    $address_line = $_POST['address_line'];
    $city = $_POST['city'];
    $state = $_POST['state'];
    $zipcode = $_POST['zipcode'];
    $phone_number = $_POST['phone_number'];

// Insert purchase data into the 'purchases' table
$insertQuery = "
    INSERT INTO shipping (user_id, f_name, l_name, street_address, address_line, city, state, zipcode, phone_number)
    VALUES (:user_id, :f_name, :l_name, :street_address, :address_line, :city, :state, :zipcode,:phone_number )
";

$insertStatement = $connect->prepare($insertQuery);
$insertStatement->execute([
    ':user_id'      => $user_id,
    ':f_name'       => $f_name,
    ':l_name'          => $l_name,
    ':street_address'    => $street_address,
    ':address_line'         => $address_line,
    ':city'  => $city,
    ':state'  => $state,
    ':zipcode'  => $zipcode,
    ':phone_number'  => $phone_number,
]);

$response = [
        'success' => 'Shipping successfully recorded',
        'data' => [
            'user_id' => $user_id,
            'f_name' => $f_name,
            'l_name' => $l_name,
            'street_address' => $street_address,
            'address_line' => $address_line,
            'city' => $city,
            'state' => $state,
            'zipcode' => $zipcode,
            'phone_number' => $phone_number,
        ]
    ];
echo "<pre>";
echo $response;
} else {
    // Handle GET request or other methods
    echo "This endpoint only accepts POST requests.";
}
?>
