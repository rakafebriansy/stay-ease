<?php

namespace App\Controllers;
use App\Core\View;
use App\Database;
use App\Seeder;

class LandingController
{
    private Database $db;
    private Seeder $seeder;

    public function __construct()
    {
        $this->db = new Database();
    }
    public function index()
    {
        View::set('pages/index');
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