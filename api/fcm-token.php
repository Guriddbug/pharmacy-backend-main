<?php
header('Content-Type: application/json');
header("access-control-allow-origin: *");

require '../controller/data_config.php';


$response = [];
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (!isset($_POST['fcm_token']) && $_POST['fcm_token']!='') {
        $response['success'] = false;
        $response['error'] = 'Any of the required parameter is are missing';
        $response['required_parameters'] = 'fcm_token';
    } else {
        $user_id = $_POST['user_id'];
        $token = $_POST['fcm_token'];

        $sql = "INSERT INTO fcm_tokens (user_id, token)
            VALUES ('" . $user_id . "', '" . $token . "')";

        if ($conn->query($sql) === TRUE) {
            $response['success'] = true;
            $response['message'] = 'FCM token saved successfully!';
        } else {
            $response['success'] = true;
            $response['message'] = 'Can\'t save the fcm token';
            $response['error'] = $conn->error;
        }
    }


}
echo json_encode($response);


?>