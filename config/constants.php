<?php
    //Start session
    session_start();



    // Create constants to store Non Repeating values
    define('SITEURL','http://localhost/food/');
    define('LOCALHOST', 'localhost');
    define('DB_USERNAME', 'root');
    define('DB_PASSWORD', '');
    define('DB_NAME', 'food_order');

    $conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD) or die(mysqli_error()); // Connect to the database
    $db_select = mysqli_select_db($conn, DB_NAME) or die(mysqli_error()); // Selecting DB

?>

