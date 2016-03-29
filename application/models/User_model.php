<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * User_model class.
 * 
 * @category Database
 * @package	Pdr
 * @subpackage Pdr
 * @author Dream Team <dreamteam@gmail.com>
 * @license private 	
 * @link https://github.com/Bandydan/pdr
 */
class User_model extends CI_Model {

	/**
	 * Almost empty constructor
	 * 
	 * @return void
	 */
	public function __construct() 
	{
		parent::__construct();
		$this->load->database();
	}
	
	/**
	 * Method creates user by given data.
	 * 
	 * @param array $data - array of incoming user data
	 * 
	 * @return bool true on success, false on failure
	 */
	public function create_user($data) 
	{
		$car = NULL;
		if ($data['ManufactureName'] !== '') 
		{
			$car = $data['ModelName'];
		}

		$pass = $data['password'];
		$data['avto_id'] = $car;
		$data['tel'] = $data['tel_prefix'] . $data['tel'];
		if (isset($data['user_rights']) AND isset($data['status'])) 
		{
			$status = $data['status'];
			$user_rights = $data['user_rights'];
		}
		else
		{
			$status = $this->config->item('STATUS_ON');
			$user_rights = $this->config->item('user_rights');
		}
		
		unset($data['tel_prefix'], $data['password'], $data['ManufactureName'], $data['ModelName'], $data['password_confirm'], $data['status'], $data['user_rights']);

		$this->db->insert('users', $data);
		$insert_id = $this->db->insert_id();

		$data1 = array(
			'user_id' 		=> $insert_id,
			'user_enabled'  => $status,
			'user_rights'   => $user_rights,
			'password'   	=> $this->_hash_password($pass),
		);
		
		$this->db->insert('authorization', $data1);
		
		return TRUE;
	}	
	
//I would suggest to make one check_password function from
// resolve_user_login and _verify_password_hash functions.
	/**
	 * Gets user password from DB and compares it with the given one.
	 * 
	 * @access public
	 * @param mixed $login    user login
	 * @param mixed $password user password
	 * @return bool true on success, false on failure
	 */
	public function resolve_user_login($login, $password) 
	{
		$this->db->select('authorization.password as password');
		$this->db->from('authorization');
		$this->db->join('users', 'authorization.user_id = users.id', 'inner');
		$this->db->where('users.login', $login);
		$hash = $this->db->get()->row('password');
		
		return $this->_verify_password_hash($password, $hash);
	}
	
	/**
	 * get_user_id_from_username function.
	 * 
	 * @access public
	 * @param mixed $login - Login
	 * @return integer - the user id
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
	 * @param integer $user_id - Id of user
	 * @return object the user object
	 */
	public function get_user($user_id) 
	{
		$this->db->from('users');
		$this->db->where('id', $user_id);
		return $this->db->get()->row();
	}

	/**
	 * Method gets user data by its ID
	 * @param integer $user_id - ID of user
	 * @return array of user data
	 */
	public function get_user_data($user_id)
	{
		$this->db->from('authorization');
		$this->db->where('user_id', $user_id);
		return $this->db->get()->row();
	}

//I suggest changing md5 to http://php.net/manual/ru/function.hash.php with sha256 and use its part (substr) to compare
	/**
	 * hash_password function.
	 * 
	 * @access private
	 * @param mixed $password - password
	 * @return string|bool could be a string on success, or bool false on failure
	 */
	private function _hash_password($password) 
	{
		return md5($password);
	}
	
	/**
	 * verify_password_hash function.
	 * 
	 * @access private
	 * @param mixed $password - password
	 * @param mixed $hash     - hash
	 * @return bool
	 */
	private function _verify_password_hash($password, $hash) 
	{
		return $this->_hash_password($password) === $hash;
	}	

	/**
	 * Method saves user session additional data to DB
	 * @return void
	 */
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

	/**
	 * Method retrieves user session additional data from DB
	 * @param string $session_id 
	 * @return array of data
	 */
	public function get_user_session($session_id)
	{
		$this->db->from('ci_session');
		$this->db->where('session_id', $session_id);
		return $this->db->get()->row();
	}

	/**
	 * Method gets array of users from DB
	 * 
	 * @return query result array
	 */
	public function get_user_info($id = '') 
	{	
		$this->db->select('u.login, u.id, u.name, u.surname, u.sex, 
			u.birthsday, u.tel, u.email, u.car_year, m.mark, c.model, 
			u.user_created, u.avatar, a.user_rights, a.user_enabled');
		$this->db->from('users as u');
		if ($id != null) 
		{
			$this->db->where('u.id', $id);
		}
		$this->db->join('cars_model as c', 'u.avto_id = c.id', 'left');
		$this->db->join('cars_mark as m', 'c.mark_id = m.id', 'left');
		$this->db->join('authorization as a', 'u.id = a.user_id');
		$query = $this->db->get();

		return $query->result_array();
	}

	public function change_user_status($id, $data)
	{
		$this->db->where('user_id',$id);
		$this->db->update('authorization', $data);

		return TRUE;
	}
}
