<?php

namespace App\Controllers;
use App\Core\View;
use App\Database;
use App\Seeder;

class LandingController
{
    private $baseurl = '/stay-ease/'; 
    private $db;
    private $seeder;

    public function __construct()
    {
        $this->db = new Database();
    }
    public function index()
    {
        View::redirectTo($this->baseurl . 'tamu-login');
    }
    public function fresh()
    {
        $this->seeder = new Seeder($this->db);
        $this->seeder->fresh();
        echo 'FRESH!';
        exit();
    }
}

?>