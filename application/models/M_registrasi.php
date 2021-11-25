<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_registrasi extends CI_Model
{

  public function find_nik($nik)
  {
    $query = $this->db->get_where('penduduk', array('nik' => $nik));
    return $query->row();
  }

  public function find_nik_user($nik)
  {
    $query = $this->db->get_where('user', array('nik' => $nik));
    return $query->row();
  }

  public function register_penduduk() {
    $post = $this->input->post();
    $this->nama = $post["nama"];
    $this->nik = $post["nik"];
    $this->no_kk = $post["no_kk"];
    $this->tempat_lahir = $post["tempat_lahir"];
    $this->tanggal_lahir = date("Y-m-d H:i:s", strtotime($post["tanggal_lahir"]));
    $this->jenis_kelamin = $post["jenis_kelamin"];
    $this->alamat = $post["alamat"];
    $this->rt = $post["rt"];
    $this->rw = $post["rw"];
    $this->agama = $post["agama"];
    $this->status_perkawinan = $post["status_perkawinan"];
    $this->pendidikan = $post["pendidikan"];
    $this->pekerjaan = $post["pekerjaan"];
    $this->status = $post["status"];
    $this->golongan_darah = $post["golongan_darah"];
    $this->kewarganegaraan = $post["kewarganegaraan"];
    $this->db->insert('penduduk', $this);
  }

  public function saveUser($data){
      return $this->db->insert('user', $data);
  }
}

/* End of file Register_model.php */
