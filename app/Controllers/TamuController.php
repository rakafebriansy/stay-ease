<?php

namespace App\Controllers;
use App\Core\View;
use App\Database;
use App\Models\Tamu;
use App\Models\TipeKamar;

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
        $tamu = new Tamu();
        $result = $tamu->find($_POST['username'],'username');
        if($result && $result['password'] == $_POST['password']) {
            View::redirectTo($this->baseurl . 'tamu-beranda');
        }
        View::redirectWith($this->baseurl . 'tamu-login', 'Username atau password salah',true);
    }
    public function setRegister()
    {
        View::set('pages/tamu-register');
    }
    public function register()
    {
        $username = $_POST['username'];
        $nik = $_POST['nik'];
        $no_telepon = $_POST['no_telepon'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        
        //VALIDATION
        if(!isset($username)) {
            View::redirectWith($this->baseurl . 'tamu-register', 'Username tidak boleh kosong',true);
        }
        if($this->db->readOne('tamu',['username','=',$username])) {
            View::redirectWith($this->baseurl . 'tamu-register', 'Username tidak tersedia',true);
        }
        if(!isset($nik)) {
            View::redirectWith($this->baseurl . 'tamu-register', 'NIK tidak boleh kosong',true);
        }
        if($this->db->readOne('tamu',['NIK','=',$nik])) {
            View::redirectWith($this->baseurl . 'tamu-register', 'NIK telah terdaftar',true);
        }
        if(strlen($nik) != 16) {
            View::redirectWith($this->baseurl . 'tamu-register', 'NIK harus berisi angka 16 digit',true);
        }
        if(!isset($no_telepon)) {
            View::redirectWith($this->baseurl . 'tamu-register', 'Nomor telepon tidak boleh kosong',true);
        }
        if(!is_numeric($no_telepon)) {
            View::redirectWith($this->baseurl . 'tamu-register', 'Nomor telepon harus angka',true);
        }
        if(!isset($email)) {
            View::redirectWith($this->baseurl . 'tamu-register', 'Email tidak boleh kosong',true);
        }
        if(!isset($password)) {
            View::redirectWith($this->baseurl . 'tamu-register', 'Password tidak boleh kosong',true);
        }
        if(!ctype_alnum($password)) {
            View::redirectWith($this->baseurl . 'tamu-register', 'Password harus berisi kombinasi angka dan huruf',true);
        }
        if(ctype_alpha($password)) {
            View::redirectWith($this->baseurl . 'tamu-register', 'Password harus berisi kombinasi angka dan huruf',true);
        }
        if(is_numeric($password)) {
            View::redirectWith($this->baseurl . 'tamu-register', 'Password harus berisi kombinasi angka dan huruf',true);
        }

        //REGISTER
        $tamu = new Tamu();
        if($tamu->create([
            'username' => $username,
            'nik' => $nik,
            'no_telp' => $no_telepon,
            'email' => $email,
            'password' => $password,
        ])) {
            View::redirectWith($this->baseurl . 'tamu-login', 'Registrasi berhasil');
        }
        View::redirectWith($this->baseurl . 'tamu-register', 'Registrasi gagal',true);
    }
    public function index()
    {
        $tipe_kamar = new TipeKamar();
        $results = $tipe_kamar->all();
        // var_dump($results);die;
        View::set('pages/tamu-beranda',[
            'tipe_kamars' => $results
        ]);
    }

}

?>