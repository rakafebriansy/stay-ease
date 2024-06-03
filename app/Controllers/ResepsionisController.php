<?php

namespace App\Controllers;
use App\Core\View;
use App\Database;

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
}

?>