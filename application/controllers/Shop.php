<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Shop extends CI_Controller {

	public function index()
    {
        $data['title'] = 'Garage - Магазин';
        $this->load->model('news_model');
        $this->load->library('twig');

        echo $this->twig->render('shop_view', $data);
	}

}