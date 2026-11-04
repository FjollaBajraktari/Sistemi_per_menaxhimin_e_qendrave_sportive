<?php
require_once 'db.php';
$stmt = $pdo->query("SELECT * FROM SportsFacilities WHERE is_active = 1");
$facilities = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>