<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
* 
*/
class Mymodel extends CI_Model
{
	public function getUser()
	{
		$userid = $this->db->query('select * from user');
		return $data->result_array();
	}

	public function testerUser()
	{
		//$users = array('Noor', 'Jinx', 'Mechanic');
		$users = $this->db->get('mahasiswa');
		return $users;
	}
}
?>