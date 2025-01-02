<?php
    include 'config.php';
    // Start the session
    session_start();

    // Check if the form is submitted
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // Get the form data
        $email = $_POST['email'];
        $password = $_POST['password'];
        $confirm_password = $_POST['confirm_password'];
        $name = $_POST['name'];
        $telp = $_POST['phoneNumber'];
        $address = $_POST['address'];

        // Validate the input
        if (empty($email) || empty($password) || empty($confirm_password)) {
            die('Please fill in all fields.');
        }

        if ($password !== $confirm_password) {
            die('Passwords do not match.');
        }

        // Check if the email already exists
        $stmt = $conn->prepare('SELECT id FROM pelanggan WHERE email = ?');
        $stmt->bind_param('s', $email);
    $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows > 0) {
            die('Email already exists. Please use a different email.');
        }

        // Hash the password
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        // Prepare and execute the query to insert the new user
        $stmt = $conn->prepare('INSERT INTO pelanggan (email,nama_pelanggan, tlp_pelanggan, alamat_pelanggan, password) VALUES (?, ?,?,?,?)');
        $stmt->bind_param('sssss', $email,$name,$telp,$address, $hashed_password);
        if ($stmt->execute()) {
            // Registration successful
            $_SESSION['id'] = $stmt->insert_id; // Store user ID in session
            header('Location: index.php'); // Redirect to the dashboard or home page
            exit();
        } else {
            die('Registration failed. Please try again.');
        }

        // Close the database connection
        $stmt->close();
        $conn->close();
    }
?>