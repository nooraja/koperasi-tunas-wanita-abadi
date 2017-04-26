<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
class Matakuliah extends CI_Controller
{
	
	public function index()
	{
		$this->load->model('modelmatakuliah');
		// $tester = $this->modelmatakuliah->getMatakuliah->result();
		// print_r($tester);

		$data['matakuliah'] = $this->modelmatakuliah->getMatakuliah()->result();
		$this->load->view('ViewMatakuliah', $data);
	}

	public function getIdMatakuliah()
	{
		$this->load->model('modelmatakuliah');

		$data['matakuliah'] = $this->modelmatakuliah->getSumMatkul()->result();
		$this->load->view('TesterSumMatkul', $data);
	}
}