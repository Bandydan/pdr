<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Start extends CI_Controller {

    public function index()
    {
        $id = rand(1, 9);

        $data['title'] = 'Удаление вмятин без покраски';
        $this->load->model('examples_model');

        $data['examples'] = $this->examples_model->get_examples($id);
        
        $data['nav'] = $this->load->view('navigation', '',TRUE);
        
        $this->load->view('header', $data);
        $this->load->view('start_view', $data);
        $this->load->view('footer', $data);

    }
}