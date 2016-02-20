<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('admin_model');
        //$this->output->cache(5);
    }

    public function index()
    {
        $data['title'] = 'Административная панель';

        //echo $this->session->has_userdata('login');
        //echo $this->session->userdata('user_rights');
        
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $data['comments'] = $this->admin_model->get_comments('4');
            $data['requests'] = $this->admin_model->get_requests('4');
            //$data['orders'] = $this->admin_model->get_orders('4');

            $this->load->view('admin/blocks/scripts_view', $data);
            $this->load->view('admin/blocks/header_view', $data);
            $this->load->view('admin/blocks/menu_view', $data);
            $this->load->view('admin/main_view', $data);
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
    public function show_articles()
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $data['articles'] = $this->admin_model->get_articles();
            
            $this->load->view('admin/blocks/scripts_view', $data);
            $this->load->view('admin/blocks/header_view', $data);
            $this->load->view('admin/blocks/menu_view', $data);
            $this->load->view('admin/all_articles_view', $data);
            $this->load->view('admin/blocks/footer_view', $data);
        }
        else
        {
            $this->login();
        }
    }

    public function show_users()
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $this->load->model('user_model');
            $data['users'] = $this->user_model->get_users();
            
            $this->load->view('admin/blocks/scripts_view', $data);
            $this->load->view('admin/blocks/header_view', $data);
            $this->load->view('admin/blocks/menu_view', $data);
            $this->load->view('admin/all_users_view', $data);
            $this->load->view('admin/blocks/footer_view', $data);
        }
        else
        {
            $this->login();
        }
    }

    public function show_comments($limit = '0')
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $data['comments'] = $this->admin_model->get_comments($limit);
            
            $this->load->view('admin/blocks/scripts_view', $data);
            $this->load->view('admin/blocks/header_view', $data);
            $this->load->view('admin/blocks/menu_view', $data);
            $this->load->view('admin/all_comments_view', $data);
            $this->load->view('admin/blocks/footer_view', $data);
        }
        else
        {
            $this->login();
        }
    }

    public function show_requests($limit = '0')
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $data['requests'] = $this->admin_model->get_requests($limit);
            
            $this->load->view('admin/blocks/scripts_view', $data);
            $this->load->view('admin/blocks/header_view', $data);
            $this->load->view('admin/blocks/menu_view', $data);
            $this->load->view('admin/pdr_requests_view', $data);
            $this->load->view('admin/blocks/footer_view', $data);
        }
        else
        {
            $this->login();
        }
    }

    public function show_avtos()
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $data['avtos'] = $this->admin_model->get_avtos();
            
            $this->load->view('admin/blocks/scripts_view', $data);
            $this->load->view('admin/blocks/header_view', $data);
            $this->load->view('admin/blocks/menu_view', $data);
            $this->load->view('admin/all_avto_view', $data);
            $this->load->view('admin/blocks/footer_view', $data);
        }
        else
        {
            $this->login();
        }
    }

    public function add_avto()
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $data['avtos'] = $this->admin_model->get_avtos();
            
            $this->load->view('admin/blocks/scripts_view', $data);
            $this->load->view('admin/blocks/header_view', $data);
            $this->load->view('admin/blocks/menu_view', $data);
            $this->load->view('admin/all_avto_view', $data);
            $this->load->view('admin/blocks/footer_view', $data);
        }
        else
        {
            $this->login();
        }
    }

    public function add_article() 
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $data = array();

            $this->load->helper('form');
            $this->load->library('form_validation');
        
            $this->form_validation->set_rules('title', 'Заголовок', 'required');
            $this->form_validation->set_rules('text', 'Содержимое', 'required');
            $this->form_validation->set_rules('meta', 'Теги', 'required');
            $this->form_validation->set_rules('address', 'Адрес', 'required|is_unique[Content.address]', array('is_unique' => 'Этот адрес уже занят. Пожалуйста введите другой.'));
        
            if ($this->form_validation->run() === false) 
            {
                $this->load->view('admin/blocks/scripts_view', $data);
                $this->load->view('admin/blocks/header_view', $data);
                $this->load->view('admin/blocks/menu_view', $data);
                $this->load->view('admin/add_article_view', $data);
                $this->load->view('admin/blocks/footer_view', $data);  
            }
            
            else
            {
                $this->admin_model->create_content();

                $this->show_articles();
            }
        }
        
        else
        {
            $this->login();
        }
    }



        public function edit_article($id = '') 
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))

        {
            $data = array();
            $data['get_article'] = $this->admin_model->get_article($id);
            
            $this->load->helper('form');
            $this->load->library('form_validation');
        
            $this->form_validation->set_rules('title', 'Заголовок', 'required');
            $this->form_validation->set_rules('text', 'Содержимое', 'required');
            $this->form_validation->set_rules('meta', 'Теги', 'required');
            $this->form_validation->set_rules('address', 'Адрес', 'required');
        
            if ($this->form_validation->run() === false) 
            {

                $this->load->view('admin/blocks/scripts_view', $data);
                $this->load->view('admin/blocks/header_view', $data);
                $this->load->view('admin/blocks/menu_view', $data);
                $this->load->view('admin/edit_article_view', $data);
                $this->load->view('admin/blocks/footer_view', $data);  
            }
            
            else
            {
                $this->admin_model->edit_content($id);
                
                $this->show_articles();
            }
        }
        
        else
        {
            $this->login();
        }
    }





    public function add_example() 
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $data = array();

            $this->load->helper('form');
            $this->load->library('form_validation');
        
            $this->form_validation->set_rules('category', 'category', 'required');
            $this->form_validation->set_rules('text', 'text', 'required');
            $this->form_validation->set_rules('foto_before', 'foto_before', 'required');
            $this->form_validation->set_rules('foto_after', 'foto_after', 'required');
            $this->form_validation->set_rules('additionally', 'additionally', 'required');            
        
            if ($this->form_validation->run() === false) 
            {
                $this->load->view('admin/blocks/scripts_view', $data);
                $this->load->view('admin/blocks/header_view', $data);
                $this->load->view('admin/blocks/menu_view', $data);
                $this->load->view('admin/add_example_view', $data);
                $this->load->view('admin/blocks/footer_view', $data);  
            }
            
            else
            {
                $this->admin_model->create_example();

                $this->load->view('admin/blocks/scripts_view', $data);
                $this->load->view('admin/blocks/header_view', $data);
                $this->load->view('admin/blocks/menu_view', $data);
                $this->load->view('admin/all_examples_view', $data);
                $this->load->view('admin/blocks/footer_view', $data);
            }
        }
        
        else
        {
            $this->login();
        }
    }

    public function add_user()
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $data = array();
            
            $this->load->view('admin/blocks/scripts_view', $data);
            $this->load->view('admin/blocks/header_view', $data);
            $this->load->view('admin/blocks/menu_view', $data);
            $this->load->view('admin/add_user_view', $data);
            $this->load->view('admin/blocks/footer_view', $data);
        }
        else
        {
            $this->login();
        }
    }

    public function delete_request($id)
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            if ($this->admin_model->delete_data($id, 'order_for_assessment')) 
            {
                // request delete ok
                $this->index();    
            } 
            
            else 
            {
                // request delete failed, this should never happen
                $data['error'] = 'Что-то пошло не так. Please try again.';
                
                // send error to the view
                $this->load->view('admin/blocks/scripts_view', $data);
                $this->load->view('admin/blocks/header_view', $data);
                $this->load->view('admin/blocks/menu_view', $data);
                $this->load->view('admin/error', $data);
                $this->load->view('admin/main_view', $data);
                $this->load->view('admin/blocks/footer_view', $data);
            }   
            
        }
        else
        {
            $this->login();
        }
    }

    public function delete_comment($id)
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            if ($this->admin_model->delete_data($id, 'comments')) 
            {
                // request delete ok
                $this->index();    
            } 
            
            else 
            {
                // request delete failed, this should never happen
                $data['error'] = 'Что-то пошло не так. Please try again.';
                
                // send error to the view
                $this->load->view('admin/blocks/scripts_view', $data);
                $this->load->view('admin/blocks/header_view', $data);
                $this->load->view('admin/blocks/menu_view', $data);
                $this->load->view('admin/error', $data);
                $this->load->view('admin/main_view', $data);
                $this->load->view('admin/blocks/footer_view', $data);
            }   
            
        }
        else
        {
            $this->login();
        }
    }

    public function migration()
    {
        $data = array();
        $data = $this->admin_model->migration_select();
        $this->admin_model->migration_add($data);

    }
}