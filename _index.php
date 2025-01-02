<?php
include 'config.php';

// Contoh query
$sql = "SELECT * FROM produk";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "ID: " . $row["id"] . " - Nama: " . $row["nama"] . "<br>";
    }
} else {
    echo "Tidak ada data";
}
?>