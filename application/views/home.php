<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Home</title>

	<link rel="stylesheet" type="text/css" href="<?= base_url('resources/css/bootstrap.min.css'); ?>" />
	<link rel="stylesheet" type="text/css" href="<?= base_url('resources/css/blog.css'); ?>" />
</head>
<body>
	<div class="container">
	    <?php include('header.php'); ?>

	    <div class="nav-scroller py-1 mb-2">
	      <nav class="nav d-flex">
	        <a class="p-2 text-muted" href="<?= base_url('home'); ?>">Home</a>
	        <a class="p-2 text-muted" href="<?= base_url('about'); ?>">Tentang Kami</a>
	        <a class="p-2 text-muted" href="<?= base_url('produk'); ?>">Semua Produk</a>
	        <a class="p-2 text-muted" href="<?= base_url('faq'); ?>">FAQ</a>
	      </nav>
	    </div>

	    <div class="mb-5 mt-2 rounded">
	      <div class="col-md-12 px-0">
	        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
			  <div class="carousel-inner">
			  	<?php foreach ($banner as $key => $value) { ?>
			    <div class="carousel-item <?= ($key == 0) ? 'active':'' ?>">
			      <img src="<?= base_url($value->gambar); ?>" class="d-block w-100" alt="...">
			    </div>
				<?php } ?>
			  </div>
			  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
	      </div>
	    </div>

	    <div class="row mb-2">
	    	<?php foreach ($produk as $key => $value) { ?>
		    <div class="col-md-6">
		        <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
		          <div class="col p-4 d-flex flex-column position-static">
		            <strong class="d-inline-block mb-2 text-primary"><?= $value->nama_kategori; ?></strong>
		            <h4 class="mb-0"><?= $value->nama_produk; ?></h4>
		            <div class="mb-1 text-muted">Rp. <?= $value->harga_produk; ?></div>
		            <p class="mb-auto"><?= substr($value->deskripsi, 0, 100); ?></p>
		            <a href="<?= base_url('produk/detail/' . $value->id_produk); ?>" class="stretched-link">Selengkapnya</a>
		          </div>
		          <div class="col-auto d-none d-lg-block">
		            <img src="<?= base_url($value->gambar); ?>" alt="" width="200px" height="240">
		          </div>
		        </div>
		    </div>
			<?php } ?>

	    </div>
	</div>
	<?php include('footer.php'); ?>
<!-- load jquery js file -->
<script src="<?= base_url('resources/js/jquery.min.js');?>"></script>
<!-- load bootstrap js file -->
<script src="<?= base_url('resources/js/bootstrap.min.js');?>"></script>
</body>
</html>