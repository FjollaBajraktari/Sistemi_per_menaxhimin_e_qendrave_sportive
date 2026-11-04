<?php
require_once 'db.php';

$schedule_id = 1;

$check = $pdo->prepare("SELECT * FROM Bookings b JOIN Schedules s ON b.schedule_id = s.schedule_id WHERE s.schedule_id = ? AND b.status = 'Aktiv'");
$check->execute([$schedule_id]);

if ($check->rowCount() > 0) {
    
    header('Content-Type: application/json');
    echo json_encode([
        "success" => false,
        "error" => "TIME_SLOT_OCCUPIED",
        "message" => "Fusha eshte e zene ne kete orar."
    ]);
    exit();
} else {
    echo json_encode([
        "success" => true,
        "message" => "Fusha eshte e lire."
    ]);
}
?>