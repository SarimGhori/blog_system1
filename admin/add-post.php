<?php
include("../config/db.php");

if(isset($_POST['add'])){
    $title = $_POST['title'];
    $content = $_POST['content'];
    $category = $_POST['category'];

    $image = $_FILES['image']['name'];
    move_uploaded_file($_FILES['image']['tmp_name'], "../uploads/".$image);

    mysqli_query($conn,
        "INSERT INTO posts(title,content,image,category_id)
         VALUES('$title','$content','$image','$category')");
}
?>

<form method="POST" enctype="multipart/form-data">
    <input type="text" name="title" placeholder="Post Title" required><br><br>
    <textarea name="content" placeholder="Post Content"></textarea><br><br>

    <select name="category">
        <?php
        $cats = mysqli_query($conn,"SELECT * FROM categories");
        while($c = mysqli_fetch_assoc($cats)){
            echo "<option value='{$c['id']}'>{$c['name']}</option>";
        }
        ?>
    </select><br><br>

    <input type="file" name="image"><br><br>
    <button name="add">Add Post</button>
</form>
