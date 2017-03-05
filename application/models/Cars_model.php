<?php
class Cars_model extends CI_Model {

        public function __construct(){
            $this->load->database();
        }
		
		public function get_cars(){
			$query = $this->db->get('cars');
			return $query->result_array();
		}
		
}