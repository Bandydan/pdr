<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

    public function index($name = 'main')
    {
        $data['title'] = 'Административная панель';
        
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $this->load->view('admin/blocks/scripts_view', $data);
            $this->load->view('admin/blocks/header_view', $data);
            $this->load->view('admin/blocks/menu_view', $data);
            $this->load->view('admin/'. $name .'_view', $data);
            $this->load->view('admin/blocks/footer_view', $data);
        }
        
        elseif ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') !== $this->config->item('admin_rights'))
        {
            $this->session->sess_destroy();
            $data['error'] = 'У Вас не достаточно прав для доступа к этой странице';

            // send error to the view
            $this->load->view('header');
            $this->load->view('user/error', $data);
            $this->load->view('user/login/login_admin');
            $this->load->view('footer');
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
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $this->index();
        }
        else
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
                $this->load->view('user/error', $data);
                $this->load->view('user/login/login_admin');
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
                    $session_data = array(
                                    'id' => session_id(),
                                    'user_id' => (int)$user->id,
                                    'login' => (string)$user->login,
                                    'logged_in' => (bool)true,
                                    'user_enabled' => (int)$user_data->user_enabled,
                                    'user_rights' => (int)$user_data->user_rights, );

                    $this->session->set_userdata($session_data);
                    
                    if ($this->session->userdata('user_rights') == $this->config->item('admin_rights'))
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
                        $this->load->view('user/error', $data);
                        $this->load->view('user/login/login_admin', $data);
                        $this->load->view('footer');
                    }
                } 

                else 
                {
                    // login failed
                    $data->error = 'Неверный логин или пароль. Повторите ввод.';
                    
                    // send error to the view
                    $this->load->view('header');
                    $this->load->view('user/error', $data);
                    $this->load->view('user/login/login_admin', $data);
                    $this->load->view('footer');    
                }
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
        
        if ($this->session->has_userdata('logged_in') != NULL && $this->session->userdata('logged_in') === true) 
        {
            $data->login = $this->session->userdata('login');
            $this->session->sess_destroy();

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
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            echo "Здесь будет код для работы со страницами";
        }
        else
        {
            $this->login();
        }
    }
}