<?php ini_set('display_errors', 1);
error_reporting(E_ALL);


if (!isset($_SESSION)) {
    session_start();
}

if (!isset($_SESSION['manager_email'])) {
    header('Location: ./login.php');
    exit;
}

require '../admin/config.php';
require '../admin/functions.php';
require '../views/header.view.php';

$connect = connect($database);
if (!$connect) {
    header('Location: ./error.php');
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $register_code = cleardata($_POST['access_code']);
    $manager_email = cleardata($_SESSION['manager_email']);

    // Check if register_code is already used by another user
    $statement = $connect->prepare("SELECT * FROM managers WHERE register_code = :register_code AND manager_email != :manager_email");
    $statement->execute([
        ':register_code' => $register_code,
        ':manager_email' => $manager_email,
    ]);

    if ($statement->rowCount() > 0) {
        // Register code already used by another user
        header('Location: ' . $_SERVER['PHP_SELF'] . '?error=codeUsed');
        exit;
    }

    // Update the manager's register_code
    $statement = $connect->prepare("UPDATE managers SET register_code=:register_code WHERE manager_email=:manager_email LIMIT 1");
    $statement->execute([
        ':register_code' => $register_code,
        ':manager_email' => $manager_email,
    ]);

    $_SESSION['register_code'] = $register_code;

    header('Location: ' . $_SERVER['PHP_SELF'] . '?success=true');
    exit;
}

require '../views/new.access_code.view.php';
require '../views/footer.view.php';


