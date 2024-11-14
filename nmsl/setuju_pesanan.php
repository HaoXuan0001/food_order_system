<?php
session_start();
include 'database.php';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nomHp = $_POST['nomHp'];
    $status = 'PENDING';
    $meja=$_SESSION['meja'];
    $cara=$_SESSION['cara'];

#TAMBAH REKOD KE TABLE PESANAN
$sqlPesanan = "INSERT INTO pesanan (tarikh, status, nomHp,
noMeja, cara)
VALUES (?, ?, ?, ?, ?)";
$stmtPesanan = mysqli_prepare($con, $sqlPesanan);
mysqli_stmt_bind_param($stmtPesanan, "sssss", $tarikh, $status,
$nomHp, $meja, $cara);
mysqli_stmt_execute($stmtPesanan);
$bil = mysqli_insert_id($con);
mysqli_stmt_close($stmtPesanan);
#TAMBAH REKOD KE TABLE BELIAN
$sqlBelian = "INSERT INTO belian (kuantiti, idProduk, bil)
VALUES (?, ?, ?)";
$stmtBelian = mysqli_prepare($con, $sqlBelian);
foreach ($_SESSION['cart'] as $idProduk => $quantity) {
    mysqli_stmt_bind_param($stmtBelian, "iii", $quantity, $idProduk,
    $bil);
    mysqli_stmt_execute($stmtBelian);
}
#UPDATE MEJA
mysqli_query($con, "UPDATE meja
SET tersedia = 'N'
WHERE noMeja='$meja'");

#TUTUP DATABASE
mysqli_stmt_close($stmtBelian);

#KOSONGKAN DALAM BAKUL BILA DAH BELI
$_SESSION['cart'] = [];
unset($_SESSION['meja']);
unset($_SESSION['cara']);
}
echo "<script>alert('PESANAN BERJAYA, TERIMA KASIH');
window.location='pesanan.php'</script>";
exit();
?>