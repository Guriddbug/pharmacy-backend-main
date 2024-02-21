<?php
header('Content-Type: application/json');
header("access-control-allow-origin: *");

require '../controller/data_config.php';

$response = [];
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $sql = "SELECT * FROM reminder";
    $result = mysqli_query($conn, $sql);
    $result =  mysqli_fetch_all($result, MYSQLI_ASSOC);
    
    $response['success'] = true;
    $response['reminders'] = $result;
    $response['message'] = 'Reminder added successfully!';

}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (empty($_POST['user_id']) || empty($_POST['product_id']) || empty($_POST['days']) || empty($_POST['morning_time']) || empty($_POST['evening_time'])) {
        $response['success'] = false;
        $response['error'] = 'Any of the required parameter is are missing';
        $response['required_parameters'] = 'user_id, product_id, days, morning_time, evening_time';
    } else {

        $user_id = $_POST['user_id'];
        $product_id = $_POST['product_id'];
        $days = $_POST['days'];
        $morning_time = $_POST['morning_time'];
        $evening_time = $_POST['evening_time'];

        $sql = "INSERT INTO reminder (user_id, product_id, days, morning_time, evening_time)
            VALUES ('" . $user_id . "', '" . $product_id . "', '" . $days . "', '" . $morning_time . "', '" . $evening_time . "')";

        if ($conn->query($sql) === TRUE) {
            $response['success'] = true;
            $response['reminder_id'] = $conn->insert_id;
            $response['message'] = 'Reminder added successfully!';
        } else {
            $response['success'] = true;
            $response['message'] = 'Can\'t add the reminder';
            $response['error'] = $conn->error;
        }
    }
}
echo json_encode($response);
?>