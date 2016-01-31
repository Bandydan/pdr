<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Admin_model class.
 * 
 * @extends CI_Model
 */
class Admin_model extends CI_Model {

	public function create_content() 
	{

		$this->load->helper('url');

		$data = array(
			'title'   		=> $this->input->post('title'),
			'content_text'  => $this->input->post('text'),
			'meta'   		=> $this->input->post('meta'),
			'category'  	=> $this->input->post('category'),
		);

		return $this->db->insert('Content', $data);

	}

}