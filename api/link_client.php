<?php ini_set('display_errors', 1);
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


$api_access_key = '1212t4as56aHHGASJJS323POA';
$register_code = cleardata($_POST['access_code']);
$uid = cleardata($_POST['uid']);
$apiKey = cleardata($_POST['api_key']);

// Validate required fields
if (empty($register_code) || empty($uid) || empty($apiKey)) {
    echo json_encode(['error' => 'Required fields are missing']);
    exit;
}

// Validate API key
if ($apiKey !== $api_access_key) {
    echo json_encode(['error' => 'Invalid API key']);
    exit;
}

$statement = $connect->prepare("SELECT * FROM managers WHERE register_code = :register_code");
$statement->execute([':register_code' => $register_code,]);

if ($statement->rowCount() <= 0) {
    echo json_encode(['error' => 'Invalid register code']);
    exit;
}

$manager = $statement->fetch(PDO::FETCH_ASSOC);
if (!isset($manager['manager_id'])) {
    echo json_encode(['error' => 'Manager not found']);
    exit;
}

$managerId = $manager['manager_id'];

// Check if this UID is already linked
$checkLink = $connect->prepare("SELECT * FROM manager_clients WHERE client_id = :uid AND manager_id = :manager_id");
$checkLink->execute([':uid' => $uid, ':manager_id' => $managerId]);

if ($checkLink->rowCount() > 0) {
    echo json_encode(['error' => 'This user is already linked to this manager']);
    exit;
}
// Link Firebase UID with local manager
$linkUser = $connect->prepare("INSERT INTO manager_clients (manager_id, client_id, register_code) VALUES (:manager_id, :uid, :register_code)");
$success = $linkUser->execute([':manager_id' => $managerId, ':uid' => $uid, ':register_code' => $register_code,]);

if ($success) {
    echo json_encode(['success' => 'User successfully linked']);
} else {
    echo json_encode(['error' => 'Failed to link user, please try again']);
}
