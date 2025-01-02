<?php
    include 'config.php';
    // Start the session
    session_start();

    // Check if the form is submitted
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // Get the form data
        $email = $_POST['email'];
        $password = $_POST['password'];

        // Validate the input
        if (empty($email) || empty($password)) {
            die('Please fill in all fields.');
        }

        

        // Prepare and execute the query to fetch the user
        $stmt = $conn->prepare('SELECT id, nama_pelanggan, password FROM pelanggan WHERE email = ?');
        $stmt->bind_param('s', $email);
        $stmt->execute();
        $stmt->store_result();

        // Check if the user exists
        if ($stmt->num_rows > 0) {
            $stmt->bind_result($id, $name, $hashed_password);
            $stmt->fetch();

            // Verify the password
            if (password_verify($password, $hashed_password)) {
                // Login successful
                $_SESSION['id'] = $id;
                $_SESSION['name'] = $name;
                header('Location: index.php'); // Redirect to the dashboard or home page
                exit();
            } else {
                die('Invalid email or password.');
            }
        } else {
            die('Invalid email or password.');
        }

        // Close the database connection
        $stmt->close();
        $conn->close();
    }
?>