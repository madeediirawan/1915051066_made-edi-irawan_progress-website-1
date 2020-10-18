<?php
$con->auth();
$conn=$con->koneksi();
switch (@$_GET['page']){
    case 'add':
        $sql="select * from barang";
        $brg=$conn->query($sql);
        $content="views/barang/tambah.php";
        include_once 'views/template.php';
    break;
    case 'save':
        if($_SERVER['REQUEST_METHOD']=="POST"){
            //validasi
            if(empty($_POST['nama_barang'])){
                $err['nama_barang']="Nama barang Wajib";
            }
            if(empty($_POST['kode_barang'])){
                $err['kode_barang']="kode barang Wajib Angka";
            }
            if(empty($_POST['id_merek'])){
                $err['id_merek']="merek Wajib Terisi";
            }
            if(empty($_POST['harga_barang'])){
                $err['harga_barang']="harga Wajib Terisi";
            }
            if(empty($_POST['jumlah_barang'])){
                $err['jumlah_barang']="jumlah Wajib Terisi";
            }
            if(!isset($err)){
                $id_login=$_SESSION['login']['id'];
                if(!empty($_POST['kode_barang'])){
                    //update
                    $sql="update barang set nama_barang='$_POST[nama_barang]',kode_barang='$_POST[kode_barang]', id_merek='$_POST[id_merek]', harga_barang='$_POST[harga_barang]',
                    jumlah_barang='$_POST[jumlah_barang]',id_login=$id_login where (kode_barang)='$_POST[kode_barang]'";
                }else{
                    //save
                    $sql = "INSERT INTO barang (nama_barang, kode_barang, harga_barang, jumlah_barang) 
                    VALUES ('$_POST[nama_barang]','$_POST[kode_barang]','$_POST[harga_barang]','$_POST[jumlah_barang]')";
                }
                    if ($conn->query($sql) === TRUE) {
                        header('Location: '.$con->site_url().'/admin/index.php?mode=barang');
                    } else {
                        $err['msg']= "Error: " . $sql . "<br>" . $conn->error;
                    }
            }
        }else{
            $err['msg']="tidak diijinkan";
        }
        if(isset($err)){
            include_once 'views/barang/tambah.php';
        }
break;
case 'edit':
    $barang ="select * from barang where kode_barang='$_GET[id]'";
    $barang=$conn->query($barang);
    $_POST=$barang->fetch_assoc();
    $content="views/barang/tambah.php";
    include_once 'views/template.php';
break;
    case 'delete':
        $barang ="delete from barang where kode_barang='$_GET[id]'";
        $barang=$conn->query($barang);
        header('Location: '.$con->site_url().'/admin/index.php?mod=barang');
break;
default;
$sql="select * from barang";
$barang=$conn->query($sql);
$conn->close();
$content="views/barang/tampil.php";
include_once 'views/template.php';
}
?>
