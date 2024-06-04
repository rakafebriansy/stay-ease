<?php

namespace App\Controllers;
use App\Core\View;
use App\Database;
use App\Models\Kamar;
use App\Models\Reservasi;
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
        $m_tamu = new Tamu();
        $tamu = $m_tamu->find($_POST['username'],'username');
        if($tamu && $tamu['password'] == $_POST['password']) {
            $_SESSION['id_tamu'] = $tamu['id'];
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
        $m_tamu = new Tamu();
        if($m_tamu->create([
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
        View::set('pages/tamu-beranda',[
            'tipe_kamars' => $results
        ]);
    }
    public function setPesan($id_tipe_kamar)
    {
        $sql_fasilitas = <<<SQL
            SELECT f.nama, f.gambar, dtk.* FROM detail_tipe_kamar dtk
            JOIN tipe_kamar tk ON (tk.id = dtk.id_tipe_kamar)
            JOIN fasilitas f ON (f.id = dtk.id_fasilitas)
            WHERE tk.id = $id_tipe_kamar;
        SQL;
        $tipe_kamar = new TipeKamar();
        $result = $tipe_kamar->find($id_tipe_kamar); 
        $fasilitas = $this->db->executeNoBind($sql_fasilitas,true);
        View::set('pages/tamu-pesan',[
            'tipe_kamar' => $result,
            'fasilitas' => $fasilitas
        ]);
    }
    public function setReservasi($id_tipe_kamar)
    {
        $m_tamu = new Tamu();
        $tamu = $m_tamu->find($_SESSION['id_tamu']);

        $m_tipe_kamar = new TipeKamar();
        $tipe_kamar = $m_tipe_kamar->find($id_tipe_kamar); 

        $m_kamar = new Kamar();
        $kamars = $m_kamar->findAvailable($id_tipe_kamar,'id_tipe_kamar');

        View::set('pages/tamu-reservasi',[
            'tamu' => $tamu,
            'tipe_kamar' => $tipe_kamar,
            'kamars' => $kamars,
        ]);
    }
    public function reservasi()
    {
        $tanggal_checkin = $_POST['tanggal_checkin'];
        $tanggal_checkout = $_POST['tanggal_checkout'];
        $id_kamar = $_POST['id_kamar'];

        if(!isset($tanggal_checkin) || empty($tanggal_checkin)) {
            View::redirectWith($this->baseurl . 'tamu-reservasi/' . $_POST['id_tipe_kamar'], 'Tanggal Check In tidak boleh kosong',true);
        }
        if(!isset($tanggal_checkout) || empty($tanggal_checkout)) {
            View::redirectWith($this->baseurl . 'tamu-reservasi/' . $_POST['id_tipe_kamar'], 'Tanggal Check Out tidak boleh kosong',true);
        }
        if(!isset($id_kamar) || empty($id_kamar)) {
            View::redirectWith($this->baseurl . 'tamu-reservasi/' . $_POST['id_tipe_kamar'], 'Pilihan Kamar tidak boleh kosong',true);
        }
        $m_reservasi = new Reservasi();
        if($m_reservasi->create([
            'tanggal_checkin' => $tanggal_checkin,
            'tanggal_checkout' => $tanggal_checkout,
            'id_kamar' => intval($id_kamar),
            'id_tamu' => $_SESSION['id_tamu'],
        ])) {
            $m_kamar = new Kamar();
            if($m_kamar->update(['dipesan' => 1],intval($id_kamar))) {
                View::redirectWith($this->baseurl . 'tamu-pesan/' . $_POST['id_tipe_kamar'], 'Reservasi berhasil');
            }
        }
        View::redirectWith($this->baseurl . 'tamu-reservasi/' . $_POST['id_tipe_kamar'], 'Reservasi gagal',true);
    }
}

?>