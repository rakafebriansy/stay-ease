<?php

namespace App\Controllers;
use App\Core\View;
use App\Database;

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
        $username = $_POST['username'];
        $password = $_POST['password'];
        $sql = <<<SQL
            SELECT username, password FROM manager WHERE username = :username AND password = :password;
        SQL;
        $result = $this->db->executeNonQuery($sql,[
            'username' => $username,
            'password' => $password
        ]);
        if($result) {
            View::redirectTo($this->baseurl . 'manager-beranda');
        }
        View::redirectWith($this->baseurl . 'manager-login', 'Username atau password salah',true);
    }
    public function index()
    {
        View::set('pages/manager-beranda');
    }
}

?>