<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	public function __construct() {
		parent::__construct();
		if ($this->session->userdata('login') == TRUE) {
			redirect(base_url());
		}
		$this->load->library('form_validation');
		$this->load->model('m_login');
	}

	public function index() {
		$this->load->view('login');
	}

	public function auth() {
		$this->form_validation->set_rules('nikUsername', 'Nik / Username', 'trim|required');
		$this->form_validation->set_rules('password', 'Password', 'trim|required');
		$dataPost = $this->input->post();
		$findNIK = $this->m_login->find_nik_user($dataPost['nikUsername']);
		$user_nik = $this->m_login->login_nik($dataPost['nikUsername']);
		$findUsername = $this->m_login->find_username_user($dataPost['nikUsername']);
		$user_username = $this->m_login->login_username($findUsername->nik);
		if ($this->form_validation->run() != false ) {
			if ($findNIK->level == 'penduduk' || $findUsername->level == 'penduduk') {
				if (!empty($user_nik) && password_verify($dataPost['password'], $findNIK->password)) {
					$this->session->set_userdata('login', TRUE);
					$this->session->set_userdata('nik', $user_nik->nik);
					$this->session->set_userdata('nama', $user_nik->nama);
					$this->session->set_userdata('level', $user_nik->level);
					redirect(base_url());
				} elseif (!empty($user_username) && password_verify($dataPost['password'], $findUsername->password)) {
					$this->session->set_userdata('login', TRUE);
					$this->session->set_userdata('nik', $user_username->nik);
					$this->session->set_userdata('nama', $user_username->nama);
					$this->session->set_userdata('level', $user_username->level);
					redirect(base_url());
				}
				else {
					$this->session->set_flashdata('login_gagal', 'Login Gagal, Data Tidak Valid!');
					redirect(base_url('login'));
				}
			}
			else{
				if (!empty($findNIK) && password_verify($dataPost['password'], $findNIK->password)) {
					$this->session->set_userdata('login', TRUE);
					$this->session->set_userdata('nik', $findNIK->nik);
					$this->session->set_userdata('nama', $findNIK->username);
					$this->session->set_userdata('level', $findNIK->level);
					redirect(base_url());
				} elseif (!empty($findUsername) && password_verify($dataPost['password'], $findUsername->password)) {
					$this->session->set_userdata('login', TRUE);
					$this->session->set_userdata('nik', $findUsername->nik);
					$this->session->set_userdata('nama', $findUsername->username);
					$this->session->set_userdata('level', $findUsername->level);
					redirect(base_url());
				}
				else {
					$this->session->set_flashdata('login_gagal', 'Login Gagal, Data Tidak Valid!');
					redirect(base_url('login'));
				}
			}
		}
	}
}
