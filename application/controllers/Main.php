<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

    public $data = array();
    public $userLang = 'russian';


    public function __construct()
    {
        parent::__construct();
        $this->load->model('examples_model');
        $this->load->library('twig');

        $this->load->helper('language');
        $this->load->helper('url');
        $this->load->helper('cookie');
    }

    //Start page
    public function index()
    {
        $data = $this->language();

        $id = rand(1, 9);

        $data['title'] = 'Garage - Удаление вмятин без покраски';
        $data['examples'] = $this->examples_model->get_examples($id);
        $data['cat'] = $this->config->item('categories');

        echo $this->twig->render('start_view', $data);
    }

    //Example page
    public function examples($id = 0, $offset='')
    {
        $data = $this->language();
        $data['title'] = 'Garage - Примеры работ';

        if($id != 0)
        {
            $data['examples'] = $this->examples_model->get_examples($id);
        }
        else
        {
            //all Examples page
            $limit = 3;
            // $limit - кол-во запрашиваемых записей
            // $offset - смещение, т.е. с какой записи начинать выборку

            $data['examples'] = $this->examples_model->get_scrolling($limit,$offset);
        }

        $data['cat'] = $this->config->item('categories');

        echo $this->twig->render('examples_view', $data);
    }

    public function works()
    {
        $limit = 3;
        $offset = $_POST['startFrom'];

        $data['examples'] = $this->examples_model->get_scrolling($limit,$offset);

        echo json_encode($data['examples']);
        die(); //чтоб лишнего не передавал, а именно HTML
    }

    public function config_arr()
    {
        echo json_encode($this->config->item('categories'));
    }

    //Education page
    public function education()
    {
        $data = $this->language(); var_dump($data);
        $data['title'] = 'Обучение';
        $data['cat'] = $this->config->item('categories');

        echo $this->twig->render('education_view', $data);
    }

    //Contact page
    public function contact()
    {
        $data = $this->language();
        $data['title'] = 'Garage - Контакты';
        $data['cat'] = $this->config->item('categories');

        echo $this->twig->render('contact_view', $data);
    }

    public function language()
    {
        // read language from session
        if (!($userLang = $this->session->userdata('language'))) {
            $this->session->set_userdata('language', 'russian');
        }

        // load language file
        //$lang = $this->uri->segment(1);
        $lang = $this->input->get('lang');
        switch ($lang) {
            case 'en':
                $userLang = 'english';
                break;
            case 'uk':
                $userLang = 'ukrainian';
                break;

            case 'ru':
                $userLang = 'russian';
                break;
        }

        $this->session->set_userdata('language', $userLang);
        // $dataTime = time() + 30*24*60*60;
        // set_cookie('lang', $userLang, $dataTime);

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

        return $data;
    }
}