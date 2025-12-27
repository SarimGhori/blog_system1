<?php
include("../config/db.php");

if(isset($_POST['login'])){
    $email = $_POST['email'];
    $password = $_POST['password'];

    $query = "SELECT * FROM admins WHERE email='$email' AND password='$password'";
    $run = mysqli_query($conn, $query);

    if(mysqli_num_rows($run) == 1){
        echo "LOGIN SUCCESS";
        // header("Location: dashboard.php");
    } else {
        echo "LOGIN FAILED";
    }
}
?>

<form method="POST">
    <input type="email" name="email" required>
    <input type="password" name="password" required>
    <button name="login">Login</button>
</form>
