<?php
session_start();
include 'config.php';

$response = ['success' => false, 'message' => ''];

if (isset($_GET['id'])) {
    $cartId = $_GET['id'];

    $sql = "DELETE FROM keranjang WHERE id = $cartId";
    if ($conn->query($sql) === TRUE) {
        $response['success'] = true;
        $response['message'] = 'Item deleted successfully.';
    } else {
        $response['message'] = 'Error deleting item: ' . $conn->error;
    }
} else {
    $response['message'] = 'Invalid request.';
}

header('Content-Type: application/json');
echo json_encode($response);
?>