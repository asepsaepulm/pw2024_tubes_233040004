<?php
   $hostname = 'localhost';
   $username = 'root';
   $password = 'root';
   $dbname   = 'pw2024_tubes_233040004';

  //check connection
    $conn = mysqli_connect($hostname, $username, $password, $dbname) or die ('Failed to connect to MySQL');


?>