<?php

namespace App\Controllers;
use App\Core\View;
use App\Database;

class ManagerController
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }
    public function setLogin()
    {
        View::set('pages/manager-login');
    }
}

?>