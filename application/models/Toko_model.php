<?php
class Toko_model extends CI_Model{
	function get_list_produk(){
		$sql = "SELECT a.*, b.nama_kategori FROM produk a
				LEFT JOIN kategori b ON a.id_kategori = b.id_kategori 
				LIMIT 4";
		$query = $this->db->query($sql);
        return $query->result();
	}

	function get_list_all_produk(){
		$sql = "SELECT a.*, b.nama_kategori FROM produk a
				LEFT JOIN kategori b ON a.id_kategori = b.id_kategori";
		$query = $this->db->query($sql);
        return $query->result();
	}

	function get_list_faq(){
		$sql = "SELECT * FROM faq";
		$query = $this->db->query($sql);
        return $query->result();
	}

	function get_list_kategori(){
		$sql = "SELECT * FROM kategori";
		$query = $this->db->query($sql);
        return $query->result();
	}

	function get_list_banner(){
		$sql = "SELECT * FROM banner";
		$query = $this->db->query($sql);
        return $query->result();
	}

	function get_detail_about(){
		$sql = "SELECT * FROM about WHERE id_about = '1'";
		$query = $this->db->query($sql);
	    return $query->row();
	}

	function get_detail_produk($id_produk){
		$sql = "SELECT a.*, b.nama_kategori FROM produk a
				LEFT JOIN kategori b ON a.id_kategori = b.id_kategori
				WHERE a.id_produk = ?";
		$query = $this->db->query($sql, $id_produk);
        return $query->row();
	}

}