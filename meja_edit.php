<?php
include 'header.php';
#DAPATKAN URL
$noMeja = $_GET['id'];
#SAMBUNG KE TABLE MEJA
$data1=mysqli_query($con,"SELECT * FROM meja
WHERE noMeja='$noMeja'");
$meja=mysqli_fetch_array($data1);
?>
<div id="menu">
<?php include 'menu.php'; ?>
</div>
<div class="row">
<div id="isi">
<h3>KEMASKINI MEJA</h3>
<a href="meja.php"><button>Senarai Meja</button></a>
<form method="POST">
<p>Nombor Meja</p>
<input type="text" name="nomeja"
value="<?php echo $meja['noMeja'];?>" size="10" autofocus>
<br>
<p>Keterangan Meja</p>
<input type="text" name="keterangan" size="30"
value="<?php echo $meja['info'];?>">
<br>
<button name="simpan" type="submit">SIMPAN</button>
<br>
</form>
</div>
<?php
#TERIMA NILAI YG DI POST
if (isset($_POST['simpan'])) {
$data1 = $_POST['nomeja'];
$data2 = $_POST['keterangan'];
#PROSES KEMASKINI
$result2 = mysqli_query($con, "UPDATE meja SET info='$data2',
tersedia=tersedia
WHERE noMeja='$data1'");
echo "<script>alert('Kemaskini berjaya');
window.location='meja.php'</script>";
}
?>