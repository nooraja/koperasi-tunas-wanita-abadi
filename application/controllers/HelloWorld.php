<?php
defined('BASEPATH') OR exit('No direct script access allowed');



class HelloWorld extends CI_Controller {

	
	public function index()
	 {
	 	$this->load->model('mymodel');
		$user = $this->mymodel->testerUser()->result();
		//print_r($user);

		// This variable Ïtry to collect data from function testeruser() 
		// That variable become a array
		
		//$_FILES['variable']
		 $data['mahasiswa'] = $this->mymodel->testerUser()->result();

		$this->load->view('Tester', $data);

	}

	public function input()
	{
		$this->load->view('input_mahasiswa');
	}

	public function input_simpan()
	{
		
		$datamahasiswa = array(
			'id_mahasiswa'	 => $this->input->post('id_mahasiswa'), 
			'nama_mahasiswa' => $this->input->post('nama_mahasiswa'));
		$this->db->insert('mahasiswa', $datamahasiswa);
	}

	public function input_matkul()
	{
		$this->load->view('input_matakuliah');
	}

	public function input_ruangan()
	{
		$datamatakuliah = array(
			'id_matakuliah' 	=> $this->input->post('id_matakuliah'),
			'nama_matakuliah' 	=> $this->input->post('nama_matakuliah'),
			'ruangan' 			=> $this->input->post('ruangan')
			);
		$this->db->insert('matakuliah', $datamatakuliah);
	}
	
}
