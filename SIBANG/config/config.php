<?php
class config {
    function koneksi() {
        $conn=new mysqli('localhost','root','','db_bangunan');
        if($conn->connect_error){
            $conn =die("koneksi gagal :". $conn->connect_error);
        }
        return $conn;
    }
    function auth(){
        if(isset($_SESSION['login']['email'])){
          return true;  
        }else{
           return false;
        }
    }
    function site_url(){
        return "http://localhost/SIBANG/";
    }
}
?>
