<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Examples extends CI_Controller {

    public function index($id = 0)
    {
        $data['title'] = 'Примеры работ';
        $this->load->model('examples_model');

        if($id != 0) {
            $data['examples'] = $this->examples_model->get_examples($id);
        }
        else {
            $data['examples'] = $this->examples_model->get_examples_all();
        }
        
        $data['nav'] = $this->load->view('navigation', '',TRUE);
        
        $this->load->view('header', $data);
        $this->load->view('examples_view', $data);
        $this->load->view('footer', $data);

    }

        public function paginate($offset='') 
       { 
            $limit = 3;
            // $limit - кол-во запрашиваемых записей 
            // $offset - смещение, т.е. с какой записи начинать выборку 
            
            $this->load->model('examples_model'); 

            //$data['examples'] = $this->examples_model->get_examples_all();
            
            $data['examples'] = $this->examples_model->get_scrolling($limit,$offset); 
         
            $data['nav'] = $this->load->view('navigation', '',TRUE);

            $this->load->view('header', $data); 
            $this->load->view('examples_view', $data); 
            $this->load->view('footer', $data);           
        } 

    public function works(){        

        $limit = 3;
        $offset = $_POST['startFrom'];       

        $this->load->model('examples_model');            
        $data['examples'] = $this->examples_model->get_scrolling($limit,$offset); 

        //var_dump($data['scrolling']);

        echo json_encode($data['examples']);
        //echo $data;
        //echo json_encode($data);
        die(); //чтоб лишнего не передавал, а именно HTML 
    }

    public function config_arr(){
        $config['categories'] = array(
            'pdr' => 'Беспокрасочное удаление вмятин',
            'pol' => 'Полировка авто', 
            'brn' => 'Бронирование фар',
            'chm' => 'Химчистка салона',
            'gls' => 'Ремонт лобового стекла',
            'atk' => 'Антикорозийная обработка',
            'pnt' => 'Покраска авто'
        );

        echo json_encode($config['categories']);
    }
}