<?php

/**
* 
*/
class ControllerSimpanan extends CI_Controller
{
	
	public function index()
	{
		$this->load->model('modelsimpanan');
		$data['simpanan'] = $this->modelsimpanan->getSimpanan()->result();

		$this->load->view('ContentSimpan', $data);
	}

	public function setSimpan()
	{
		$this->load->model('modelsimpanan');
		$data['simpanan'] = $this->modelsimpanan->getSimpanan()->result();

		$this->load->view('HeaderUtama');
		$this->load->view('SideBar');
		$this->load->view('ContentSimpan', $data);
	}
}

?>