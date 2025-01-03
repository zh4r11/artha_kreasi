<?php
include 'config.php';

// Get product ID from the request
$productId = $_GET['id'];

// Fetch product data
$sql = "SELECT * FROM produk WHERE id = $productId";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $product = $result->fetch_assoc();
    
    // Return product data as JSON
    echo json_encode([
        'name' => $product['nama_produk'],
        'price' => $product['harga_produk'],
        'description' => $product['deskripsi'],
        'image1' => $product['foto1'],
        'image2' => $product['foto2'],
        'image3' => $product['foto3'],
        'image4' => $product['foto4']
    ]);
} else {
    echo json_encode(['error' => 'Product not found.']);
}

$conn->close();
?>