<footer class="blog-footer">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
		        <div class="p-4">
		          <h4 class="font-italic">Kategori</h4>
		          <ol class="list-unstyled mb-0">
		          	<?php foreach ($kategori as $key => $value) { ?>
		            <li><a href="#"><?= $value->nama_kategori; ?></a></li>
		        	<?php } ?>
		          </ol>
		        </div>
			</div>
			<div class="col-md-6">
				<div class="p-4">
		          <h4 class="font-italic">Alamat</h4>
		          <p><?= $about->alamat; ?></p>
		        </div>
			</div>
		</div>
	</div>
    <p>Copyright 2020 | WEB DESIGN by Dita 12RPLS</a>.</p>
    <p>
      <a href="#">Back to top</a>
    </p>
</footer>