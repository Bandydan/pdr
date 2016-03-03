<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class News_model extends CI_Model {

    public function get_news_all()
    {
        $this->db->select('*');
        $this->db->from('Content');
        $this->db->where("status = 1");
        $query = $this->db->get();
        $result = $query->result_array();
        return $result;
    }

        public function get_news($id)
    {
        $this->db->select('*');
        $this->db->from('Content');
        $this->db->where("id = $id AND status = 1");
        $query = $this->db->get();
        $result = $query->result_array();
        return $result;
    }
}