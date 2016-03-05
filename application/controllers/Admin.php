<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('admin_model');
        $this->load->library('twig');
        //$this->output->cache(5);
    }

    public function index()
    {
        $data['title'] = 'Административная панель';
        
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $data['page_name'] = 'Основная панель';
            $data['user_name'] = $_SESSION['login'];
            $data['comments'] = $this->admin_model->get_comments('4');
            $data['requests'] = $this->admin_model->get_requests('4');
            //$data['orders'] = $this->admin_model->get_orders('4');

            echo $this->twig->render('admin/main', $data);
        }
        
        elseif ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') !== $this->config->item('admin_rights'))
        {
            $this->session->sess_destroy();
            $data['error'] = 'У Вас не достаточно прав для доступа к этой странице';
            $data['user_name'] = $_SESSION['login'];

            // send error to the view
            echo $this->twig->render('user/login/login_admin', $data);  
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
        $data['title'] = 'Garage - Авторизация';

        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $this->index();
        }
        else
        {
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
                echo $this->twig->render('user/login/login_admin', $data);    
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
                        $data['user_login'] = $this->session->userdata('login');
                        echo $this->twig->render('user/login/login_admin_success', $data); 
                    }

                    else
                    {
                        // login failed
                        $data['error'] = 'У Вас не достаточно прав для доступа к этой странице';

                        // send error to the view
                        echo $this->twig->render('user/login/login_admin', $data); 
                    }
                } 

                else 
                {
                    // login failed
                    $data['error'] = 'Неверный логин или пароль. Повторите ввод.';
                    
                    // send error to the view
                    echo $this->twig->render('user/login/login_admin', $data);   
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
        $data['title'] = 'Garage - Авторизация';
             
        if ($this->session->has_userdata('logged_in') != NULL && $this->session->userdata('logged_in') === true) 
        {
            $data['user_login'] = $this->session->userdata('login');
            $this->session->sess_destroy();

            // user logout ok
            echo $this->twig->render('user/logout/logout_admin_success', $data);    
        } 

        else 
        {
            // there user was not logged in, we cannot logged him out,
            // redirect him to site root
            redirect('/');
        }   
    }

    //metods for work with data in admin panel
    public function show_articles($id = '')
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $data['articles'] = $this->admin_model->get_article($id);
            $data['user_name'] = $_SESSION['login'];
            $data['page_name'] = 'Управление контентом';
            echo $this->twig->render('admin/all_articles_view', $data);
        }
        else
        {
            $this->login();
        }
    }

    public function show_users($data = '')
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $this->load->model('user_model');
            $data['users'] = $this->user_model->get_users();
            $data['user_name'] = $_SESSION['login'];
            $data['page_name'] = 'Просмотр пользователей';
            echo $this->twig->render('admin/all_users_view', $data); 
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
            $data['user_name'] = $_SESSION['login'];
            $data['page_name'] = 'Просмотр комментариев';
            echo $this->twig->render('admin/all_comments_view', $data); 
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
            $data['user_name'] = $_SESSION['login'];
            $data['page_name'] = 'Просмотр запросов на оценку работ';
            echo $this->twig->render('admin/pdr_requests_view', $data);
        }
        else
        {
            $this->login();
        }
    }

    public function show_cars()
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $data['models'] = $this->admin_model->get_cars();
            $data['marks'] = $this->admin_model->get_marks();
            $data['user_name'] = $_SESSION['login'];
            $data['page_name'] = 'Каталог автомобилей';
            echo $this->twig->render('admin/all_avto_view', $data); 
        }
        else
        {
            $this->login();
        }
    }

    public function add_car()
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            if ($this->input->post('model') == null OR $this->input->post('mark') == null) 
            {
                $data['error'] = 'Заполните все поля формы';
            }
            else
            {
                $newCar = $this->input->post();
                if ($this->admin_model->add_car($newCar) === false) 
                {
                    $data['error'] = 'Ошибка при добавлении авто в базу. Вероятнее всего у этого производителя уже есть авто с таким названием в базе данных';
                }
            }
            
            $data['models'] = $this->admin_model->get_cars();
            $data['marks'] = $this->admin_model->get_marks();
            $data['user_name'] = $_SESSION['login'];
            $data['page_name'] = 'Каталог автомобилей';
            echo $this->twig->render('admin/all_avto_view', $data); 
        }
        else
        {
            $this->login();
        }
    }

    public function delete_car()
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            if ($this->input->post('ModelName') == null) 
            {
                $data['error'] = 'Выберите авто для удаления';
            }

            else
            {
                $model_id = $this->input->post('ModelName');
                if ($this->admin_model->delete_data($model_id, 'cars_model') === false) 
                {
                    $data['error'] = 'Ошибка при удалении авто из базы';
                }
            }

            $data['models'] = $this->admin_model->get_cars();
            $data['marks'] = $this->admin_model->get_marks();
            $data['user_name'] = $_SESSION['login'];
            $data['page_name'] = 'Каталог автомобилей';
            echo $this->twig->render('admin/all_avto_view', $data);
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

            $this->load->library('form_validation');
        
            $this->form_validation->set_rules('title', 'Заголовок', 'required');
            $this->form_validation->set_rules('text', 'Содержимое', 'required');
            $this->form_validation->set_rules('meta', 'Теги', 'required');
            $this->form_validation->set_rules('address', 'Адрес', 'required|is_unique[Content.address]', array('is_unique' => 'Этот адрес уже занят. Пожалуйста введите другой.'));
        
            if ($this->form_validation->run() === false) 
            {
                $data['user_name'] = $_SESSION['login'];
                $data['page_name'] = 'Управление контентом';
                echo $this->twig->render('admin/add_article_view', $data);  
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
            
            $this->load->library('form_validation');
        
            $this->form_validation->set_rules('title', 'Заголовок', 'required');
            $this->form_validation->set_rules('text', 'Содержимое', 'required');
            $this->form_validation->set_rules('meta', 'Теги', 'required');
            $this->form_validation->set_rules('address', 'Адрес', 'required');
        
            if ($this->form_validation->run() === false) 
            {
                $data['user_name'] = $_SESSION['login'];
                $data['page_name'] = 'Редактирование статьи';
                echo $this->twig->render('admin/add_article_view', $data);   
            }
            
            else
            {
                $this->admin_model->edit_content();
                $this->show_articles();
            }
        }
        
        else
        {
            $this->login();
        }
    }

    public function delete_article($id = '', $table = '')
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $this->admin_model->delete_data($id, $table);
            $this->show_articles();
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
            $data['user_name'] = $_SESSION['login'];
        
            $this->form_validation->set_rules('category', 'category', 'required');
            $this->form_validation->set_rules('text', 'text', 'required');
            $this->form_validation->set_rules('foto_before', 'foto_before', 'required');
            $this->form_validation->set_rules('foto_after', 'foto_after', 'required');
            $this->form_validation->set_rules('additionally', 'additionally', 'required');            
        
            if ($this->form_validation->run() === false) 
            {
                
                $data['page_name'] = 'Управление примерами работ';
                $data['categories'] = $this->config->item("categories"); 
                echo $this->twig->render('admin/add_example_view', $data); 
            }
            
            else
            {
                $this->admin_model->create_example();
                $data['page_name'] = 'Просмотр примеров работ';
                echo $this->twig->render('admin/all_examples_view', $data); 
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
            $this->load->helper('form');
            $this->load->library('form_validation');

            $data['user_name'] = $_SESSION['login'];
            $data['page_name'] = 'Управление пользователями';

            $data['models'] = $this->admin_model->get_cars();
            $data['marks'] = $this->admin_model->get_marks();
            $data['user_right'] = array(
                                    'Админ' => $this->config->item('admin_rights'),
                                    'Пользователь' => $this->config->item('user_rights'),);

            // set validation rules
            $this->form_validation->set_rules('login', 'Логин', 'trim|required|alpha_numeric|min_length[3]|is_unique[users.login]', array('is_unique' => 'Этот логин уже занят. Пожалуйста введите другой.'));
            $this->form_validation->set_rules('name', 'Имя', 'trim|required|alpha_numeric|min_length[2]');
            $this->form_validation->set_rules('surname', 'Фамилия', 'trim|required|alpha_numeric|min_length[2]');
            $this->form_validation->set_rules('sex', 'Пол', 'required');
            $this->form_validation->set_rules('birthsday', 'Дата рождения', 'trim|required');
            $this->form_validation->set_rules('email', 'e-mail', 'trim|required|valid_email|is_unique[users.email]', array('is_unique' => 'Данный e-mail уже используется. Пожалуйста введите другой.'));
            $this->form_validation->set_rules('tel', 'Телефон', 'trim|required|alpha_numeric|min_length[10]');
            $this->form_validation->set_rules('password', 'Пароль', 'trim|required|min_length[6]');
            $this->form_validation->set_rules('password_confirm', 'Подтверждение пароля', 'trim|required|min_length[6]|matches[password]');

            if ($this->form_validation->run() === false) 
            {
                // validation not ok, send validation errors to the view
                if (validation_errors() == true) 
                {
                    $data['error'] = 'Проверьте правильность заполнения всех полей.';
                }
                
                echo $this->twig->render('admin/add_user_view', $data);  
            }

            elseif (($this->input->post('ManufactureName') !== null AND $this->input->post('ModelName') == null) OR ($this->input->post('ManufactureName') == null AND $this->input->post('car_year') !== null)) 
            {
                $data['error'] = 'Проверьте правильность заполнения полей выбора авто.'; 
                echo $this->twig->render('admin/add_user_view', $data);
            }

            else 
            {   
                $this->load->model('user_model');
                $register = $this->input->post();

                if ($this->input->post('status') == 'on')
                {
                    $register['status'] = $this->config->item('STATUS_ON');
                }
                else
                {
                    $register['status'] = $this->config->item('STATUS_OFF');
                }

                if ($this->user_model->create_user($register)) 
                {
                    // user creation ok
                    $data['info'] = 'Пользователь успешно добавлен.';
                
                    $this->show_users($data);
                } 
                
                else 
                {
                    // user creation failed, this should never happen
                    $data['error'] = 'Что-то пошло не так. Please try again.';
                    
                    // send error to the view
                    echo $this->twig->render('admin/add_user_view', $data);
                }  
            }
        }
        else
        {
            $this->login();
        }
    }

    public function delete_item($data)
    {
        if ($this->session->has_userdata('login') != NULL && $this->session->userdata('user_rights') == $this->config->item('admin_rights'))
        {
            $data = explode('%3D', $data);
            if ($this->admin_model->delete_data($data[0], $data[1])) 
            {
                // item delete ok
                $this->index();    
            } 
            
            else 
            {
                // item delete failed, this should never happen
                $data['error'] = 'Что-то пошло не так. Please try again.';
                
                // send error to the view
                $data['page_name'] = 'Основная панель';
                $data['user_name'] = $_SESSION['login'];
                $data['comments'] = $this->admin_model->get_comments('4');
                $data['requests'] = $this->admin_model->get_requests('4');
                //$data['orders'] = $this->admin_model->get_orders('4');

                echo $this->twig->render('admin/main', $data);
            }      
        }
        else
        {
            $this->login();
        }
    }
}