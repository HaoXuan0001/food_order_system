<?php
include 'database.php';
#DAPATKAN URL
$bil = $_GET['id'];
#PROSES KEMASKINI
$simpan=mysqli_query($con,"UPDATE pesanan
SET status = 'SIAP' WHERE bil='$bil'");
#MESEJ JIKA BERJAYA
echo "<script>alert('Pesanana Siap');
windows.location='senarai_pesanan.php'</script>";
?>