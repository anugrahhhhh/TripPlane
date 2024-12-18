<?php 

    // koneksi kedatabase
    require "admin-tripplane/connection/koneksi-database.php";

    // ambil data restoran dari tabel restoran (untuk tampilan di article sidebar [restoran])
    $ambilDataRes = $conn->query("SELECT * FROM tbl_restoran ORDER BY id_restoran DESC");

    // ambil data (nama) restoran dari tabel restoran (untuk tampilan di aside [select] )
    $ambilNamaRes = $conn->query("SELECT * FROM tbl_restoran ORDER BY id_restoran DESC");
    // hitung jumlah restoran (untuk aside kategori)
    $jmlRes = $ambilNamaRes->num_rows;

    // ambil data wisata dari tabel wisata (untuk tampilan di aside [kategori] )
    $ambilDataWis = $conn->query("SELECT * FROM tbl_wisata");
    // hitung jumlah wisata (untuk aside kategori)
    $jmlWis = $ambilDataWis->num_rows;

    // ambil data penginapan dari tabel penginapan (untuk tampilan di aside [kategori] )
    $ambilDataPengi = $conn->query("SELECT * FROM tbl_penginapan");
    // hitung jumlah penginapan (untuk aside kategori)
    $jmlPengi = $ambilDataPengi->num_rows;

    // ambil data wisata & kategori wisata dari tabel wisata & kategori wisata (untuk tampilan di aside [wisata] )
    $ambilDataWisKat = $conn->query("SELECT * FROM tbl_wisata JOIN tbl_kategori_wisata ON tbl_wisata.id_kategori_wisata = tbl_kategori_wisata.id_kategori_wisata ORDER BY tbl_wisata.id_wisata DESC LIMIT 4");

    // ambil data foto galeri restoran pada tabel galeri restoran (untuk tampilan di aside [galeri restoran])
    $ambilFotoGalRes = $conn->query("SELECT * FROM tbl_restoran JOIN tbl_galeri_restoran ON tbl_restoran.id_restoran = tbl_galeri_restoran.id_restoran ORDER BY tbl_restoran.id_restoran DESC LIMIT 6");

    // ambil data wisata populer (4 data saja)
    $ambilWisPop = $conn->query("SELECT * FROM tbl_wisata ORDER BY id_wisata DESC LIMIT 4");

    // ambil data wisata dan foto galeri wisata
    $ambilFotoGalWis = $conn->query("SELECT * FROM tbl_wisata JOIN tbl_galeri_wisata ON tbl_wisata.id_wisata = tbl_galeri_wisata.id_wisata ORDER BY tbl_wisata.id_wisata DESC LIMIT 6");

?>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>TripPlane | Restoran</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="dist/img/logo1.1.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="dist/css/owl.carousel.min.css">
    <link rel="stylesheet" href="dist/css/magnific-popup.css">
    <link rel="stylesheet" href="dist/css/font-awesome.min.css">
    <link rel="stylesheet" href="dist/css/themify-icons.css">
    <link rel="stylesheet" href="dist/css/nice-select.css">
    <link rel="stylesheet" href="dist/css/flaticon.css">
    <link rel="stylesheet" href="dist/css/gijgo.css">
    <link rel="stylesheet" href="dist/css/animate.css">
    <link rel="stylesheet" href="dist/css/slicknav.css">
    <!-- Pace Loading -->
    <link rel="stylesheet" href="dist/js/pace-progress/themes/red/pace-theme-minimal.css">

    <link rel="stylesheet" href="dist/css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->

    <!-- [Link & Embed CSS] My CSS -->
    <style>
        div.swal2-select {
            display: none !important;
        }
    </style>

    <!-- Sweet Alert2 -->
    <script src="dist/js/sweet-alert/sweet-alert2/sweetalert2.all.min.js"></script>
</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <!-- header -->
    <?php require "components/header.php"; ?>
    
    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_4">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text text-center">
                        <h3>Restoran</h3>
                        <p>Hidangan kuliner khas Pesisir Selatan yang mantul</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->


    <!--================Blog Area =================-->
    <section class="blog_area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mb-5 mb-lg-0">
                    <div class="blog_left_sidebar" id="load-restoran">

                        <?php while($pecahDataRes = $ambilDataRes->fetch_assoc()) { ?>
                        <article class="blog_item">
                            <div class="blog_item_img">
                                <img class="card-img rounded-0" src="admin-tripplane/dist/img/restaurant-img/<?=$pecahDataRes['foto_restoran']; ?>" alt="Foto restoran">
                                <a  class="blog_item_date">
                                    <!-- <h3>15</h3> -->
                                    <!-- <p>Jan</p> -->
                                    <i class="fa fa-cutlery fa-3x text-white"></i>
                                </a>
                            </div>

                            <div class="blog_details">
                                <a class="d-inline-block" href="detail-restoran.php?id=<?=base64_encode($pecahDataRes['id_restoran']); ?>">
                                    <h2><?=$pecahDataRes["nama_restoran"]; ?></h2>
                                </a>
                                <p><?=$pecahDataRes["alamat_restoran"]; ?></p>

                                <div class="rating_days d-flex justify-content-start">
                                    <span class="d-flex justify-content-center align-items-center">
                                        <i class="fa fa-clock-o" style="color: #ff4a52;"></i>
                                        &nbsp;
                                        <a ><?=$pecahDataRes["jam_buka"]; ?></a>
                                    </span>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <div class="days">
                                        <i class="fa fa-map-marker" style="color: #ff4a52;"></i>
                                        <a href="<?=$pecahDataRes['url_lokasi']; ?>" target="_blank">Lokasi</a>
                                    </div>
                                </div>

                            </div>
                        </article>
                        <?php } ?>
                        

                        <!-- <nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Previous">
                                        <i class="ti-angle-left"></i>
                                    </a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link">1</a>
                                </li>
                                <li class="page-item active">
                                    <a href="#" class="page-link">2</a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Next">
                                        <i class="ti-angle-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </nav> -->
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget search_widget">
                            
                            <div class="filter_result_wrap">
                                <div class="filter_inner">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="single_select">
                                                <select id="select-restoran">
                                                    <option value="0">Restoran</option>
                                                    <?php while($pecahNamaRes = $ambilNamaRes->fetch_assoc()) { ?>
                                                    <option value="<?=$pecahNamaRes['id_restoran']; ?>"><?=$pecahNamaRes["nama_restoran"]; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="reset_btn">
                                    <button class="boxed-btn4" type="submit" id="btn-tampilkan">Tampilkan</button>
                                </div>
                            </div>

                        </aside>

                        <!-- kategori area aside -->
                        <?php require "components/kategori-area-aside.php"; ?>

                        <!-- wisata area aside -->
                        <?php require "components/wisata-area-aside.php"; ?>

                        <aside class="single_sidebar_widget instagram_feeds">
                            <h4 class="widget_title">Galeri Restoran</h4>
                            <ul class="instagram_row flex-wrap">

                                <?php while($pecahFotoGalRes = $ambilFotoGalRes->fetch_assoc()) { ?>
                                <li>
                                    <a href="detail-restoran.php?id=<?=base64_encode($pecahFotoGalRes['id_restoran']); ?>">
                                        <img class="" src="adist/dmin-TripPlane/dist/img/restaurant-gallery/<?=$pecahFotoGalRes['foto_1']; ?>" alt="Foto galeri restoran" width="100%" height="60px">
                                    </a>
                                </li>
                                <?php } ?>
                                
                            </ul>
                        </aside>

                        <!-- subscribe area aside -->
                        <?php require "components/subscribe-area-aside.php"; ?>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================Blog Area =================-->

    <!-- footer -->
    <?php require "components/footer.php"; ?>

    <!-- modal pencarian -->
    <?php require "components/modal-pencarian.php"; ?>
  
    <!-- JS here -->
    <script src="dist/js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="dist/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="dist/js/popper.min.js"></script>
    <script src="dist/js/bootstrap.min.js"></script>
    <script src="dist/js/owl.carousel.min.js"></script>
    <script src="dist/js/isotope.pkgd.min.js"></script>
    <script src="dist/js/ajax-form.js"></script>
    <script src="dist/js/waypoints.min.js"></script>
    <script src="dist/js/jquery.counterup.min.js"></script>
    <script src="dist/js/imagesloaded.pkgd.min.js"></script>
    <script src="dist/js/scrollIt.js"></script>
    <script src="dist/js/jquery.scrollUp.min.js"></script>
    <script src="dist/js/wow.min.js"></script>
    <script src="dist/js/nice-select.min.js"></script>
    <script src="dist/js/jquery.slicknav.min.js"></script>
    <script src="dist/js/jquery.magnific-popup.min.js"></script>
    <script src="dist/js/plugins.js"></script>
    <script src="dist/js/gijgo.min.js"></script>
    <!-- pace-progress -->
    <script src="dist/js/pace-progress/pace.min.js"></script>

    <!--contact js-->
    <script src="dist/js/contact.js"></script>
    <script src="dist/js/jquery.ajaxchimp.min.js"></script>
    <script src="dist/js/jquery.form.js"></script>
    <script src="dist/js/jquery.validate.min.js"></script>
    <script src="dist/js/mail-script.js"></script>

    <script src="dist/js/main.js"></script>
    <script>
        $('#datepicker').datepicker({
            iconsLibrary: 'fontawesome',
            icons: {
             rightIcon: '<span class="fa fa-caret-down"></span>'
         }
        });
        $('#datepicker2').datepicker({
            iconsLibrary: 'fontawesome',
            icons: {
             rightIcon: '<span class="fa fa-caret-down"></span>'
         }
        });

        // load data restoran satuan
        $("button#btn-tampilkan").on("click", function(e) {
            const restoran = $("select#select-restoran").val();
            // jika tidak ada yang dipilih
            if(restoran == "0") {
                e.preventDefault();
            }
            else {
                $("div#load-restoran").load("ajax-load-pages/satuan-restoran.php?id=" + restoran);
            }
        });
    </script>


    <!-- PHP Script -->
    <?php 

        // jika tombol subscribe ditekan
        if(isset($_POST["btn-subscribe"])) {

            // ambil email subscriber
            $email = strtolower(htmlspecialchars($_POST["email"]));
            // cek ada email yang sama tidak
            $ambilEmail = $conn->query("SELECT * FROM tbl_subscriber WHERE email = '$email' "); 
            $adaEmailSamaTdk = $ambilEmail->num_rows;
            if($adaEmailSamaTdk > 0) {
                // pesan gagal
                echo "<script>
    
                        Swal.fire({
                            icon: 'info',
                            title: 'Perhatian!',
                            text: 'Email sudah digunakan',
                            showConfirmButton: true
                        })

                </script>";

            }
            else {
                // set default timezone
                date_default_timezone_set('Asia/Jakarta');
                // buat tanggal dan jam sekarang (waktu saat bergabung)
                $tanggal = date("Y-m-d");
                $jam = date("H:i:s");
                // simpan data subscriber kedalam tabel subscriber
                $conn->query("INSERT INTO tbl_subscriber (email, tanggal_gabung, jam_gabung, tanggal_keluar, jam_keluar) VALUES ('$email', '$tanggal', '$jam', '0000-00-00', '00:00:00') ");
                // pesan berhasil
                echo "<script>
    
                        Swal.fire({
                            icon: 'success',
                            title: 'Subscribe berhasil',
                            text: 'Terimakasih sudah subscribe',
                            showConfirmButton: true
                        })

                </script>";
                
            }

        }

    ?>

</body>
</html>