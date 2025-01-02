<?php
include 'config.php'; // Menghubungkan ke database

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama_produk = $_POST['nama_produk'];
    $harga_produk = $_POST['harga_produk'];

    // Query untuk menambahkan data
    $sql = "INSERT INTO produk (nama_produk, harga_produk) VALUES ('$nama_produk', '$harga_produk')";
    if ($conn->query($sql) === TRUE) {
        echo "Produk berhasil ditambahkan!";
    } else {
        echo "Error: " . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Produk</title>
</head>
<body>
    <h1>Tambah Produk</h1>
    <form method="post" action="">
        <label for="nama_produk">Nama Produk:</label><br>
        <input type="text" id="nama_produk" name="nama_produk" required><br>
        <label for="harga_produk">Harga Produk:</label><br>
        <input type="number" id="harga_produk" name="harga_produk" required><br><br>
        <button type="submit">Tambah</button>
    </form>
</body>
</html>