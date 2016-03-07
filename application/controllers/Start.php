<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Start extends CI_Controller {

    // public function __construct(){

    //     parent::__construct();

    //     if (!($userLang = $this->session->userdata('language'))) {
    //         $this->session->set_userdata('language', 'russian');
    //     }
    //     $this->lang->load('interface', $userLang);
    // }

    public function index()
    {
        $this->load->helper('language');
        $this->load->helper('url');
        $this->load->helper('cookie');

//         if ($_GET['lang']) {
//             $uLang = trim(strip_tags($_GET['lang']));
//             $this->session->set_userdata('lang', $uLang);
//             $dataTime = time() + 30*24*60*60;
//             set_cookie('lang', $uLang, $dataTime);
//         }
//         elseif (get_cookie('lang')) {
//             $this->session->set_userdata('lang', get_cookie('lang'));
//         }
//         else {
//             $this->session->set_userdata('lang', 'ru');
//         }
// var_dump($uLang);




        if (!($userLang = $this->session->userdata('language'))) {
            $this->session->set_userdata('language', 'russian');
        }

            // load language file
            $lang = $this->uri->segment(1);
            switch ($lang) {
                case 'en':
                    $userLang = 'english';
                    break;
                case 'uk':
                    $userLang = 'ukrainian';
                    break;

                default:
                    $userLang = 'russian';
                    break;
            }

            $this->session->set_userdata('language', $userLang);
            $dataTime = time() + 30*24*60*60;
            set_cookie('lang', $userLang, $dataTime);


        $this->lang->load('interface', $userLang);

        var_dump($userLang);
        var_dump(get_cookie('lang'));


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


        $this->load->library('twig');
        $id = rand(1, 9);

        $data['title'] = 'Garage - Удаление вмятин без покраски';
        $this->load->model('examples_model');

        $data['examples'] = $this->examples_model->get_examples($id);
        $data['cat'] = $this->config->item('categories');

        echo $this->twig->render('start_view', $data);


// Old version

        // $data['title'] = 'Garage';
        // $this->load->model('examples_model');

        // $data['examples'] = $this->examples_model->get_examples($id);

        // $this->load->view('header', $data);
        // $this->load->view('start_view', $data);
        // $this->load->view('footer', $data);
    }
}