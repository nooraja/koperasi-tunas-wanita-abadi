<?php

/**
* 
*/
class ModelSimpanan extends CI_Model
{
	
	public function getSimpanan()
	{
		$simpanan = $this->db->get('simpanan');
		return $simpanan;
	}
}

  ?>