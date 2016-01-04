<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Examples_model extends CI_Model {

    function get_examples_all()
    {
        $this->db->select('*');
        $this->db->from('example_works');
        $query = $this->db->get();
        return $query->result_array();
    }
    function get_examples($id)
    {
        $this->db->select('*');
        $this->db->from('example_works');
        $this->db->where("example_works.id = $id");
        $query = $this->db->get();
        return $query->result_array();
    }
}