<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $table = $_POST["table"];
    $room = $_POST["room"];
    $date = $_POST["date"];
    $id = $_POST["id"];

    $giao = new mysqli("localhost", "lambo", "Btwc.1994", "hotel");
    // checking connection of sql
    if ($giao->connect_error) {
        die("error: " . $giao->connect_error);
    }
    $block = $giao->prepare("SELECT * FROM $table WHERE room = ? AND date = ?");
    $block->bind_param("is", $room, $date);
    $block->execute();
    $data = $block->get_result();
    $length = $data->num_rows;
    //check
    if ($length > 0) {
        //delete the selecting one
        $block1 = $giao->prepare("DELETE FROM $table WHERE id = ?");
        $block1->bind_param("s", $id);
        $block1->execute();
        $block1 . exit();
    } else {
        //I was going to do something but I forgot.
    }
    $block . exit();
    $giao . exit();

}
?>