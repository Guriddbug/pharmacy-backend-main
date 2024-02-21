<?php

$page = 1;
if (!empty($_GET['page'])) {
    $page = filter_input(INPUT_GET, 'page', FILTER_VALIDATE_INT);
    if (false === $page) {
        $page = 1;
    }
}

$limit = 10;
if (!empty($_GET['limit'])) {
    $limit = filter_input(INPUT_GET, 'limit', FILTER_VALIDATE_INT);
}

$offset = ($page - 1) * $limit;

header('Content-Type: application/json');
header("access-control-allow-origin: *");

require './app_core.php';

$sqlQuery = "SELECT packages.* FROM packages";

$sqlQuery .= " ORDER BY packages.package_id DESC";

if (isset($_GET['page']) && !empty($_GET['page'])) {
    $sqlQuery .= " LIMIT " . $offset . "," . $limit;
}

if (isset($_GET['limit']) && !empty($_GET['limit']) && !isset($_GET['page'])) {
    $sqlQuery .= " LIMIT " . $limit;
}

$sentence = $connect->prepare($sqlQuery);

$sentence->execute();

$qResults = $sentence->fetchAll(PDO::FETCH_ASSOC);

$data = array();

foreach ($qResults as $row) {
    $id = $row['package_id'];
    $title = $row['package_title'];
    $description = $row['package_description'];
    $image = $row['post_image'];
    $oneTimePrice = $row['one_time_price'];
    $price30Days = $row['price_30_days'];
    $price60Days = $row['price_60_days'];
    $price90Days = $row['price_90_days'];
    $status = $row['package_status'];

    $data[] = array(
        'id' => $id,
        'title' => html_entity_decode($title),
        'description' => formatHTML($description),
        'image' => getImage($image),
        'one_time_price' => $oneTimePrice,
        'price_30_days' => $price30Days,
        'price_60_days' => $price60Days,
        'price_90_days' => $price90Days,
        'status' => $status
    );
}

print json_encode($data, JSON_NUMERIC_CHECK);

?>
