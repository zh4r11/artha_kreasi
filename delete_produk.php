<?php
include 'config.php'; // Menghubungkan ke database

if (isset($_GET['id_produk'])) {
    $id_produk = $_GET['id_produk'];

    // Query untuk menghapus data
    $sql = "DELETE FROM produk WHERE id_produk = $id_produk";
    if ($conn->query($sql) === TRUE) {
        echo "Produk berhasil dihapus!";
    } else {
        echo "Error: " . $conn->error;
    }
}
?>