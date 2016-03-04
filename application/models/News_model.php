<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class News_model extends CI_Model {

    public function get_news($id = 0)
    {
        $this->db->select('*');
        $this->db->from('Content');
        $this->db->where('status', '1');

        if ($id !== 0) {
            $this->db->where('id', $id);
        }
        
        $query = $this->db->get();
        $result = $query->result_array();
        return $result;
    }
}