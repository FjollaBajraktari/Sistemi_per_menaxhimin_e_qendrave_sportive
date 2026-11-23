<?php
header('Content-Type: application/json');
require_once 'db.php';

$method = $_SERVER['REQUEST_METHOD'];

if ($method === 'GET') {
    // Kthen listën e fushave sportive nga databaza
    try {
        $stmt = $pdo->query("SELECT * FROM fusha");
        $fields = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($fields);
    } catch (Exception $e) {
        echo json_encode(["success" => false, "message" => $e->getMessage()]);
    }
} 
elseif ($method === 'POST') {
    // Pranon të dhënat për rezervim të ri
    $data = json_decode(file_get_contents("php://input"), true);
    
    $fusha_id = $data['fusha_id'] ?? null;
    $emri_perdorusit = $data['emri_perdorusit'] ?? null;
    $data_rezervimit = $data['data_rezervimit'] ?? null;
    $ora_fillimit = $data['ora_fillimit'] ?? null;

    if ($fusha_id && $emri_perdorusit && $data_rezervimit && $ora_fillimit) {
        $stmt = $pdo->prepare("INSERT INTO rezervimet (fusha_id, emri_perdorusit, data_rezervimit, ora_fillimit) VALUES (?, ?, ?, ?)");
        if ($stmt->execute([$fusha_id, $emri_perdorusit, $data_rezervimit, $ora_fillimit])) {
            echo json_encode(["success" => true, "message" => "Rezervimi u krye me sukses!"]);
        } else {
            echo json_encode(["success" => false, "message" => "Gabim gjatë ruajtjes në databazë."]);
        }
    } else {
        echo json_encode(["success" => false, "message" => "Ju lutem plotësoni të gjitha fushat e kërkuara."]);
    }
}
?>