<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class registrasi extends CI_Controller {
	public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }
	public function index()
	{
		$data = $this->input->post();
		if ($data != null) {
			$this->load->model('M_registrasi');
			$findNIK = $this->M_registrasi->find_nik($data['nik']);
			$findNikUser = $this->M_registrasi->find_nik_user($data['nik']);
			if ($findNIK != null ) {
				if (empty($findNikUser)) {
						$data['password'] = password_hash($data['password'], PASSWORD_DEFAULT);
						$result = $this->M_registrasi->saveUser($data);
					if ($result) {
						$this->session->set_flashdata('message', 'Berhasil mendaftar!');
						redirect('/login');
					} else {
						$this->session->set_flashdata('message', 'Gagal mendaftar!');
					}
				}
				else {
					$this->session->set_flashdata('message', 'NIK Telah Terdaftar!');
				}
			} else {
				$this->session->set_flashdata('message', 'NIK tidak ada dalam Data Penduduk!');
			}
		}
		$this->load->view('registrasi');
	}
}

