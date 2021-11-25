<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_kematian extends CI_Model
{
	public function tampil()
	{
		return $this->db->get('kematian')->result();
	}
	public function cari($nik)
	{
		$this->db->where('nik', $nik);
		$query = $this->db->get('kematian');
		if ($query->num_rows() > 0) {
			return false;
		} else {
			return true;
		}
	}

	public function tambah($data)
	{
		return $this->db->insert('kematian', $data);
	}

	public function edit($nik)
	{
		$this->db->where('nik', $nik);
		return $this->db->get('kematian')->row();
	}

	public function proses_edit($where, $data)
	{
		$this->db->where($where);
		return $this->db->update('kematian', $data);
	}

	public function hapus($nik)
	{
		$this->db->where('nik', $nik);
		return $this->db->delete('kematian');
	}
	public function detail($nik = NULL)
	{
		$query = $this->db->get_where('kematian', array('nik' => $nik))->row();
		return $query;
	}
}