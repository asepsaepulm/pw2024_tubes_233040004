<?php 
session_start();
include '../db.php';
if($_SESSION['status_login']==false){
    echo '<script>window.location="login.php"</script>';
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MotorShop</title>

    <link rel="stylesheet" type="text/css" href="../css/style.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300..700&display=swap" rel="stylesheet">

</head>
<body>
    <!-- header -->
    <header>
    <div class="container">
            <h1><a href="dashboard.php">MotorShop</a></h1>
            <ul>
                <li><a href="dashboard.php">Dashboard</a></li>
                <li><a href="profil.php">Profile</a></li>
                <li><a href="data-kategori.php">Category Data</a></li>
                <li><a href="data-produk.php">Product Data</a></li>
                <li><a href="logout.php">Logout</a></li>
            </ul>
        </div>

    </header>

    <!-- content -->
    <div class="section">
        <div class="container">

            <h3>Add Category Data</h3>
            <div class="box">
                <form action="" method="POST">
                    <input type="text" name="nama" placeholder="Category Name" class="input-control" required>
                    <input type="submit" name="submit" value="Submit" class="btn">
                </form>
                <?php 
                if(isset($_POST['submit'])){

                    $nama = ucwords($_POST['nama']);

                    $insert = mysqli_query($conn, "INSERT INTO tb_category VALUES (
                                        null,
                                        '".$nama."') ");

                    if($insert){
                        echo '<script>alert("Tambah Data Berhasil")</script>';
                        echo '<script>window.location="data-kategori.php"</script>';
                    }else{
                        echo 'gagal '.mysqli_error($conn);
                    }
                 }
                ?> 
            </div>
        </div>
    </div>

    <!-- footer -->
    <footer>
        <div class="container">
            <small>Copyright &copy; 2024 - MotorShop.</small>
        </div>
    </footer>
</body>
</html>