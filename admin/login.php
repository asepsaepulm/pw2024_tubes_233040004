<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>

    <link rel="stylesheet" type="text/css" href="../css/login.css" />
  </head>

  <body>
    <body id="bg-login">
	<div class="box-login">
		<h2>Login</h2>
		<form action="" method="POST">
			<input type="text" name="username" placeholder="Username" class="input-control">
			<input type="password" name="password" placeholder="Password" class="input-control">
			<input type="submit" name="loginbtn" value="Login" class="btn">
		</form>

    <?php
            if(isset($_POST['loginbtn'])){
              session_start();
              include '../db.php';

                $user = mysqli_real_escape_string($conn, $_POST['username']);
                $pass = mysqli_real_escape_string($conn, $_POST['password']);

                $cek = mysqli_query($conn, "SELECT * FROM tb_admin WHERE username = '".$user."' AND password = '".MD5($pass)."'");
                if(mysqli_num_rows($cek) > 0){
                  $d = mysqli_fetch_object($cek);
                  $_SESSION['status_login'] = true;
                  $_SESSION['a_global'] = $d;
                  $_SESSION['id'] = $d->admin_id;
                  echo '<script>window.location="dashboard.php"</script>';
                }else{
                  echo '<script>alert("username or password is incorrect!")</script>';
                }
                    }
                  
                
                  
            ?>
            
  </body>
</html>
