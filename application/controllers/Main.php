<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('examples_model');
        $this->load->library('twig');
    }


    //Start page
    public function index()
    {
        $id = rand(1, 9);

        $data['title'] = 'Garage - Удаление вмятин без покраски';
        $data['examples'] = $this->examples_model->get_examples($id);
        $data['cat'] = $this->config->item('categories');

        echo $this->twig->render('start_view', $data);
    }

    //Example page
    public function examples($id = 0)
    {

        $data['title'] = 'Garage - Примеры работ';

        if($id != 0) 
        {
            $data['examples'] = $this->examples_model->get_examples($id);
        }
        else 
        {
            $data['examples'] = $this->examples_model->get_examples_all();
        }

        $data['cat'] = $this->config->item('categories');

        echo $this->twig->render('examples_view', $data);
    }

    //all Examples page
    public function paginate($offset='') 
    { 
        $limit = 3;
        // $limit - кол-во запрашиваемых записей 
        // $offset - смещение, т.е. с какой записи начинать выборку  

        //$data['examples'] = $this->examples_model->get_examples_all();
            
        $data['examples'] = $this->examples_model->get_scrolling($limit,$offset); 
        $data['cat'] = $this->config->item('categories');

        echo $this->twig->render('examples_view', $data);          
    } 

    public function works()
    {        
        $limit = 3;
        $offset = $_POST['startFrom'];       
            
        $data['examples'] = $this->examples_model->get_scrolling($limit,$offset); 

        echo json_encode($data['examples']);
        die(); //чтоб лишнего не передавал, а именно HTML 
    }

    public function config_arr()
    {
        echo json_encode($this->config->item('categories'));
    }

    //Education page
    public function education()
    {
        $data['title'] = 'Обучение';
        $data['cat'] = $this->config->item('categories');    
        
        echo $this->twig->render('education_view', $data);
    }

    //Contact page
    public function contact()
    {
        $data['title'] = 'Garage - Контакты';
        $data['cat'] = $this->config->item('categories');

        echo $this->twig->render('contact_view', $data);
    }
}