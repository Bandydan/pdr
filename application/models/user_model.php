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
	public function create_user($login, $name, $surname, $sex, $birthsday, $tel, $email, $password) 
	{
		$data1 = array(
			'login'   	=> $login,
			'name'   	=> $name,
			'surname'   => $surname,
			'sex'   	=> $sex,
			'birthsday' => $birthsday,
			'tel'   	=> $tel,
			'email'     => $email,
		);

		$this->db->insert('users', $data1);
		//$u_id = $this->db->query('SELECT id FROM users WHERE login = '.$this->db->escape($login).'');
		$id = $this->db->insert_id();

		$data2 = array(
			'user_id' => $id,
			'user_enabled'  => '1',
			'user_rights'   => '1',
			'password'   	=> $this->hash_password($password),
		);
		
		$this->db->insert('authorization', $data2);
		
		return TRUE;
		//return $this->db->insert('users', $data);
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
			'user_id' => $_SESSION['user_id'],
		);

		$this->db->insert('ci_session', $data);
	}

	public function get_user_session($session_id)
	{
		$this->db->from('ci_session');
		$this->db->where('session_id', $session_id);
		return $this->db->get()->row();
	}
}
