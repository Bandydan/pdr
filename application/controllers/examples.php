<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Examples extends CI_Controller {

    public function index($id = 0)
    {
        if($id != 0) {
            $this->load->model('examples_model');
            $data['examples'] = $this->examples_model->get_examples($id);
            $this->load->view('examples_view', $data);
        }
        else {
            $this->load->model('examples_model');
            $data['examples'] = $this->examples_model->get_examples_all();
            $this->load->view('examples_view', $data);
        }
    }
}