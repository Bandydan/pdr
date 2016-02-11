<?php
defined('BASEPATH') OR exit('No direct script access allowed');

//auto, not aVto ;)

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
		$avto = NULL;
		if ($data['ManufactureName'] !== '--') 
		{
			$avto = $this->_get_avto_id($data);
		}

		//TODO: Why don't you use $data itself to insert into database?
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
			'user_id' 		=> $insert_id,
			'user_enabled'  => $this->config->item('STATUS_ON'),
			'user_rights'   => $this->config->item('user_rights'),
			'password'   	=> $this->hash_password($data['password']),
		);
		
		$this->db->insert('authorization', $data2);
		
		return TRUE;
	}	
	
	/**
	 * @access private
	 * Method gets id of given auto by its data
	 * TODO:
	 * @deprecated METHOD SHOULD BE REMOVED, ID SHOULD COME FROM THE FORM!!!
	 * @param array $data 
	 * @return integer
	 * 
	 */
	private function _get_avto_id($data) 
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
		
		return $this->verify_password_hash($password, $hash);
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
	public function get_users()
	{

		//I suggest moving user fields to array and then to join it using implode. Instead of user table mentioning, it'd be better to use u. and then user as u
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
