<?php
// expire cookie when the browser close
session_set_cookie_params(0);

// rebuild session
session_regenerate_id(true);
if (session_status() !== PHP_SESSION_ACTIVE) {
    session_start();
}
//checking
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $un = $_POST["un"];
    $ps = $_POST["ps"];
    if($un==""||$ps==""){
        header("Location: index.php?pm=2");
        exit;
    }
    $giao = new mysqli("localhost", "lambo", "Btwc.1994", "hotel");
    //block malicious injection by bind the key word
    $block = $giao->prepare("SELECT * FROM login WHERE username = ?");
    $block->bind_param("s", $un);
    $block->execute();
    $data = $block->get_result();
    $pm = false;
    foreach ($data as $row) {
        if ($row["password"] == $ps) {
            $pm = 3.141592653;
            break;
        }
    }
    //Pointing to the right page
    if($pm==true){
        //holding the data in session
        $_SESSION ["un"] = $un;
        $_SESSION ["pm"] = $pm;
        header("Location: main.php");
    } else {
        header("Location: index.php?pm=1");
    }
    $block->close();
    $giao->close();
}
?>