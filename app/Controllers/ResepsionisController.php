<?php

namespace App\Controllers;
use App\Core\View;
use App\Database;
use App\Models\Resepsionis;

class ResepsionisController
{
    private $baseurl = '/stay-ease/'; 

    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }
    public function setLogin()
    {
        View::set('pages/resepsionis-login');
    }
    public function login()
    {
        $resepsionis = new Resepsionis();
        $result = $resepsionis->find($_POST['username'],'username');
        if($result && $result['password'] == $_POST['password']) {
            View::redirectTo($this->baseurl . 'resepsionis-beranda');
        }
        View::redirectWith($this->baseurl . 'resepsionis-login', 'Username atau password salah',true);
    }
    public function index()
    {
        View::set('pages/resepsionis-beranda');
    }
}

?>