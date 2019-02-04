<?php

session_start();
if (isset($_SESSION['language'])!=true) $_SESSION['language'] = 'russian';

defined('BASEPATH') OR exit('No direct script access allowed');

class Pages extends CI_Controller {

	public function index()
	{
		$this->load->model('Get_model');
		$data['md_menu'] = $this->Get_model->md_menu(2);
		$this->load->view('head_view');
    $this->load->view('header_view',$data);
    $this->load->view('carusel_view');
    $this->load->view('undermenu_view');
    $this->load->view('enaunsment_view');
    $this->load->view('training_view');
    $this->load->view('news_view');
    $this->load->view('paralax_view');
    $this->load->view('aboutuni_view');
    $this->load->view('footer_view');
	}

	public function page($id=0)
	{
		$this->load->model('Get_model');
		$data['md_menu'] = $this->Get_model->md_menu(2);
		$data['md_page'] = $this->Get_model->md_page($id,$data);
		$data['right_menu1'] = $this->Get_model->md_menuu(65);
		$data['right_menu2'] = $this->Get_model->md_menuu(70);
		$data['right_menu3'] = $this->Get_model->md_menuu(75);

		$this->load->view('head_view');
    $this->load->view('header_view',$data);
    $this->load->view('page_view'	 ,$data);
    $this->load->view('footer_view');
	}

	public function news($id=0)
	{
		$this->load->model('Get_model');
		$data['md_menu'] = $this->Get_model->md_menu(2);
		$data['md_menuu'] = $this->Get_model->md_page($id);
			$data['right_menu1'] = $this->Get_model->md_menuu(65);
		$data['right_menu2'] = $this->Get_model->md_menuu(70);
		$data['right_menu3'] = $this->Get_model->md_menuu(75);
		$this->load->view('head_view');
    $this->load->view('header_view',$data);
    $data['md_news'] = $this->Get_model->md_news(1);
    $this->load->view('news_view',$data);
    $this->load->view('footer_view');
	}
	public function inner_news($id=0)
	{
		$this->load->model('Get_model');
		$data['md_menu'] = $this->Get_model->md_menu(2);
		$data['md_menuu'] = $this->Get_model->md_page($id);
			$data['right_menu1'] = $this->Get_model->md_menuu(65);
		$data['right_menu2'] = $this->Get_model->md_menuu(70);
		$data['right_menu3'] = $this->Get_model->md_menuu(75);
		$this->load->view('head_view');
    $this->load->view('header_view',$data);
    $data['md_news'] = $this->Get_model->md_news(1);
    $this->load->view('inner_news_view',$data);
    $this->load->view('right_sidebar_view',$data);
    $this->load->view('footer_view');
	}
}	