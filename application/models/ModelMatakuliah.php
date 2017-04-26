<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class ModelMatakuliah extends CI_Model {

	public function getMatakuliah()
	{
		$matakuliah = $this->db->get('matakuliah');
		return $matakuliah;
	}

	public function getSumMatkul()
	{
		$this->db->select_sum('id_matakuliah');
		$testsum = $this->db->get('matakuliah');
		return $testsum;
	}
}
 ?>