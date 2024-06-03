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
    public function login()
    {
        $username = $_POST['username'];
        $password = $_POST['password'];
        $sql = <<<SQL
            SELECT username, password FROM resepsionis WHERE username = :username AND password = :password;
        SQL;
        $result = $this->db->executeNonQuery($sql,[
            'username' => $username,
            'password' => $password
        ]);
        if($result) {
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