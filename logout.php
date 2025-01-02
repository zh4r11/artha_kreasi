<?php
// Start the session
session_start();

// Destroy the session
session_destroy();

// Redirect the user to the login page or homepage
header('Location: index.php'); // Replace 'login.php' with your desired redirect page
exit();
?>