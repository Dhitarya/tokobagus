<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	
	function __construct(){
	    parent::__construct();
	    $this->load->model('toko_model');
	}

	public function index()
	{
		// ambil data produk dari model
		$data['produk'] = $this->toko_model->get_list_produk();
		// ambil data kategori dari model
		$data['kategori'] = $this->toko_model->get_list_kategori();
		// ambil data banner dari model
		$data['banner'] = $this->toko_model->get_list_banner();
		// ambil data about dari model
		$data['about'] = $this->toko_model->get_detail_about();
		//--
    	$this->load->view('home', $data);
	}
}
