<?php
session_start();
include '../koneksi.php';
$id = $_SESSION['customer'];


if (isset($_SESSION['customer'])) {
?>

  <!DOCTYPE html>
  <html lang="en">

  <head>
    <title>Profil | Skill+</title>
    <link rel="stylesheet" href="Profil-Akses Pembelian.css">
  </head>

  <body>
    <!-- Navbar -->
    <div class="navbar">
      <div class="navbar-container">
        <div class="name-container">
          <a href="">Skill+</a>
        </div>
        <div class="menu-container">
          <a href="Home-Logined.php">Home</a>
          <a href="E-Learning.php">E-Learning</a>
          <a href="Bootcamp.php">Bootcamp & Program</a>
          <a href="#about">About</a>
        </div>
        <div class="profile-container">
          <a href="#none">
            <?php
            $query = "SELECT * FROM actor WHERE id = $id ";
            $sql = mysqli_query($koneksi, $query);
            $result = mysqli_fetch_assoc($sql);
            ?>
            <h3 onclick="toogleMenu()"><?php echo $result['username'] ?></h3>
          </a>
        </div>
        <div class="sub-menu-wrap" id="subMenu">
          <div class="sub-menu">
            <div class="user-info">
              <?php
              $query = "SELECT * FROM actor WHERE id = $id ";
              $sql = mysqli_query($koneksi, $query);
              $result = mysqli_fetch_assoc($sql);
              ?>
              <h2><?php echo $result['username'] ?></h2>
            </div>
            <hr>
            <a href="Profil-Profil Saya.php?id=<?php echo $id; ?>" class="sub-menu-link">
              <img src="../Image/profile.png">
              <p>Edit Profile</p>
              <span></span>
            </a>
            <a href="../Keluar.php" class="sub-menu-link">
              <img src="../Image/logout.png">
              <p>Logout</p>
              <span></span>
            </a>
          </div>
        </div>
      </div>
    </div>
    <!-- Navbar Selesai -->

    <!-- Content -->
    <div class="content">
      <div class="container">
        <div class="sidebar">
          <div class="bar">
            <h3>Navigasi Profil</h3>
            <hr>
            <a href="Profil-Profil Saya.php" class="sub-nav-profil">
              <img src="../Image/profile.png" />
              <p>Profil Saya</p>
            </a>
            <a href="#" class="sub-nav-profil">
              <img src="../Image/shopping-bag.png" />
              <p>Akses Pembelian</p>
            </a>
            <a href="Profil-Akses Riwayat Pembelian.php" class="sub-nav-profil">
              <img src="../Image/bill.png" />
              <p>Riwayat Transaksi</p>
            </a>
            <a href="Profil-Sertifikat.php" class="sub-nav-profil">
              <img src="../Image/award.png" />
              <p>Sertifikat</p>
            </a>
          </div>
          <div class="profil">
            <div class="profil-navbar">
              <a href="Profil-Akses Pembelian Elearning.php">
                <h4>E-Learning</h4>
              </a>
              <a href="#">
                <h4>Bootcamp & Program</h4>
              </a>
            </div>
            <hr>
            <div class="program-content">
              <div class="section-program">
                <a href="">
                  <img src="../Image/DESAIN GRAFIS.png" alt="Poster">
                  <h3>Program Bootcamp</h3>
                  <br>
                  <div class="description">
                    <img src="../Image/calendar.png" alt="">
                    <p>Tanggal Bootcamp</p>
                  </div>
                </a>
              </div>
              <!-- <div class="program-container">
                      <h2>Oops, Sepertinya Kamu Belum Berlangganan</h2>
                      <button><a href="">Mulai Berlangganan</a></button>
                  </div> -->
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Content Selesai -->

    <!-- Footer -->
    <div id="about" class="footer">
      <div class="footer-container">
        <div class="logo">
          <h1>Skill +</h1>
        </div>
        <div class="footer-content">
          <div class="quotes">
            <h3>Level Up with Skill+</h3>
          </div>
          <div class="about">
            <div class="about1">
              <h3>Skill+</h3>
              <a href="#">About</a>
            </div>
            <div class="about2">
              <h3>Produk</h3>
              <a href="E-Learning.php">E-Learning</a>
              <br>
              <a href="Bootcamp.php">Bootcamp & Program</a>
            </div>
            <div class="about3">
              <h3>Lainnya</h3>
              <p>Kebijakan Privasi</p>
            </div>
          </div>
        </div>
        <div class="pembayaran">
          <p class="pembayaran-top">Metode Pembayaran :</p>
          <div class="logo-pembayaran">
            <li class="bank">Logo BRI</li>
            <li class="bank">Logo BCA</li>
            <li class="bank">Logo OVO</li>
            <li class="bank">Logo ShoppePay</li>
            <li class="bank">Logo DANA</li>
          </div>
          <p class="pembayaran-bot">© 2023 - 2024. All rights reserved</p>
        </div>
      </div>
    </div>
    </div>
    <!-- Footer Selesai -->
    <script>
      let subMenu = document.getElementById("subMenu");

      function toogleMenu() {
        subMenu.classList.toggle("open-menu");
      }
    </script>
  </body>

  </html>

<?php
} else {
  echo "<script>
          alert('Silahkan Masuk Terlebih Dahulu');
          window.location.href = '../Masuk.php';
        </script>";
}
?>