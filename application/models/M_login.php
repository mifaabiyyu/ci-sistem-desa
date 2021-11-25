<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_login extends CI_Model
{
  public function login_nik($data)
	{
		return $this->db->from('user')->join('penduduk', 'penduduk.nik=user.nik')->where('user.nik',$data)->get()->row();
	}

	public function find_nik_user($nik)
  {
    $query = $this->db->get_where('user', array('nik' => $nik));
    return $query->row();
  }

  public function login_username($data)
	{
		return $this->db->from('user')->join('penduduk', 'penduduk.nik=user.nik')->where('user.nik',$data)->get()->row();
	}

	public function find_username_user($username)
  {
    $query = $this->db->get_where('user', array('username' => $username));
    return $query->row();
  }
}
