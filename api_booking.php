<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $table = isset($_POST["table"]) ? $_POST["table"] : null;
    $col1 = isset($_POST["col1"]) ? $_POST["col1"] : null;
    $value1 = isset($_POST["value1"]) ? $_POST["value1"] : null;
    $col2 = isset($_POST["col2"]) ? $_POST["col2"] : null;
    $value2 = isset($_POST["value2"]) ? $_POST["value2"] : null;
    $check = false;
    if ($col1 == null && $col2 == null) {
        exit;
    } elseif ($col1 == null) {
        $col1 = $col2;
        $value1 = $value2;
    } elseif ($col2 == null) {
        //take a break;
    } else {
        $check = true;
    }

    $giao = new mysqli("localhost", "lambo", "Btwc.1994", "hotel");

    if ($check) {
        $block = $giao->prepare("SELECT * FROM $table WHERE $col1= ? AND $col2= ? ");
        $block->bind_param("si", $value1, $value2);
        $block->execute();
        $data = $block->get_result();
        $resultArray = $data->fetch_all(MYSQLI_ASSOC);
        // JSON 
        $jsonData = json_encode($resultArray);

        // send JSON 
        echo $jsonData;
        $block->close();
    } else {
        if ($table == "total") {
            $block = $giao->prepare("SELECT * FROM $table");
        } else {
            $block = $giao->prepare("SELECT * FROM $table WHERE $col1= ? ");
            if (gettype($value1) == "string") {

                $block->bind_param("s", $value1);
            } else {
                $block->bind_param("i", $value1);
            }
        }
        $block->execute();
        $data = $block->get_result();
        $resultArray = $data->fetch_all(MYSQLI_ASSOC);

        // transfor to JSON 
        $jsonData = json_encode($resultArray);

        // send JSON to front end
        echo $jsonData;
        $block->close();

    }

    $giao->close();
}
?>