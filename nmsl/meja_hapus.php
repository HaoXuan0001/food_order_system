<?php
#SAMBUNG KE DB
require 'database.php';
#DAPATKAN URL
$id = $_GET['id'];
mysqli_query($con,"DELETE FROM meja WHERE
nomMeja='$id'");
#PAPAR MESEJ
echo "<script>alert('Meja berjaya dihapuskan');
windows.location='meja.php'</script>";
?>