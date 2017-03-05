<?php
class Cars extends CI_Controller {

        public function __construct(){
                parent::__construct();
                $this->load->model('cars_model');
                $this->load->helper('url_helper');
        }

        public function index(){
		$this->load->helper('url');	
        $data['cars'] = $this->cars_model->get_cars();
        $data['title'] = 'Ford Cars';

        $this->load->view('templates/header', $data);
        $this->load->view('cars/index', $data);
        $this->load->view('templates/footer');
		}
		
		public function allCars(){
		$this->load->helper('url');	
        $data['cars'] = $this->cars_model->get_cars();
        $data['title'] = 'Ford Cars';

        
        $this->load->view('cars/allFords', $data);
        
		}
		
		public function findCar(){
		$this->load->helper('url');	
        $data['cars'] = $this->cars_model->get_cars();
        $data['title'] = 'Ford Cars';

     
        $this->load->view('cars/findFords', $data);
      
		}

}      