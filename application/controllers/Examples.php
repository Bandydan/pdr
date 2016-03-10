<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Examples extends CI_Controller {

    public function index($id = 0, $offset='')
    {
        $data['title'] = 'Примеры работ';
        $this->load->model('examples_model');

        if($id != 0) {
            $data['examples'] = $this->examples_model->get_examples($id);
        }
        else {

            $limit = 3;
            // $limit - кол-во запрашиваемых записей
            // $offset - смещение, т.е. с какой записи начинать выборку

            $this->load->model('examples_model');

            // load helper for translations
            $this->load->helper('language');

            $data['examples'] = $this->examples_model->get_scrolling($limit,$offset);

            // read language from session
            $userLang = $this->session->userdata('language');
            //echo $userLang;
            $this->lang->load('interface', $userLang);

            // set up some info...
            $data['Header_entrance'] = $this->lang->line('Header_entrance');
            $data['Header_exit'] = $this->lang->line('Header_exit');
            $data['Header_registration'] = $this->lang->line('Header_registration');
            $data['Header_coll'] = $this->lang->line('Header_coll');

            $data['Menu_main'] = $this->lang->line('Menu_main');
            $data['Menu_example'] = $this->lang->line('Menu_example');
            $data['Menu_education'] = $this->lang->line('Menu_education');
            $data['Menu_rent'] = $this->lang->line('Menu_rent');
            $data['Menu_evaluation'] = $this->lang->line('Menu_evaluation');
            $data['Menu_reviews'] = $this->lang->line('Menu_reviews');
            $data['Menu_contacts'] = $this->lang->line('Menu_contacts');

            $data['LM_pdr'] = $this->lang->line('LM_pdr');
            $data['LM_pol'] = $this->lang->line('LM_pol');
            $data['LM_brn'] = $this->lang->line('LM_brn');
            $data['LM_chm'] = $this->lang->line('LM_chm');
            $data['LM_gls'] = $this->lang->line('LM_gls');
            $data['LM_atk'] = $this->lang->line('LM_atk');
            $data['LM_pnt'] = $this->lang->line('LM_pnt');

        }

            $this->load->library('twig');

            $data['nav'] = $this->load->view('navigation', '',TRUE);

            echo $this->twig->render('examples_view', $data);

    }

    public function works(){

        $limit = 3;
        $offset = $_POST['startFrom'];

        $this->load->model('examples_model');
        $data['examples'] = $this->examples_model->get_scrolling($limit,$offset);

        //var_dump($data['scrolling']);

        echo json_encode($data['examples']);

        die(); //чтоб лишнего не передавал, а именно HTML
    }

    public function config_arr(){
        $config['categories'] = array(
            'pdr' => 'Беспокрасочное удаление вмятин',
            'pol' => 'Полировка авто',
            'brn' => 'Бронирование фар',
            'chm' => 'Химчистка салона',
            'gls' => 'Ремонт лобового стекла',
            'atk' => 'Антикорозийная обработка',
            'pnt' => 'Покраска авто'
        );

        echo json_encode($config['categories']);
    }
}