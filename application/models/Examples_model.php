<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Examples_model extends CI_Model {

    public $table = 'example_works_';

    public function get_examples($id = 0, $lang)
    {
        $this->db->select('*');
        $this->db->from($this->table.$lang);

        if ($id != 0) {
        $this->db->where('id', $id);
        }

        $query = $this->db->get();
        $result = $query->result_array();
        $result = $this->__add_photo($result);
        return $result;
    }

    // возвращает общее кол-во записей в таблице example_works
    function count_all()
    {
        return $this->db->count_all($this->table.$lang);//$this->table);
    }
    // $limit - кол-во получаемых записей
    // $offset - смещение, с какой записи начинать выборку

    public function get_scrolling($limit, $offset, $lang)
    {
        $this->db->limit($limit, $offset);
        $query = $this->db->get($this->table.$lang);
        $result = $query->result_array();
        $result = $this->__add_photo($result);
        return $result;
    }


    /**
     * @access private
     *
     * Method replaces numbers of photo by their filenames,
     * constructing them using example ids and number of photos
     *
     */
    private function __add_photo($examples)
    {
        $new_examples = array();
        foreach ($examples as $item) {

            $num_before = $item['photo_before'];
            $num_after = $item['photo_after'];
            $id = $item['id'];
            $photo_after = $photo_before = array();

            for ($i=0; $i < $num_before; $i++) {
                $link_address = '/img/example/before/'
                . $id . '_' . $i . '.jpg';
                if(file_exists(mb_substr($link_address,1))){
                    $photo_before[] = base_url().$link_address;
                }
            }

            for ($i=0; $i < $num_after; $i++) {
                $link_address = '/img/example/after/'
                . $id . '_' . $i . '.jpg';
                if(file_exists(mb_substr($link_address,1))){
                    $photo_after[] = base_url().$link_address;
                }
            }

            $new_item = $item;
            $new_item['photo_before'] = $photo_before;
            $new_item['photo_after'] = $photo_after;
            $new_examples[] = $new_item;
        }
        return $new_examples;
    }
}
