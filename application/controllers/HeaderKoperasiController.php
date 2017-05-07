<?php defined('BASEPATH') OR exit('No direct script access allowed'); 

/**
* 
*/
class HeaderKoperasiController extends CI_Controller
{
	
	public function index()
	{
		$this->load->view('HeaderUtama');
		$this->load->view('SideBar');
		$this->load->view('Contents');
	}

	public function setLogin()
	{
		$this->load->view('Login');
	}

	

}
?>


