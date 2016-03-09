<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Education extends CI_Controller {

    public function index()
    {
    	$this->load->library('twig');
        $data['title'] = 'Обучение';     
        
        echo $this->twig->render('education_view', $data);
    }
}