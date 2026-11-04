<?php
require_once 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $full_name = $_POST['full_name'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Siguria: Hashing i fjalëkalimit (KJF-01)
    $password_hash = password_hash($password, PASSWORD_DEFAULT);

    $stmt = $pdo->prepare("INSERT INTO Users (full_name, email, password_hash) VALUES (?, ?, ?)");
    try {
        $stmt->execute([$full_name, $email, $password_hash]);
        echo "Lidhja u krijua me sukses!";
    } catch (PDOException $e) {
        echo "Gabim: Emaili mund të jetë i përdorur tashmë.";
    }
}
?>