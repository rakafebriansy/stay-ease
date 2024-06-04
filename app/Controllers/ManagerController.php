<?php

namespace App\Controllers;
use App\Core\View;
use App\Database;
use App\Models\Manager;
use App\Models\TipeKamar;

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
        if(isset($_COOKIE['rememberme']) && str_contains($_COOKIE['rememberme'],'manager')) {
            View::redirectTo($this->baseurl . 'tamu-beranda');
        }
        View::set('pages/manager-login');
    }
    public function login()
    {
        $m_manager = new Manager();
        $manager = $m_manager->find($_POST['username'],'username');
        if($manager && $manager['password'] == $_POST['password']) {
            $_SESSION['id_manager'] = $manager['id'];
            if(isset($_POST['rememberme'])) {
                setcookie('rememberme','manager',time() + 86400);
            }
            View::redirectTo($this->baseurl . 'manager-beranda');
        }
        View::redirectWith($this->baseurl . 'manager-login', 'Username atau password salah',true);
    }
    public function index()
    {
        $tipe_kamar = new TipeKamar();
        $tipe_kamars = $tipe_kamar->all();
        View::set('pages/manager-beranda',[
            'tipe_kamars' => $tipe_kamars
        ]);
    }
    public function setReport()
    {
        $sql_penghasilan = <<<SQL
            SELECT SUM(harga) AS penghasilan FROM reservasi r
            JOIN kamar k ON (k.id = r.id_kamar)
            JOIN tipe_kamar tk ON (tk.id = k.id_tipe_kamar)
        SQL;
        $sql_data_penghasilan = <<<SQL
            SELECT MONTH(r.tanggal_checkin) as bulan, SUM(harga) AS penghasilan FROM reservasi r
            JOIN kamar k ON (k.id = r.id_kamar)
            JOIN tipe_kamar tk ON (tk.id = k.id_tipe_kamar)
            GROUP BY MONTH(r.tanggal_checkin)
        SQL;
        $total_penghasilan = $this->db->executeNoBind($sql_penghasilan);
        $penghasilans = $this->db->executeNoBind($sql_data_penghasilan,true);
        View::set('pages/manager-report', [
            'total_penghasilan' => $total_penghasilan,
            'penghasilans' => json_encode($penghasilans)
        ]);
    }
}

?>