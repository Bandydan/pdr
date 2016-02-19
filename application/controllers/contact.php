<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends CI_Controller {

    public function index()
    {
        $data['title'] = 'Garage';
        $data['nav'] = $this->load->view('navigation', '',TRUE);

        $this->load->view('header', $data);
        $this->load->view('contact_view', $data);
        $this->load->view('footer', $data);

    }
}