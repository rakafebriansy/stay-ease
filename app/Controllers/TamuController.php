<?php

namespace App\Controllers;
use App\Core\View;
use App\Database;

class TamuController
{
    private $baseurl = '/stay-ease/'; 

    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }
    public function setLogin()
    {
        View::set('pages/tamu-login');
    }
    public function login()
    {
        $username = $_POST['username'];
        $password = $_POST['password'];
        $sql = <<<SQL
            SELECT username, password FROM tamu WHERE username = :username AND password = :password;
        SQL;
        $result = $this->db->executeNonQuery($sql,[
            'username' => $username,
            'password' => $password
        ]);
        if($result) {
            View::redirectTo($this->baseurl . 'tamu-beranda');
        }
        View::redirectWith($this->baseurl . 'tamu-login', 'Username atau password salah');
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