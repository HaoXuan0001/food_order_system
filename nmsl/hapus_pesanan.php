<?php
session_start();
#SAMBUNG KE DB
require 'database.php';
#GET URL
$bil = $_GET['id'];
$no = $_GET['no'];
mysqli_query($conn,"DELETE FROM pesanan 
WHERE bil='$bil'");
mysqli_query($conn,"UPDATE meja
SET info=info, tersedia = 'Y'
WHERE noMeja='$no'");
#RESET SESSION
unset($_SESSION['meja']);
unset($_SESSION['cara']);
#PAPAR MESEJ
echo "<script>alert('Pesanan berjaya dihapuskan');
window.location='dashboard.php'</script>";
?>