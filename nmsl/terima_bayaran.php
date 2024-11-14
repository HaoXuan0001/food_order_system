<?php
include 'database.php';
#DAPATKAN URL
$bil = $_GET['id'];
$meja=mysqli_query($con, "SELECT * FROM pesanan WHERE bil='$bil'");
$data1 = mysqli_fetch_assoc($meja);

#PROSES KEMASKINI
$simpan=mysqli_query($con,"UPDATE pesanan
SET status = 'BAYAR' 
WHERE bil='$bil'");

#RELEASE TABLE
mysqli_query($con,"UPDATE meja SET tersedia='Y' WHERE noMeja='".$data1['noMeja']."'");

#MESEJ JIKA BERJAYA
echo "<script>alert('Bayaran diterima');
window.location='senarai_pesanan.php'</script>";
?>