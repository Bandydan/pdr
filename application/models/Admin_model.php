<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Admin_model class.
 * 
 * @extends CI_Model
 */
class Admin_model extends CI_Model {

	/**
	 * __construct function.
	 * 
	 * @access public
	 * @return void
	 */
	public function __construct() 
	{
		parent::__construct();
		$this->load->database();
	}

	/**
	 * Get data for main page of admin panel
	 */
	public function get_comments($limit)
	{
		//get comments
		$this->db->select('c.id, users.login, c.comment_text, c.comment_created');
		$this->db->from('comments as c');
		$this->db->join('users', 'users.id = c.user_id');
		$this->db->order_by('c.comment_created', 'DESC');
		$this->db->limit($limit);
		$query = $this->db->get();
		
		return $query->result_array();
	}

	public function get_requests($limit)
	{
		//get requests
		$this->db->select('o.id, o.order_text, o.order_created, users.login, mediafiles.media_link');
		$this->db->from('order_for_assessment as o');
		$this->db->join('users', 'users.id = o.user_id');
		$this->db->join('mediafiles', 'mediafiles.id = o.photo_id');
		$this->db->order_by('o.order_created', 'DESC');
		$this->db->limit($limit);
		$query = $this->db->get();

        return $query->result_array();
	}

	public function get_cars()
	{
		//get cars
		$query = $this->db->query('SELECT cars_model.id, cars_model.model, cars_model.mark_id, cars_mark.mark as manufacture FROM cars_model JOIN cars_mark ON cars_model.mark_id = cars_mark.id');
		
		return $query->result_array();
	}

	public function get_marks()
	{
		$query = $this->db->query('SELECT id, mark as manufacture FROM cars_mark');
		return $query->result_array();
	}

	public function add_car($newCar)
	{
		$mark = $newCar['mark'];
		$model = $newCar['model'];

		$this->db->select('id');
		$this->db->from('cars_mark');
		$this->db->where('mark', $mark);
		$query = $this->db->get();
		$result = $query->result_array();
		if (empty($result)) 
		{
			$data = array('mark' => $mark,);
			$this->db->insert('cars_mark', $data);
			$insert_id = $this->db->insert_id();
		}
		else
		{
			$insert_id = $result['0']['id'];
		}

		$this->db->select('id, mark_id');
		$this->db->from('cars_model');
		$this->db->where('mark_id', $insert_id);
		$this->db->where('model', $model);
		$query = $this->db->get();
		$result = $query->result_array();
		if (empty($result)) 
		{
			$data = array(
				'mark_id' => $insert_id,
				'model' => $model,);
			$this->db->insert('cars_model', $data);

			return TRUE;	
		}
			return FALSE;
	}

	public function create_content() 
	{	
		//add content
		if ($this->input->post('status') == 'on')
		{
			$status = $this->config->item('STATUS_ON');
		}
		else
		{
			$status = $this->config->item('STATUS_OFF');
		}


		$data = array(
			'title'   		=> $this->input->post('title'),
			'content_text'  => $this->input->post('text'),
			'meta'   		=> $this->input->post('meta'),
			'category'  	=> $this->input->post('category'),
			'status'  		=> $status,
			);
			$id = $this->input->post('id');

		if ($id != 0) {
			$data['address'] = $this->input->post('address');
			$this->db->where('id',$id);
			$this->db->update('Content', $data);
		}
		else {
			$data['address'] = base_url().'news/'.$this->input->post('address');
			return $this->db->insert('Content', $data);
		}
	}

	public function create_example() 
	{	
		//add example
		$data = array(
			'category'  	=> $this->input->post('category'),
			'about'   		=> $this->input->post('text'),
			'photo_before'  => $this->input->post('foto_before'),
			'photo_after'	=> $this->input->post('foto_after'),
			'additionally'  => $this->input->post('additionally'),
			);
		
		return $this->db->insert('example_works', $data);
	}

	public function delete_data($id, $table)
	{
		//delete data
		$this->db->from($table);
		$this->db->where('id', $id);
		$query = $this->db->delete();
		
		return TRUE;
	}

	
	public function get_article($id){
		
		if ($id != null) 
		{
			$this->db->where('id',$id);
			$query = $this->db->get('Content')->row_array();
		}
		
		else {
			$query = $this->db->get('Content')->result_array();
			}

		return $query;

	}

	public function get_example($id){
		
		if ($id != null) 
		{
			$this->db->where('id',$id);
			$query = $this->db->get('example_works')->row_array();
		}
		
		else 
		{
			$query = $this->db->get('example_works')->result_array();
		}
		
		return $query;
	}

}