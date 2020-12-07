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
		        <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm position-relative p-2">
		          <div class="col-auto d-none d-lg-block">
		            <img src="<?= base_url($produk->gambar); ?>" alt="" width="200px" height="240">
		          </div>
		          <div class="col p-4 d-flex flex-column position-static">
		            <strong class="d-inline-block mb-2 text-primary"><?= $produk->nama_kategori; ?></strong>
		            <h4 class="mb-0"><?= $produk->nama_produk; ?></h4>
		            <div class="mb-1 text-muted">Rp. <?= $produk->harga_produk; ?></div>
		            <p><?= $produk->deskripsi; ?></p>
		            <br>
		            <div class="row">
		            	<div class="col-md-4">
		            		<div class="form-group">
		            			<label>Qty:</label>
		            			<div class="row">
		            				<div class="col-md-6">
		            					<input type="number" class="form-control" value="1" min="1" max="99">
		            				</div>
		            				<div class="col-md-6">
		            					<button type="button" class="btn btn-primary btn-md btn-block">Beli</button>
		            				</div>
		            			</div>
		            		</div>
		            	</div>
		            </div>
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