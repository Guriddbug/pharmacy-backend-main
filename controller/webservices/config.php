<?php

error_reporting(E_ALL);
ini_set('display_errors', '1');

// URL PROJECT for deployment
define ('SITE_URL', 'http://localhost/pharmacy-backend-main');



$database = array(
    'host' => 'localhost',
    'db'   => 'pharmacy-database',
    'user' => 'root',
    'pass' => '',
);

$email_config = array(
'email_address' => 'EMAIL_ADDRESS_HERE',
'email_password' => 'PASSWORD_HERE',
'email_subject' => 'EMAIL_SUBJECT_HERE',
'email_name' => 'EMAIL_NAME_HERE',
'smtp_host' => 'EMAIL_HOST_HERE',
'smtp_port' => 'EMAIL_PORT_HERE',
'smtp_encrypt' => 'tls'
);

$items_config = array(
    'items_per_page' => '8',
    'images_folder' => 'images/',
    'video_folder' => 'videos/'
);


?>