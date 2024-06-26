<?php 
    session_start();
    include '../db.php';
    if($_SESSION['status_login'] != true){
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
    <!-- box icon -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    
</head>
<body>

    <!-- header -->
    <header>
    <div class="container">
    <h1><a href="dashboard.php">Motorshop</a></h1>
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
<!-- content -->
<div class="section">
		<div class="container">
			<h3>Category Data</h3>
			<div class="box">
				<p><a href="tambah-kategori.php">Add Data</a></p>
				<table border="1" cellspacing="0" class="table">
					<thead>
						<tr>
							<th width="60px">No</th>
							<th>Category</th>
							<th width="150px">Aksi</th>
						</tr>
					</thead>
					<tbody>
						<?php
							$no = 1;
							$kategori = mysqli_query($conn, "SELECT * FROM tb_category ORDER BY category_id DESC");
							if(mysqli_num_rows($kategori) > 0){
							while($row = mysqli_fetch_array($kategori)){
						?>
						<tr>
							<td><?php echo $no++ ?></td>
							<td><?php echo $row['category_name'] ?></td>
							<td>
								<a href="edit-kategori.php?id=<?php echo $row['category_id'] ?>">Edit</a> || <a href="proses-hapus.php?idk=<?php echo $row['category_id'] ?>" onclick="return confirm('Are you sure you want to delete it ?')">Delete</a>
							</td>
						</tr>
						<?php }}else{ ?>
							<tr>
								<td colspan="3">no data</td>
							</tr>
						<?php } ?>
					</tbody>
				</table>
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