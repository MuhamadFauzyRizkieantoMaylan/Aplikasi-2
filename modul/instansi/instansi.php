<?php

    //uji jika tombol diklik
    if(isset($_POST['bsimpan']))
    {

        //pengujian apakah data akan diedit / simpan baru
        if($_GET['hal'] == "edit"){
            //perintah edit data
            //ubah data
            $ubah = mysqli_query($koneksi, "UPDATE tbl_instansi SET nama_instansi = '$_POST[nama_instansi]' where id_instansi = '$_GET[id]' ");
            if($ubah)
            {
                echo "<script>
                        alert('Ubah Data Sukses');
                        document.location='?halaman=instansi';
                      </script>";
            }
        }
        else
        {
            //perintah simpan data baru
            //simpan data
            $simpan = mysqli_query($koneksi, "INSERT INTO tbl_instansi VALUES ('', '$_POST[nama_instansi]') ");

            if($simpan)
            {
                echo "<script>
                        alert('Simpan Data Sukses');
                        document.location='?halaman=instansi';
                      </script>";
            }
        }

        
    }

    //Uji Jika klik tombol edit / hapus
    if(isset($_GET['hal']))
    {

        if($_GET['hal'] == "edit")
        {

          //tampilkan data yang akan diedit
          $tampil = mysqli_query($koneksi, "SELECT * FROM tbl_instansi where id_instansi='$_GET[id]'");
          $data = mysqli_fetch_array($tampil);
          if($data)
          {
              //jika data ditemukan, maka data ditampung ke dalam variabel
              $vnama_instansi = $data['nama_instansi'];
          }
        
        }else{

            $hapus = mysqli_query($koneksi, "DELETE FROM tbl_instansi WHERE id_instansi='$_GET[id]'");
            if($hapus){
              echo "<script>
                      alert('Hapus Data Sukses');
                      document.location='?halaman=instansi';
                    </script>";
            }

        }

        

    }

?>


<div class="card mt-3">
  <div class="card-header bg-info text-white ">
    Form Data Instansi
  </div>
  <div class="card-body">
    <form method="post" action="">
    <div class="form-group">
        <label for="nama_instansi">Nama Instansi</label>
        <input type="text" class="form-control" id="nama_instansi" name="nama_instansi" value="<?=@$vnama_instansi?>">
    </div>
    <button type="submit" name="bsimpan" class="btn btn-primary">Simpan</button>
    <button type="reset" name="bbatal" class="btn btn-danger">Batal</button>
    </form>
  </div>
</div>

<div class="card mt-3">
  <div class="card-header bg-info text-white ">
    Data Instansi
  </div>
  <div class="card-body">
    <table class="table table-borderd table-hovered table-striped">
        <tr>
            <th>No</th>
            <th>Nama Instansi</th>
            <th>Aksi</th>
        </tr>
        <?php
            $tampil = mysqli_query($koneksi, "SELECT * from tbl_instansi order by id_instansi desc");
            $no = 1;
            while($data = mysqli_fetch_array($tampil)):
        
        ?>
        <tr>
            <td><?=$no++?></td>
            <td><?=$data['nama_instansi']?></td>
            <td>
                <a href="?halaman=instansi&hal=edit&id=<?=$data['id_instansi']?>" class="btn btn-success" >Edit </a>
                <a href="?halaman=instansi&hal=hapus&id=<?=$data['id_instansi']?>" class="btn btn-danger" 
                   onclick="return confirm('Apakah yakin ingin menghapus data ini?')" >Hapus </a>
            </td>
        </tr>
        <?php endwhile; ?>
    </table>
  </div>
</div>