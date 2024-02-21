<?php
$response = [];

require '../controller/data_config.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['type']) && $_POST['type'] == 'reminder') {
        $sql = "SELECT * FROM reminder";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // output data of each row
            while ($row = $result->fetch_assoc()) {
                print_r($row);
            }
        }
        $conn->close();

    }
}

echo json_encode($response);
?>