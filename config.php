<?php
$host = "127.0.0.1"; // Host server
$username = "root"; // Username database
$password = ""; // Password (kosong untuk localhost)
$database = "artha_kreasi"; // Nama database

// Membuat koneksi ke database
$conn = new mysqli($host, $username, $password, $database);

// Cek koneksi
if ($conn->connect_error) {
    die("Koneksi ke database gagal: " . $conn->connect_error);
}
?>