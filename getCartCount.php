<?php
session_start();
include 'config.php'; // Include your database connection file

$cartCount = 0; // Default cart count

if (isset($_SESSION['id'])) {
    $userId = $_SESSION['id'];
    
    // Query to get the cart count for the logged-in user
   $sql = "SELECT COUNT(keranjang.id) as cart_count, SUM(keranjang.qty * produk.harga_produk) as total_amount FROM keranjang INNER JOIN produk ON keranjang.id_produk = produk.id WHERE keranjang.id_pelanggan = $userId";
    $result = $conn->query($sql);
    
    if ($result && $result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $cartCount = $row['cart_count'];
        $totalAmount = $row['total_amount'];
    }
    
}

echo json_encode([
    'cartCount' => $cartCount,
    'totalAmount' => $totalAmount,
    ]); // Return the cart count as JSON
?>