<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * User class.
 * 
 * @extends CI_Controller
 */
class User extends CI_Controller {

	/**
	 * __construct function.
	 * 
	 * @access public
	 * @return void
	 */
	public function __construct() 
	{	
		parent::__construct();
		$this->load->model('user_model');
		$this->load->library('twig');
		$this->load->helper('security');

		$this->load->helper('language');
	}
	
	
	public function index() 
	{	
	}
	
	/**
	 * register function.
	 * 
	 * @access public
	 * @return void
	 */
	public function register() 
	{
		// load form helper and validation library
		$this->load->helper('form');
		$this->load->library('form_validation');
		$this->load->model('admin_model');
		$data['models'] = $this->admin_model->get_cars();
		$data['marks'] = $this->admin_model->get_marks();
		$data['title'] = 'Garage - Регистрация';

		$data = $this->_language();
		
		// set validation rules
		$this->form_validation->set_rules('login', 'Логин', 'trim|required|alpha_numeric|min_length[3]|is_unique[users.login]|xss_clean', array('is_unique' => 'Этот логин уже занят. Пожалуйста введите другой.'));
		$this->form_validation->set_rules('name', 'Имя', 'trim|required|alpha_numeric|min_length[2]|xss_clean');
		$this->form_validation->set_rules('surname', 'Фамилия', 'trim|required|alpha_numeric|min_length[2]|xss_clean');
		$this->form_validation->set_rules('sex', 'Пол', 'required');
		$this->form_validation->set_rules('birthsday', 'Дата рождения', 'trim|required');
		$this->form_validation->set_rules('email', 'e-mail', 'trim|required|valid_email|is_unique[users.email]|xss_clean', array('is_unique' => 'Данный e-mail уже используется. Пожалуйста введите другой.'));
		$this->form_validation->set_rules('tel', 'Телефон', 'trim|required|alpha_numeric|min_length[7]|max_length[7]|xss_clean');
		$this->form_validation->set_rules('tel_prefix', 'Код', 'trim|required|alpha_numeric|min_length[5]|max_length[5]');
		$this->form_validation->set_rules('password', 'Пароль', 'trim|required|min_length[6]|xss_clean');
		$this->form_validation->set_rules('password_confirm', 'Подтверждение пароля', 'trim|required|min_length[6]|matches[password]|xss_clean');

		if ($this->form_validation->run() === false) 
		{
			// validation not ok, send validation errors to the view
			if (validation_errors() == true) 
			{
				$data['error'] = 'Проверьте правильность заполнения всех полей.';
			}
			
			echo $this->twig->render('user/register/register', $data);	
		}
		elseif (($this->input->post('ManufactureName') != null AND $this->input->post('ModelName') == null) OR ($this->input->post('ManufactureName') == null AND $this->input->post('car_year') != null)) 
		{
			$data['error'] = 'Проверьте правильность заполнения полей выбора авто.';
			
			echo $this->twig->render('user/register/register', $data);
		}

		else 
		{
			$register = $this->input->post();
			
			if ($this->user_model->create_user($register)) 
			{
				// user creation ok
				unset($_POST);

				echo $this->twig->render('user/register/register_success', $data);	
			} 
			
			else 
			{
				// user creation failed, this should never happen
				$data['error'] = 'Что-то пошло не так. Please try again.';
				
				// send error to the view
				echo $this->twig->render('user/register/register', $data);
			}	
		}
	}
		
	/**
	 * login function.
	 * 
	 * @access public
	 * @return void
	 */
	public function login() 
	{
		// load form helper and validation library
		$this->load->helper('form');
		$this->load->library('form_validation');
		$data['title'] = 'Garage - Авторизация';
		$data = $this->_language();
		
		// set validation rules
		$this->form_validation->set_rules('login', 'Login', 'required|alpha_numeric|xss_clean');
		$this->form_validation->set_rules('password', 'Password', 'required|xss_clean');
		
		if ($this->form_validation->run() == false) 
		{
			// validation not ok, send validation errors to the view
			echo $this->twig->render('user/login/login', $data);	
		} 
		
		else 
		{
			// set variables from the form
			$login = $this->input->post('login');
			$password = $this->input->post('password');
			
			if ($this->user_model->resolve_user_login($login, $password)) 
			{
				$user_id = $this->user_model->get_user_id_from_username($login);
				$user    = $this->user_model->get_user($user_id);
				$user_data = $this->user_model->get_user_data($user_id);
				
				//set session user data
				$session_data = array(
						'id' => session_id(),
						'user_id' => (int)$user->id,
						'login' => (string)$user->login,
						'logged_in' => (bool)true,
						'user_enabled' => (int)$user_data->user_enabled,
						'user_rights' => (int)$user_data->user_rights, );

				$this->session->set_userdata($session_data);
		
				// user login ok
				$data['user_login'] = $this->session->userdata('login');
				echo $this->twig->render('user/login/login_admin_success', $data);	
			} 

			else 
			{
				// login failed
				$data['error'] = 'Неверный логин или пароль. Повторите ввод.';
				
				// send error to the view
				echo $this->twig->render('user/login/login', $data);	
			}
		}	
	}

	/**
	 * logout function.
	 * 
	 * @access public
	 * @return void
	 */
	public function logout() 
	{
		$data['title'] = 'Garage - Авторизация';

		if ($this->session->has_userdata('logged_in') != NULL && $this->session->has_userdata('logged_in') === true) 
		{
            $data['user_login'] = $this->session->userdata('login');
            $this->session->sess_destroy();

            // user logout ok
            echo $this->twig->render('user/logout/logout_success', $data);   	
		} 

		else 
		{
			// there user was not logged in, we cannot logged him out,
			// redirect him to site root
			redirect('/');
		}	
	}

	public function _language()
    {
        if (!($userLang = $this->session->userdata('language'))) 
        {
            $this->session->set_userdata('language', 'russian');
        }

        $lang = $this->input->get('lang');
        switch ($lang) {
            case 'en':
                $userLang = 'english';
                break;
            case 'uk':
                $userLang = 'ukrainian';
                break;

            case 'ru':
                $userLang = 'russian';
                break;
        }

        $this->session->set_userdata('language', $userLang);
        $this->lang->load('interface', $userLang);

        $data['Header_entrance'] = $this->lang->line('Header_entrance');
        $data['Header_exit'] = $this->lang->line('Header_exit');
        $data['Header_registration'] = $this->lang->line('Header_registration');
        $data['Header_coll'] = $this->lang->line('Header_coll');

        $data['main_menu'] = array(
    						'Menu_main' => $this->lang->line('Menu_main'),
    						'Menu_example' => $this->lang->line('Menu_example'),
    						'Menu_education' => $this->lang->line('Menu_education'),
    						'Menu_rent' => $this->lang->line('Menu_rent'),
    						'Menu_evaluation' => $this->lang->line('Menu_evaluation'),
    						'Menu_shop' => $this->lang->line('Menu_shop'),
    						'Menu_reviews' => $this->lang->line('Menu_reviews'),
    						'Menu_contacts' => $this->lang->line('Menu_contacts'),
    						);
        return $data;
    }
}
