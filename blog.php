<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project.01-HTML (Blog Page)</title>
    <link rel="stylesheet" href="style.css"/>
    <link rel="icon" href="img/Logo.jpg"/>
    <script src="index.js"></script>
</head>
<body>
    <img src="https://www.icegif.com/wp-content/uploads/2023/07/icegif-1263.gif" class="load">
    <header class="title">
        <h1>Hai... Nama saya Romal Lengkong dengan NIM 220211060242</h1>
        <p>ini adalah salah satu tugas Projek dari Mata Kuliah Pemprograman Web (TIK2032-G)</p>
    </header>
    <nav class="main-bar">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="gallery.html">Gallery</a></li>
            <li><a href="blog.php">Blog</a></li>
            <li><a href="contact.html">Contact</a></li>
        </ul>
    </nav>
    <br>
    <div class="blog-bar">
        <?php
            // Database connection
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "blog_db";

            $conn = new mysqli($servername, $username, $password, $dbname);

            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            $sql = "SELECT title, link, description FROM blog_posts";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "<a href='".$row["link"]."'>".$row["title"]."</a>";
                    echo "<p>".$row["description"]."</p><hr>";
                }
            } else {
                echo "No blog posts found.";
            }

            $conn->close();
        ?>
    </div>
</body>
</html>
