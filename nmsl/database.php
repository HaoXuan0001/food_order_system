<?php
#SET TIME ZONE
date_default_timezone_set("Asia/Kuala_Lumpur");
$tarikh=date('Y-m-d H:i:s');

#SETTING DATABASE
$host="localhost";
$user="root";

#DB NAME
$db="pesanan2";
$password="";

#CONNECT DATABASE
$con = mysqli_connect($host,$user,$password,$db);
#OUTPUT MESSAGE IF CONNECTION FAILED
if (!con) {
    die("Database tidak berhubung!:". mysqli_connect_error())
}

#BOLEH UBAH DI SINI
#TETAPAN SISTEM
$namasys = "DIGITAL ORDER SYSTEM";
$namesys1 = "DRINK CONNER";
$motto = "MINUMAN PANAS-SEJUK";

#BARANGAN YANG DIJUAL
$barang="MINUMAN";

?>