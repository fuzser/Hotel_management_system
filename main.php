<?php
if (session_status() !== PHP_SESSION_ACTIVE) {
    session_start();
}

// simple double check. I should add more for password and username, but I am tired
$un = isset($_SESSION['un']) ? $_SESSION['un'] : '';
$pm = isset($_SESSION['pm']) ? $_SESSION['pm'] : '';
if ($pm != 3.141592653 || $un == "") {
    header("Location: index.php?pm=3");
    exit();
}
?>
<!DOCTYPE html>

<html lang="en">

<link href="style.css" rel="stylesheet" type="text/css" />

<head>
    <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage page</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"><!-- Calling an external date picker -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script><!-- Calling an external date picker -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script><!-- Calling an external date picker -->
</head>

<body>

    <div id="h1_div">
        <h1>Manage page</h1>
    </div>
    <div>
        <p>User :
            <?php echo $un; ?>
        </p>
    </div>
    <div>
        <p>Empty:<button id="example" style="background-color:#34bf49;"></button>
            Booked:<button id="example" style="background-color:#0099e5;"></button>
            Using:<button id="example" style="background-color:#ff4c4c;"></button>
        </p>
    </div>
    <div>
        <p>Nights:<input type="text" id="days" style="width:10%">
            Date: <input type="text" id="datepicker"></p>
        <p id="tip"> Choose a date, Click here ↑</p>
    </div>
    <div><!-- hidden window -->
        <div id="window" class="hidden">
            <span class="close" id="closeModal">&times;</span>
            <h3 id="date_u">title</h3>
            <h3 id="room_u">title</h3>
            <p>Nights:<input type="text" id="days_u"></p>
            <p>Name :<input type="text" id="name_u"></p>
            <p>Phone:<input type="text" id="phone_u"></p>
            <p>Note:</p>
            <textarea type="text" id="note_u" rows="4"></textarea>
            <p> </p>
            <p>Check-in:
                <select id="category_u">
                    <option value="no_u">no</option>
                    <option value="yes_u">yes</option>
                </select>
            </p>
            <button id="save">save</button>
            <button id="remove">remove</button>
        </div>
    </div>
    <script src="clock.js"></script>
</body>

</html>