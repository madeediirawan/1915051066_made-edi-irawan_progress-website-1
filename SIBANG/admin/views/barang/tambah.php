<form action="index.php?mod=barang&page=save" method="POST">
    <div class="col-md-6">
        <div class="form-group">
            <label for="">nama barang</label>
            <input type="text" name="nama_barang" required value="<?=(isset($_POST['nama_barang']))?$_POST['nama_barang']:'';?>" class="form-control">
            <input type="hidden" name="kode_barang"  value="<?=(isset($_POST['kode_barang']))?$_POST['kode_barang']:'';?>" class="form-control">
            <span class="text-danger"><?=(isset($err['nama_barang']))?$err['nama_barang']:'';?></span>
        </div>
        <div class="form-group">
        <label for="">merek</label>
            <input type="text" name="id_merek" value="<?=(isset($_POST['id_merek']))?$_POST['id_merek']:'';?>" class="form-control">
            <span class="text-danger"><?=(isset($err['id_merek']))?$err['id_merek']:'';?></span>
        </div>
        <div class="form-group">
        <label for="">harga barang</label>
            <input type="text" name="harga_barang" value="<?=(isset($_POST['harga_barang']))?$_POST['harga_barang']:'';?>" class="form-control">
            <span class="text-danger"><?=(isset($err['harga_barang']))?$err['harga_barang']:'';?></span>
        </div>
        <div class="form-group">
        <label for="">jumlah barang</label>
            <input type="text" name="jumlah_barang" value="<?=(isset($_POST['jumlah_barang']))?$_POST['jumlah_barang']:'';?>" class="form-control">
            <span class="text-danger"><?=(isset($err['jumlah_barang']))?$err['jumlah_barang']:'';?></span>
        </div>
    </div>
    <div class="form-group">
            <button type="submit" class="btn btn-primary">Save</button>
    </div>
    </div>
</form>