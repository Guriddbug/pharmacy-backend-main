<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

require '../admin/config.php';
require '../admin/functions.php';

/*if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(['error' => 'Invalid request method']);
    exit;
}*/

$connect = connect($database);
if (!$connect) {
    echo json_encode(['error' => 'Database connection failed']);
    exit;
}

$user_id = 2;
$f_name = "Test First Name";
$l_name = "Test Last Name";
$street_address = "Test street line";
$address_line = "Test address line";
$city = "Test city";
$state = "Test State";
$zipcode = 136135;
$phone_number = 9876543210;

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

echo json_encode(['success' => 'Shipping successfully recorded']);
?>
