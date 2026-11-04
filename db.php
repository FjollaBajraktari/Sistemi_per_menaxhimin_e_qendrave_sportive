<?php
$host = 'localhost';
$db   = 'qendra_sportive';
$user = 'root';
$pass = '';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8mb4", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (\PDOException $e) {
    echo "Lidhja dështoi: " . $e->getMessage();
    exit();
}
?>