<?php
    require_once "header.php"; 
    require_once "koneksi.php";
        ?>

<?php 
         $login = false;
    if(isset($_SESSION['nama'])){
        $login = true;
//            if(cek_status($_SESSION['nama']) == 1){
//                $super_user = true;
//            }
        }
    ?>
<?php $artikel = tampilkan(); ?>

     <?php 

    if(isset($_GET['search'])){
                $cari  = $_GET['search'];
            $artikel  = hasil_cari($cari);
        }
?>
<div class="wrapper">
   <nav>
            <form  action="" method="get">
        <input class="search" type="search" name="search" placeholder="Search......">    
            </form>
                </nav>
    <div class="marquee">
            <marquee><p id="teks_berjalan">Destinasi Pariwisata Alam di Jawa Timur</p></marquee>

        </div>
  <div class="form2">
            <p id="judul_form">Artikel</p>
            <?php while($row= mysqli_fetch_assoc($artikel)):?>
        <div class="artikel2">

            <h2><a href="single.php?id=<?= $row['id'];?>"><?= $row['judul']; ?></a></h2>
            <p id="isi"><?= excerpt($row['isi']);?></p>
            <p id="waktu">Waktu : <?= $row['waktu'];?></p>

            <?php if($login == true):?>
                <a href="edit.php?id=<?= $row['id'];?>">Edit |</a>

                <a href="hapus.php?id=<?= $row['id'];?>"> Hapus</a>

            <?php endif;?>
        </div>
      <?php endwhile;?>
            </div>
            <?php require_once "sidebar.php";?>
    </div>  


<?php require_once "footer.php"; 