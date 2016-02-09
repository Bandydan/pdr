<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * User_model class.
 * 
 * @extends CI_Model
 */
class User_model extends CI_Model {

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
	 * create_user function.
	 * 
	 * @access public
	 * @param mixed $username
	 * @param mixed $email
	 * @param mixed $password
	 * @return bool true on success, false on failure
	 */
	public function create_user($data) 
	{
		if ($data['ManufactureName'] !== '--') 
		{
			$avto = $this->get_avto_id($data);
		}
		else
		{
			$avto = NULL;
		}

		$data1 = array(
			'login'   	=> $data['login'],
			'name'   	=> $data['name'],
			'surname'   => $data['surname'],
			'sex'   	=> $data['sex'],
			'birthsday' => $data['birthsday'],
			'tel'   	=> $data['tel'],
			'email'     => $data['email'],
			'avto_id'	=> $avto,
		);

		$this->db->insert('users', $data1);
		$insert_id = $this->db->insert_id();

		$data2 = array(
<<<<<<< HEAD
			'user_id' 		=> $insert_id,
			'user_enabled'  => $this->config->item('STATUS_ON'),
			'user_rights'   => $this->config->item('user_rights'),
			'password'   	=> $this->hash_password($data['password']),
=======
			'user_id' => $insert_id,
			'user_enabled'  => $this->config->item('STATUS_ON'),
			'user_rights'   => $this->config->item('user_rights'),
			'password'   	=> $this->hash_password($password),
>>>>>>> upstream/master
		);
		
		$this->db->insert('authorization', $data2);
		
		return TRUE;
	}	
	
	private function get_avto_id($data) 
	{
		$this->db->select('id');
		$this->db->from('avto');
		$this->db->where('manufacture', $data['ManufactureName']);
		$this->db->where('model', $data['ModelName']);
		$this->db->where('year', $data['year']);
		$query = $this->db->get();

		$avto_id = $query->result_array();
		$avto = $avto_id['0']['id'];

		return $avto;
	}

	/**
	 * resolve_user_login function.
	 * 
	 * @access public
	 * @param mixed $username
	 * @param mixed $password
	 * @return bool true on success, false on failure
	 */
	public function resolve_user_login($login, $password) 
	{
		$this->db->select('authorization.password as password');
		$this->db->from('authorization');
		$this->db->join('users', 'authorization.user_id = users.id', 'inner');
		$this->db->where('users.login', $login);
		$hash = $this->db->get()->row('password');
		
		return $this->verify_password_hash($password, $hash);
	}
	
	/**
	 * get_user_id_from_username function.
	 * 
	 * @access public
	 * @param mixed $username
	 * @return int the user id
	 */
	public function get_user_id_from_username($login) 
	{
		$this->db->select('id');
		$this->db->from('users');
		$this->db->where('login', $login);

		return $this->db->get()->row('id');
	}
	
	/**
	 * get_user function.
	 * 
	 * @access public
	 * @param mixed $user_id
	 * @return object the user object
	 */
	public function get_user($user_id) 
	{
		$this->db->from('users');
		$this->db->where('id', $user_id);
		return $this->db->get()->row();
	}

	public function get_user_data($user_id)
	{
		$this->db->from('authorization');
		$this->db->where('user_id', $user_id);
		return $this->db->get()->row();
	}
	
	/**
	 * hash_password function.
	 * 
	 * @access private
	 * @param mixed $password
	 * @return string|bool could be a string on success, or bool false on failure
	 */
	private function hash_password($password) 
	{
		return md5($password);
	}
	
	/**
	 * verify_password_hash function.
	 * 
	 * @access private
	 * @param mixed $password
	 * @param mixed $hash
	 * @return bool
	 */
	private function verify_password_hash($password, $hash) 
	{
		return $this->hash_password($password) === $hash;
	}	

	public function set_user_session()
	{
		$data = array(
			'session_id' => session_id(),
			'ip_address'  => $this->input->ip_address(),
			'last_activity'   => '1',
			'user_agent'   	=> '1',
			'user_id' => $this->session->userdata('user_id'),
		);

		$this->db->insert('ci_session', $data);
	}

	public function get_user_session($session_id)
	{
		$this->db->from('ci_session');
		$this->db->where('session_id', $session_id);
		return $this->db->get()->row();
	}

	public function get_users()
	{
		$this->db->select('users.login, users.name, users.surname, users.sex, 
			users.birthsday, users.tel, users.email, avto.manufacture, avto.model, 
			users.user_created, users.avatar, authorization.user_rights, authorization.user_enabled');
		$this->db->from('users');
		$this->db->join('avto', 'users.avto_id = avto.id', 'left');
		$this->db->join('authorization', 'users.id = authorization.user_id');
		$query = $this->db->get();

		return $query->result_array();
	}
}
