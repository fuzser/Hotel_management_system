<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $table = $_POST["table"];
    $room = $_POST["room"];
    $date = $_POST["date"];
    $name = $_POST["name"];
    $phone = $_POST["phone"];
    $days = $_POST["days"];
    $chechin = $_POST["chechin"];
    $note = $_POST["note"];
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
    //checking the the room is booked or not.
    if ($length > 0) {
        //update information
        $block1 = $giao->prepare("UPDATE $table SET name = ?, phone = ?, /* days = ?, */ checkin = ?, note = ?  WHERE id = ?");
        $block1->bind_param("siiss", $name, $phone, /* $days, */ $chechin, $note, $id);
        $block1->execute();
        $block1 . exit();
    } else {
        //create new booking
        $id = ((string)$room).$date;
        for ($i = 0; $i < $days; $i++) {

            $newDateTimestamp = strtotime($date . " +$i days");

            $newDate = date("n/j/Y", $newDateTimestamp);
    
            $block2 = $giao->prepare("INSERT $table VALUE (?,?,?,?,?,?,?,?)");
            $block2->bind_param("issiiiss", $room, $newDate, $name, $phone, $days, $chechin, $note,$id);
            $block2->execute();
        }
            $block2 . exit();
    }
    $block . exit();
    $giao . exit();

}
?>