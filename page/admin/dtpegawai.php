
              
                <div class="row">
                  <div class="col-xs-12">

               <div class="panel box-shadow-none content-header">
                  <div class="panel-body">
                    <div class="col-md-12">
                        <h3 class="animated fadeInLeft">Data Pegawai</h3>
                        <p class="animated fadeInDown">

                           <a href="addpegawai.php">
                             
                           <button name="tambah" type="submit" class="btn btn-success btn-sm btn-next" data-last="Finish">

                                      Tambah Data
                                   <i class="fa fa-plus-circle icon-on-left" aria-hidden="true"></i>
                                    </button>
                           </a>
                        

                                       <button name="tambah" type="submit" class="btn btn-primary btn-sm btn-next" data-last="Finish">
                                      Export Excel
                                  <i class="fa fa-file-excel-o" aria-hidden="true"></i>
                                    </button>
                        </p>
                    </div>
                  </div>
              </div>
              <div class="col-md-12 top-20 padding-0">
                <div class="col-md-12">
                  <div class="panel">
                    <div class="panel-heading"><h3>Data Pegawai</h3></div>
                    <div class="panel-body">
                      <div class="responsive-table">
                      <table id="datatables-example" class="table table-striped table-bordered" width="100%" cellspacing="0">
                      <thead>
                        <tr>
                          <th>No</th>
                          <th>Foto</th>
                          <th>NIP</th>
                          <th>Nama</th>
                           <th>JK / TTL</th>
                          <th>Unit Kerja</th>
                          <th>Aksi</th>
                        </tr>
                      </thead>
                      <tbody>
                                        <?php 
                        $tampil=mysql_query("select * from pegawai,bagian,jabatan where pegawai.id_bag=bagian.id_bag and
  pegawai.id_jab=jabatan.id_jab order by nip DESC");
                     $no=1;
  while($dt=mysql_fetch_array($tampil)){?>
  <tr>
    <td><?php echo $no;?></td>
    <td><?php if($dt['foto']==""){
    echo "<img src='asset/img/no.jpg' width='50' height='50' />";
  } else {
  echo "<img src='asset/img/small_$dt[foto]' width='50' height='50' />";
  }?>
    
  </td>
  <td><?php  echo $dt['nip'];?></td>
    <td><?php  echo $dt['nama']; ?></td>
  

    <td><?php echo $dt['jenis_kelamin']; echo" "; echo "/"; echo " ";echo $dt['tmpt_lahir']; echo ","; echo $dt['tgl_lahir'];?></td>
  <td><?php echo $dt['n_bag']; ?></td>
  <td>   
 <button class=" btn btn-circle btn-mn btn-success" value="primary">
                                <span class="fa fa-info"></span>
                              </button>
    <button class=" btn btn-circle btn-mn btn-danger" value="primary">
                                <span class="fa fa-trash"></span>
                              </button>

                               <button class=" btn btn-circle btn-mn btn-warning" value="primary">
                                <span class="fa fa-pencil"></span>
                              </button>
                              </td>
  </tr>
 <?php 
 $no++;
  }

  ?>
        </tbody>
      </table>
  
                      </div>
                  </div>
                </div>
              </div>  
              </div>
            </div>
          </div>
     
   
