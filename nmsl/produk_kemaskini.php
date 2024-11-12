<?php
include 'database.php';
#TERIMA NILAI YG DI POST
if (isset($_POST['simpan'])) {
$data1 = $_POST['idProduk'];
$data2 = $_POST['namaProduk'];
$data3 = $_POST['harga'];
$data4 = $_POST['detail'];
#PROSES KEMASKINI
$result1 = mysqli_query($con,"UPDATE produk
SET namaPRODUK = '$data2', harga='$data3', detail='$data4',
gambar=gambar
WHERE idProduk='$data1'");
#MESeJ JIKA BERJAYA
echo "<script>alert('Kemaskini rekod berjaya');
window.location='produk.php'</script>";
}
?>