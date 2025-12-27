<?php
include("../config/db.php");

if(isset($_POST['add'])){
    $name = $_POST['name'];
    mysqli_query($conn, "INSERT INTO categories(name) VALUES('$name')");
}
?>

<form method="POST">
    <input type="text" name="name" placeholder="Category Name" required>
    <button name="add">Add Category</button>
</form>
