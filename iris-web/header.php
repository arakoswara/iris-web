  <?php
  @$hal=$_GET['hal'];
  if($hal=="" or empty($hal)){
    $start=0;
  }else{
    $start=($hal-1) * 10;
  }
  ?>
  <header class="" style="background:#ebebeb;">
    <div class="container" style="width:75%;">
      <div class="navbar-right">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar" style="background-color:#565656;"></span>
                    <span class="icon-bar" style="background-color:#565656;"></span>
                    <span class="icon-bar" style="background-color:#565656;"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li><a href="index.php"><i class="fa fa-home"></i> Beranda</a></li>
            <li><a href="contact.php"><i class="fa fa-phone"></i> Hubungi Kami</a></li>
            <li><a href="cara-belanja.php"><i class="fa fa-shopping-cart"></i> Cara Belanja</a></li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div>
    </div><!-- /.container -->
  </header>

  <!-- ================================== BRAND AND FORM SEARCH ============================= -->
  <nav class="navbar navbar" style="background:#ebebeb; padding-bottom:15px;">
    <div class="container" style="width:75%;">
      <div class="col-md-5" id="logo">
          <a class="navbar-brand" href="index.php">
            <img src="images/Bis.png" alt="" width="100%">
          </a>
      </div>
      <?php
      include 'config/config.php';
      $query_form = mysqli_query($connect,"SELECT * FROM ka_product LIKE %");
      ?>
        <form action="header_submit" method="POST" accept-charset="utf-8">
        <div class="col-lg-7" style="padding-top:10px; padding-right:27px;">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Search for..." name="cari">
            <span class="input-group-btn">
              <button class="btn btn-danger" type="button" style="border:solid 1px black;"><i class="fa fa-search"></i></button>
            </span>
          </div><!-- /input-group -->
        </div><!-- /.col-lg-7 -->
        </form>
    </div><!-- /.container -->
  </nav> <!-- /.nav-->

  <!-- ================================== MENU UTAMA =============================== -->
  <nav class="navbar navbar-default" style="margin-top:-20px;border-top:solid 5px #0d3d6e;">
    <div class="container" style="width:75%;">
      <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
              <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
          </button>
      </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
          <ul class="nav navbar-nav">
            <?php 
            $query = mysqli_query($connect,"SELECT * FROM ka_category");
            while ($data = mysqli_fetch_array($query)) {
            ?>
            <li id="menu-category"><a href="kategori.php?id_category=<?php echo $data['id_category'];?>" title=""><?php echo $data['category'];?></a></li>
            <?php } ?>
          </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container -->
  </nav>