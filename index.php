<?php
include("config/db.php");
$posts = mysqli_query($conn,"SELECT posts.*, categories.name AS cname
FROM posts
JOIN categories ON posts.category_id = categories.id");
?>

<h1>My Blog</h1>

<?php while($p = mysqli_fetch_assoc($posts)){ ?>
    <h2><?= $p['title'] ?></h2>
    <p><b>Category:</b> <?= $p['cname'] ?></p>
    <img src="uploads/<?= $p['image'] ?>" width="200">
    <p><?= substr($p['content'],0,150) ?>...</p>
<?php } ?>
