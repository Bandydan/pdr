<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends CI_Controller {

    public function index()
    {
    	$this->load->library('twig');
        $data['title'] = 'Garage - Контакты';

        echo $this->twig->render('contact_view', $data);
    }
}