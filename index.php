<?php
require 'app/init.php';

use App\Controllers\LandingController;
use App\Controllers\ManagerController;
use App\Controllers\ResepsionisController;
use App\Controllers\TamuController;
use App\Router;

$baseurl = '/stay-ease/'; 

Router::add('GET', $baseurl, LandingController::class, 'index');
Router::add('GET', $baseurl . 'manager-login', ManagerController::class, 'setLogin');
Router::add('POST', $baseurl . 'manager-login', ManagerController::class, 'login');
Router::add('GET', $baseurl . 'manager-beranda', ManagerController::class, 'index');
Router::add('GET', $baseurl . 'resepsionis-login', ResepsionisController::class, 'setLogin');
Router::add('POST', $baseurl . 'resepsionis-login', ResepsionisController::class, 'login');
Router::add('GET', $baseurl . 'resepsionis-beranda', ResepsionisController::class, 'index');
Router::add('GET', $baseurl . 'tamu-register', TamuController::class, 'setRegister');
Router::add('POST', $baseurl . 'tamu-register', TamuController::class, 'register');
Router::add('GET', $baseurl . 'tamu-login', TamuController::class, 'setLogin');
Router::add('POST', $baseurl . 'tamu-login', TamuController::class, 'login');
Router::add('GET', $baseurl . 'tamu-beranda', TamuController::class, 'index');
Router::add('GET', $baseurl . 'tamu-pesan/([0-9a-zA-Z]*)', TamuController::class, 'setPesan');
Router::add('GET', $baseurl . 'fresh', LandingController::class, 'fresh');
// Router::add('GET', $baseurl . 'admin/login', App\Controllers\Admin\LoginController::class, 'setLogin');
// Router::add('GET', $baseurl . 'guru/soal/([0-9a-zA-Z]*)', App\Controllers\Guru\UjianController::class, 'setSoal');

// Router::add('POST', $baseurl . 'logout', App\Controllers\HomeController::class, 'logout');
// Router::add('GET', $baseurl . 'fresh', App\Controllers\HomeController::class, 'fresh');

Router::run();
?>