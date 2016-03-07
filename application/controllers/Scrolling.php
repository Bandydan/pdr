<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Scrolling extends CI_Controller {

    public function paginate($offset='')
       {
            $limit = 3;
            // $limit - кол-во запрашиваемых записей
            // $offset - смещение, т.е. с какой записи начинать выборку

            $this->load->model('examples_model');

            $data['scrolling'] = $this->examples_model->get_scrolling($limit,$offset);

            $this->load->view('header', $data);
            $this->load->view('examples_view', $data);
            $this->load->view('footer', $data);
        }

    public function works(){

        $limit = 3;
        $offset = $_POST['startFrom'];

        $this->load->model('examples_model');
        $data['scrolling'] = $this->examples_model->get_scrolling($limit,$offset);

        echo json_encode($data['scrolling']);
        die(); //чтоб лишнего не передавал, а именно HTML
    }
}