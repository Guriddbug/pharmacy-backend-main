<?php 
session_start();

echo "Tsetxxxxxxxxxx";

if (isset($_SESSION['manager_email'])){
    
    header('Location: ./controller/home.php');
} else {
    
    header('Location: ./controller/login.php');
}


?>