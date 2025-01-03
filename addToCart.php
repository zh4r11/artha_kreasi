<?php
include 'config.php'; // Include your database configuration

session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $productId = $_POST['productId'];
    $quantity = $_POST['quantity'];
    $userId = $_SESSION['id']; // Assuming the user is logged in

    // Check if the product already exists in the cart
    $sql = "SELECT * FROM keranjang WHERE id_pelanggan = '$userId' AND id_produk = '$productId'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Update the quantity if the product already exists
        $sql = "UPDATE keranjang SET qty = qty + $quantity WHERE id_pelanggan = '$userId' AND id_produk = '$productId'";
    } else {
        // Insert a new record if the product does not exist
        $sql = "INSERT INTO keranjang (id_pelanggan, id_produk, qty) VALUES ('$userId', '$productId', '$quantity')";
    }

    if ($conn->query($sql) === TRUE) {
        echo json_encode(['success' => true, 'message' => 'Product added to cart successfully!']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Error: ' . $conn->error]);
    }

    $conn->close();
}
?>