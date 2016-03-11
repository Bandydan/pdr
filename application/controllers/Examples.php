<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Examples extends CI_Controller {

    public function index($id = 0,$offset='')
    {
        $this->load->library('twig');

        $data['title'] = 'Garage - Примеры работ';
        $this->load->model('examples_model');

        if($id != 0)
        {
            $data['examples'] = $this->examples_model->get_examples($id);
        }
        else
        {
            // $data['examples'] = $this->examples_model->get_examples_all();
            $limit = 3;
            // $limit - кол-во запрашиваемых записей
            // $offset - смещение, т.е. с какой записи начинать выборку

            $this->load->model('examples_model');

            // load helper for translations
            $this->load->helper('language');

            $data['examples'] = $this->examples_model->get_scrolling($limit,$offset);

        }

        $data['cat'] = $this->config->item('categories');

        echo $this->twig->render('examples_view', $data);
    }

    // public function paginate($offset='')
    // {
    //     $limit = 3;
    //     // $limit - кол-во запрашиваемых записей
    //     // $offset - смещение, т.е. с какой записи начинать выборку
    //     $this->load->library('twig');
    //     $this->load->model('examples_model');

    //     //$data['examples'] = $this->examples_model->get_examples_all();

    //     $data['examples'] = $this->examples_model->get_scrolling($limit,$offset);

    //     $data['cat'] = $this->config->item('categories');

    //     echo $this->twig->render('examples_view', $data);
    // }

    public function works()
    {
        $limit = 3;
        $offset = $_POST['startFrom'];

        $this->load->model('examples_model');
        $data['examples'] = $this->examples_model->get_scrolling($limit,$offset);

        echo json_encode($data['examples']);
        die(); //чтоб лишнего не передавал, а именно HTML
    }

    public function config_arr()
    {
        echo json_encode($this->config->item('categories'));
    }
}