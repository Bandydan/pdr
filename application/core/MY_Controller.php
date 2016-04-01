<?php defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

    public $data = array();
    public $userLang = 'russian';


    public function __construct()
    {
        parent::__construct();

        $this->load->helper('language');
        $this->load->helper('url');
        $this->load->helper('cookie');
    }

    public function index()
    {
    }

    public function _language()
    {
        // read language from session
        if (!($userLang = $this->session->userdata('language')))
        {
            $this->session->set_userdata('language', 'russian');
        }

        // load language file
        $lang = $this->uri->segment(1);
        //$lang = $this->input->get('lang');
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

        if(!(isset($userLang))) $userLang = 'russian';
        $data['lang'] = $userLang;

        $this->session->set_userdata('language', $userLang);
        // $dataTime = time() + 30*24*60*60;
        // set_cookie('lang', $userLang, $dataTime);

        $this->lang->load('interface', $userLang);

        // set up some info...
        $data['Header_entrance'] = $this->lang->line('Header_entrance');
        $data['Header_exit'] = $this->lang->line('Header_exit');
        $data['Header_registration'] = $this->lang->line('Header_registration');
        $data['Header_coll'] = $this->lang->line('Header_coll');

        $data['main_menu'] = array(
                    'Menu_main' => $this->lang->line('Menu_main'),
                    'Menu_example' => $this->lang->line('Menu_example'),
                    'Menu_education' => $this->lang->line('Menu_education'),
                    'Menu_rent' => $this->lang->line('Menu_rent'),
                    'Menu_evaluation' => $this->lang->line('Menu_evaluation'),
                    'Menu_shop' => $this->lang->line('Menu_shop'),
                    'Menu_reviews' => $this->lang->line('Menu_reviews'),
                    'Menu_contacts' => $this->lang->line('Menu_contacts'),
                    );

        $data['examp_cat'] = array(
                            'pdr' => $this->lang->line('LM_pdr'),
                            'pol' => $this->lang->line('LM_pol'),
                            'brn' => $this->lang->line('LM_brn'),
                            'chm' => $this->lang->line('LM_chm'),
                            'gls' => $this->lang->line('LM_gls'),
                            'atk' => $this->lang->line('LM_atk'),
                            'pnt' => $this->lang->line('LM_pnt'),
                            'nvi' => $this->lang->line('LM_nvi'),
                            );

        return $data;
    }
}