<?php

namespace App\Controllers;
use App\Core\View;
use App\Database;

class TamuController
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }
    public function setLogin()
    {
        View::set('pages/tamu-login');
    }
    public function setRegister()
    {
        View::set('pages/tamu-register');
    }
    public function index()
    {
        View::set('pages/tamu-beranda');
    }
}

?>