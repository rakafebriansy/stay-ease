<?php

namespace App\Controllers;
use App\Core\View;
use App\Database;
use App\Models\Manager;
use App\Models\TipeKamar;

class ManagerController
{
    private $baseurl = '/stay-ease/'; 

    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }
    public function setLogin()
    {
        View::set('pages/manager-login');
    }
    public function login()
    {
        $m_manager = new Manager();
        $manager = $m_manager->find($_POST['username'],'username');
        if($manager && $manager['password'] == $_POST['password']) {
            $_SESSION['id_manager'] = $manager['id'];
            View::redirectTo($this->baseurl . 'manager-beranda');
        }
        View::redirectWith($this->baseurl . 'manager-login', 'Username atau password salah',true);
    }
    public function index()
    {
        $tipe_kamar = new TipeKamar();
        $tipe_kamars = $tipe_kamar->all();
        // var_dump($tipe_kamars);die;
        View::set('pages/manager-beranda',[
            'tipe_kamars' => $tipe_kamars
        ]);
    }
}

?>