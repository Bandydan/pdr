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
        
        $this->load->view('header', $data);
        $this->load->view('examples_view', $data);
        $this->load->view('footer', $data);

    }
}