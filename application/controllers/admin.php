<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

    public function index($name = 'main')
    {
        $data['title'] = 'Административная панель';
        
        if (!empty($_SESSION['login']) and $_SESSION['user_rights'] == '2')
        {
            $this->load->view('admin/blocks/scripts_view', $data);
            $this->load->view('admin/blocks/header_view', $data);
            $this->load->view('admin/blocks/menu_view', $data);
            $this->load->view('admin/'. $name .'_view', $data);
            $this->load->view('admin/blocks/footer_view', $data);

            //$this->load->view('admin/index', $data);
        }
        
        elseif (!empty($_SESSION['login']) and $_SESSION['user_rights'] !== '2')
        {
            echo "У вас нет прав доступа.";
        }

        else
        {
            $this->login();
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
        // create the data object
        $data = new stdClass();
        $this->load->model('user_model');
        
        // load form helper and validation library
        $this->load->helper('form');
        $this->load->library('form_validation');
        
        // set validation rules
        $this->form_validation->set_rules('login', 'Login', 'required|alpha_numeric');
        $this->form_validation->set_rules('password', 'Password', 'required');
        
        if ($this->form_validation->run() == false) 
        {
            // validation not ok, send validation errors to the view
            $this->load->view('header');
            $this->load->view('user/login/login');
            $this->load->view('footer');    
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
                $_SESSION['id'] = session_id();
                $_SESSION['user_id']      = (int)$user->id;
                $_SESSION['login']     = (string)$user->login;
                $_SESSION['logged_in']    = (bool)true;
                $_SESSION['user_enabled'] = (int)$user_data->user_enabled;
                $_SESSION['user_rights']     = (int)$user_data->user_rights;
                
                if ($_SESSION['user_rights'] == '2')
                {
                    $this->user_model->set_user_session();
        
                    // user login ok
                    $this->load->view('header');
                    $this->load->view('user/login/login_admin_success', $data);
                    $this->load->view('footer'); 
                }

                else
                {
                    // login failed
                    $data->error = 'У Вас не достаточно прав для доступа к этой странице';

                    // send error to the view
                    $this->load->view('header');
                    $this->load->view('user/login/login', $data);
                    $this->load->view('footer');
                }
            } 

            else 
            {
                // login failed
                $data->error = 'Неверный логин или пароль. Повторите ввод.';
                
                // send error to the view
                $this->load->view('header');
                $this->load->view('user/login/login', $data);
                $this->load->view('footer');    
            }
        }   
    }

    /**
     * logout function for admin panel.
     * 
     * @access public
     * @return void
     */
    public function logout() 
    {
        // create the data object
        $data = new stdClass();
        
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) 
        {
            $data->login = $_SESSION['login'];

            // remove session datas
            foreach ($_SESSION as $key => $value) 
            {
                unset($_SESSION[$key]);
            }
            session_destroy();

            // user logout ok
            $this->load->view('header');
            $this->load->view('user/logout/logout_admin_success', $data);
            $this->load->view('footer');    
        } 

        else 
        {
            // there user was not logged in, we cannot logged him out,
            // redirect him to site root
            redirect('/');
        }   
    }

    //metods for work with data in admin panel
    public function pages()
    {
        if (!empty($_SESSION['login']) and $_SESSION['user_rights'] == '2')
        {
            echo "Здесь будет код для работы со страницами";
        }
        else
        {
            $this->login();
        }
    }
}