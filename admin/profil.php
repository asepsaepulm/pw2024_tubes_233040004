<?php 
session_start();
include "../db.php";
if($_SESSION['status_login'] ==false){
    echo '<script>window.location="login.php"</script>';
}

$query = mysqli_query($conn, "SELECT * FROM tb_admin WHERE admin_id = '".$_SESSION['id']."'");
$d = mysqli_fetch_object($query);
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Motorshop</title>

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
            <h3>Profile</h3>
            <div class="box">
                <form action="" method="POST">
                    <input type="text" name="nama" placeholder="Full Name" class="input-control" value="<?php echo$d->admin_name ?>" required>
                    <input type="text" name="user" placeholder="Username" class="input-control" value="<?php echo$d->username ?>" required>
                    <input type="text" name="hp" placeholder="No Hp" class="input-control" value="<?php echo$d->admin_telp ?>" required>
                    <input type="email" name="email" placeholder="Email" class="input-control" value="<?php echo$d->admin_email ?>" required>
                    <input type="text" name="alamat" placeholder="Address" class="input-control" value="<?php echo$d->admin_address ?>" required>
                    <input type="submit" name="submit" value="Change Profile" class="btn">
                </form>
                <?php
                    if(isset($_POST['submit'])){
                        $nama   = ucwords($_POST['nama']);
                        $user   = $_POST['user'];
                        $hp     = $_POST['hp'];
                        $email  = $_POST['email'];
                        $alamat = ucwords($_POST['alamat']);

                        $update = mysqli_query($conn, "UPDATE tb_admin SET 
                                        admin_name ='".$nama."',
                                        username ='".$user."',
                                        admin_telp ='".$hp."',
                                        admin_email ='".$email."',
                                        admin_address ='".$alamat."'
                                        WHERE admin_id = '".$d->admin_id."' ");
                        if($update){
                            echo '<script>alert("Uupdate successful")</script>';
                            echo '<script>window.location="profil.php"</script>';
                        }else{
                            echo 'failed '.mysqli_error($conn);
                        }
                    }
                ?>
            </div>
            <h3>Change Password</h3>
            <div class="box">
                <form action="" method="POST">
                    <input type="password" name="pass1" placeholder="New Password" class="input-control"  required>
                    <input type="password" name="pass2" placeholder="Confirm New Password" class="input-control" required>
                    <input type="submit" name="change_password" value="Change Password" class="btn">
                </form>
                <?php
                    if(isset($_POST['change_password'])){
                        $pass1   = $_POST['pass1'];
                        $pass2   = $_POST['pass2'];

                        if($pass2 != $pass1){
                            echo '<script>alert("Confirm the new password does not match")</script>';
                        }else{
                            $u_pass = mysqli_query($conn, "UPDATE tb_admin SET
                                        password = '".MD5($pass1)."'
                                        WHERE admin_id = '".$d->admin_id."' ");
                            if($u_pass){
                                echo '<script>alert("Update successful")</script>';
                                echo '<script>window.location="profil.php"</script>';
                            }else {
                                echo 'failed '.mysqli_error($conn);
                            }
                        }
                    }
                    ?>
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