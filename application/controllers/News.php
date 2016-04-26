<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class News extends CI_Controller {

	public function index($id = 0)
    {
        $data['title'] = 'Garage - Новости';
        $this->load->model('news_model');
        $this->load->library('twig');

        $data['newsbar'] = $this->news_model->get_news();

        if($id != 0) 
        {
            $data['news'] = $this->news_model->get_news($id);
        }
        else 
        {
            $data['news'] = $this->news_model->get_news();
        }

        echo $this->twig->render('news_view', $data);
	}

}