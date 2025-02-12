<!DOCTYPE html>

<html lang="en">

<link href="style.css" rel="stylesheet" type="text/css" />

<head>
    <meta charset="utf-8">
    <title>
        Hotel Management System
    </title>
</head>

<body>
    <div id="login_div">
        <div id="h1_div">
            <h1 style="color:white; padding: 10px; ">Hotel Management System</h1>
        </div>
        <form action="api_login.php" method="post">
            <div>
                <p>User Name</p>
            </div>
            <div><input name="un" id="un" maxlength="30"></div>
            <div>
                <p>Password</p>
            </div>
            <div><input name="ps" id="ps" type="password" maxlength="30"></div>
            <div><button id="login" type="submit">login</button></div>
        </form>
        <div style="padding-top: 30px; "><p>Help:022XXXXXX</p></div>
    </div>
</body>
<script>
        // clean the data from url.
        history.replaceState({}, document.title, window.location.pathname);
</script>
<!-- alert condition -->
<?php
$pm =& $_GET['pm'];
if ($pm == 1) {
    echo '<script>alert("Wrong!")</script>';
}elseif($pm == 2){
    echo '<script>alert("Empty,really?")</script>';
}elseif($pm == 3){
    echo '<script>alert("Nice,try.")</script>';
}
?>

<!-- <script type="module" src="check.js"></script> -->

</html>