<?php
error_reporting(E_ALL);
session_start();
if (isset($_SESSION['manager_email'])) {

	require '../admin/config.php';
	require '../admin/functions.php';
	require '../views/header.view.php';
	require '../views/navbar.view.php';

	$errors = '';

	$connect = connect($database);
	if (!$connect) {
		header('Location: ' . SITE_URL . '/controller/error.php');
	}

	$types_lists = get_all_types($connect);
	$tags_lists = get_all_tags($connect);
	require '../views/new.product.view.php';
	require '../views/footer.view.php';
} else {
	header('Location: ' . SITE_URL . '/controller/login.php');
}
