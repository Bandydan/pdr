<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Start extends CI_Controller {

    public function index()
    {
        $this->load->library('twig');
        $id = rand(1, 9);

        $data['title'] = 'Garage - Удаление вмятин без покраски';
        $this->load->model('examples_model');

        $data['examples'] = $this->examples_model->get_examples($id);
        $data['cat'] = $this->config->item('categories');

        echo $this->twig->render('start_view', $data);
    }
}