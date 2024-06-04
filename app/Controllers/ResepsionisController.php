<?php

namespace App\Controllers;
use App\Core\View;
use App\Database;
use App\Models\Resepsionis;
use App\Models\Reservasi;

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
        if(isset($_COOKIE['rememberme']) && str_contains($_COOKIE['rememberme'],'resepsionis')) {
            View::redirectTo($this->baseurl . 'tamu-beranda');
        }
        View::set('pages/resepsionis-login');
    }
    public function login()
    {
        $m_resepsionis = new Resepsionis();
        $resepsionis = $m_resepsionis->find($_POST['username'],'username');
        if($resepsionis && $resepsionis['password'] == $_POST['password']) {
            $_SESSION['id_resepsionis'] = $resepsionis['id'];
            if(isset($_POST['rememberme'])) {
                setcookie('rememberme','resepsionis',time() + 86400);
            }
            View::redirectTo($this->baseurl . 'resepsionis-beranda');
        }
        View::redirectWith($this->baseurl . 'resepsionis-login', 'Username atau password salah',true);
    }
    public function index()
    {
        View::set('pages/resepsionis-beranda');
    }
    public function setReservasi()
    {
        $sql_reservasi = <<<SQL
            SELECT r.id AS id_reservasi, t.nik, t.username AS nama, tk.tipe, r.tanggal_checkin, r.tanggal_checkout, tk.harga, r.id_resepsionis
            FROM reservasi r
            JOIN kamar k ON (k.id = r.id_kamar)
            JOIN tipe_kamar tk ON (tk.id = k.id_tipe_kamar)
            JOIN tamu t ON (t.id = r.id_tamu);
        SQL;
        $reservasis = $this->db->executeNoBind($sql_reservasi,true);
        View::set('pages/resepsionis-reservasi', [
            'reservasis' => $reservasis
        ]);
    }
    public function verifikasi()
    {
        $id_reservasi = $_POST['id'];
        $m_reservasi = new Reservasi();
        if($m_reservasi->update([
            'id_resepsionis' => $_SESSION['id_resepsionis']
        ],$id_reservasi)) {
            echo 1;
        }
        echo 0;;
    }
}

?>