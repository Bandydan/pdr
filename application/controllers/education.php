<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Education extends CI_Controller {

    public function index()
    {
        $data['title'] = 'Обучение';     
        
        $this->load->view('header', $data);
        $this->load->view('education_view', $data);
        $this->load->view('footer', $data);

    }
}