<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kematian extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('login') == FALSE) {
			redirect(base_url("login"));
		}
		$this->load->model('m_kematian');
	}

	public function tampil()
	{
		$data['title'] = "Data Kematian - Desa Warung Bambu";
		$data['kematian'] = $this->m_kematian->tampil();

		$this->load->view('header', $data);
		$this->load->view('kematian/tampil_kematian');
		$this->load->view('footer');
	}
	public function tampil_kematian()
	{
		$data['title'] = "Data Kematian - Desa Warung Bambu";
		$data['kematian'] = $this->m_kematian->tampil();

		$this->load->view('header', $data);
		$this->load->view('kematian/tampil_kematian2');
		$this->load->view('footer');
	}
	public function tambah()
	{
		$data['title'] = "Tambah Kematian - Desa Warung Bambu";

		$this->load->view('header', $data);
		$this->load->view('kematian/tambah_kematian');
		$this->load->view('footer');
	}

	public function proses_tambah()
	{

		$nik = $this->input->post('nik');
		$nama = $this->input->post('nama');
		$jenis_kelamin = $this->input->post('jenis_kelamin');
		$tempat_lahir = $this->input->post('tempat_lahir');
		$tanggal_lahir = $this->input->post('tanggal_lahir');
		$agama = $this->input->post('agama');
		$pekerjaan = $this->input->post('pekerjaan');
		$alamat = $this->input->post('alamat');
		$rt = $this->input->post('rt');
		$rw = $this->input->post('rw');
		$hari_wafat = $this->input->post('hari_wafat');
		$tanggal_wafat = $this->input->post('tanggal_wafat');
		$pukul = $this->input->post('pukul');
		$no_kk = $this->input->post('no_kk');

		$data = array(
			'nik' => $nik,
			'no_kk' => $no_kk,
			'nama' => ucwords($nama),
			'jenis_kelamin' => $jenis_kelamin,
			'tempat_lahir' => $tempat_lahir,
			'tanggal_lahir' => $tanggal_lahir,
			'agama' => $agama,
			'pekerjaan' => $pekerjaan,
			'alamat' => $alamat,
			'rt' => $rt,
			'rw' => $rw,
			'hari_wafat' => $hari_wafat,
			'tanggal_wafat' => $tanggal_wafat,
			'pukul' => $pukul,
		);
		$this->m_kematian->tambah($data);

		$this->session->set_flashdata('sukses', 'Data dengan ID ' . $nik . ' berhasil ditambahkan.');
		redirect(base_url('kematian/tampil'));
	}

	public function edit($nik)
	{
		$data['title'] = "Edit kematian - Desa Warung Bambu";
		$data['kematian'] = $this->m_kematian->edit($nik);

		$this->load->view('header', $data);
		$this->load->view('kematian/edit_kematian');
		$this->load->view('footer');
	}

	public function proses_edit()
	{
		$data = array(

			'nama' => $this->input->post('nama'),
			'jenis_kelamin' => $this->input->post('jenis_kelamin'),
			'tempat_lahir' => $this->input->post('tempat_lahir'),
			'tanggal_lahir' => $this->input->post('tanggal_lahir'),
			'agama' => $this->input->post('agama'),
			'pekerjaan' => $this->input->post('pekerjaan'),
			'alamat' => $this->input->post('alamat'),
			'rt' => $this->input->post('rt'),
			'rw' => $this->input->post('rw'),
			'hari_wafat' => $this->input->post('hari_wafat'),
			'tanggal_wafat' => $this->input->post('tanggal_wafat'),
			'pukul' => $this->input->post('pukul'),
		);
		$where = array(
			'nik' => $this->input->post('id'),
		);
		$this->m_kematian->proses_edit($where, $data);

		$this->session->set_flashdata('sukses', 'Data berhasil diedit.');
		redirect(base_url('kematian/tampil/'));
	}

	public function hapus($nik)
	{
		$this->m_kematian->hapus($nik);
		$this->session->set_flashdata('sukses', 'Data dengan ID ' . $nik . ' berhasil dihapus.');
		redirect(base_url('kematian/tampil'));
	}

	public function detail($nik)
	{
		$this->load->model('m_kematian');
		$detail = $this->m_kematian->detail($nik);
		$data['detail'] = $detail;
		$this->load->view('header', $data);
		$this->load->view('kematian/detail_kematian', $data);
		$this->load->view('footer');
	}
}