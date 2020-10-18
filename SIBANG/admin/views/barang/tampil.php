<div class="row">
    <div class="pull-left">
        <h4>Data Barang</h4>
    </div>
    <div class="pull-right">
        <a href="index.php?mod=barang&page=add">
            <button class="btn btn-primary">Add</button>
        </a>
    </div>
</div>
<div class="row">
    <table class="table">
        <thead>
            <tr>
                <td>
                    No
                </td>
                <td>nama_barang</td><td>kode_barang</td><td>id_merek</td><td>jumlah_barang</td><td>harga_barang</td>
            </tr>
        </thead>
        <tbody>
            <?php if($barang != NULL){ 
                $no=1;
                foreach($barang as $row){?>
                    <tr>
                        <td><?=$no;?></td><td><?=$row['nama_barang']?></td><td><?=$row['kode_barang'];?></td><td><?=$row['id_merek']?></td><td><?=$row['jumlah_barang']?></td>
                        <td><?=$row['harga_barang']?></td>                      
                        <td>
                            <a href="index.php?mod=barang&page=edit&id=<?=($row['kode_barang'])?>"><i class="fa fa-pencil"></i> </a>
                            <a href="index.php?mod=barang&page=delete&id=<?=($row['kode_barang'])?>"><i class="fa fa-trash"></i> </a>
                        </td>
                    </tr>
               <?php $no++; }
            }?>
        </tbody>
    </table>
</div>