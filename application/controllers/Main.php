<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends MY_Controller {

    public $data = array();

    public function __construct()
    {
        parent::__construct();
        $this->load->model('examples_model');
        $this->load->library('twig');

        $this->load->helper('language');
        $this->load->helper('url');
        $this->load->helper('cookie');
    }

    //Start page
    public function index()
    {
        $data = MY_Controller::_language();

        $id = '1';

        $data['lang'] = 'russian';

        $data['title'] = "Garage - ".$data['examp_cat']['pdr'];
        $data['examples'] = $this->examples_model->get_examples($id, $data['lang']);

        echo $this->twig->render('start_view', $data);
    }

    //Example page
    public function examples($id = 0, $offset='')
    {
        $data = MY_Controller::_language();
        $data['title'] = "Garage - ".$data['main_menu']['Menu_example'];

        if($id != 0)
        {
            $data['examples'] = $this->examples_model->get_examples($id, $data['lang']);
        }
        else
        {
            //all Examples page
            $limit = 3;
            // $limit - кол-во запрашиваемых записей
            // $offset - смещение, т.е. с какой записи начинать выборку

            $data['examples'] = $this->examples_model->get_scrolling($limit, $offset, $data['lang']);
        }

        echo $this->twig->render('examples_view', $data);
    }

    public function works()
    {
        $data = MY_Controller::_language();

        $limit = 3;
        $offset = $_POST['startFrom'];

        $data['examples'] = $this->examples_model->get_scrolling($limit,$offset, $data['lang']);

        echo json_encode($data['examples']);
        die(); //чтоб лишнего не передавал, а именно HTML
    }

    public function config_arr()
    {
        $data = MY_Controller::_language();
        echo json_encode($data['examp_cat']);
    }

    //Education page
    public function education()
    {
        $data = MY_Controller::_language();
        $data['title'] = "Garage - ".$data['main_menu']['Menu_education'];

        echo $this->twig->render('education_view', $data);
    }

    //Contact page
    public function contact()
    {
        $data = MY_Controller::_language();
        $data['title'] = "Garage - ".$data['main_menu']['Menu_contacts'];

        echo $this->twig->render('contact_view', $data);
    }

    public function shop()
    {
        $data['title'] = 'Garage - Магазин';
        $data = MY_Controller::_language();
        $this->load->library('twig');

        echo $this->twig->render('shop_view', $data);
    }

}