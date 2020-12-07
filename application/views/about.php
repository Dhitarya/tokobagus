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

	    <div class="row mb-2">
		    <div class="col-md-12">
		        <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm position-relative">
		          <div class="col p-4 d-flex flex-column position-static">
		            <h4 class="mb-0"><?= $about->judul; ?></h4>
		            <p class="mb-auto"><?= $about->deskripsi; ?></p>
			        <hr>
		            <h4 class="mb-0">Alamat</h4>
			        <p>
			        	<?= $about->alamat; ?>
			        	<br>
			        	<?= $about->telepon; ?>
			        </p>
		          </div>
		        </div>
		    </div>
	    </div>
	</div>
	<?php include('footer.php'); ?>
<!-- load jquery js file -->
<script src="<?= base_url('resources/js/jquery.min.js');?>"></script>
<!-- load bootstrap js file -->
<script src="<?= base_url('resources/js/bootstrap.min.js');?>"></script>
</body>
</html>