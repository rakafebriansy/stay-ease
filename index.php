<?php
require 'app/init.php';

use App\Controllers\LandingController;
use App\Controllers\ManagerController;
use App\Controllers\ResepsionisController;
use App\Controllers\TamuController;
use App\Router;
use rakafebriansy\phpmvc\Middleware\MustLoginManagerMiddleware;
use rakafebriansy\phpmvc\Middleware\MustLoginResepsionisMiddleware;
use rakafebriansy\phpmvc\Middleware\MustLoginTamuMiddleware;

$baseurl = '/stay-ease/'; 

Router::add('GET', $baseurl, LandingController::class, 'index');
Router::add('GET', $baseurl . 'manager-login', ManagerController::class, 'setLogin');
Router::add('POST', $baseurl . 'manager-login', ManagerController::class, 'login');
Router::add('GET', $baseurl . 'manager-beranda', ManagerController::class, 'index',[MustLoginManagerMiddleware::class]);
Router::add('GET', $baseurl . 'manager-report', ManagerController::class, 'setReport',[MustLoginManagerMiddleware::class]);
Router::add('GET', $baseurl . 'resepsionis-login', ResepsionisController::class, 'setLogin');
Router::add('POST', $baseurl . 'resepsionis-login', ResepsionisController::class, 'login');
Router::add('GET', $baseurl . 'resepsionis-beranda', ResepsionisController::class, 'index',[MustLoginResepsionisMiddleware::class]);
Router::add('GET', $baseurl . 'resepsionis-reservasi', ResepsionisController::class, 'setReservasi',[MustLoginResepsionisMiddleware::class]);
Router::add('POST', $baseurl . 'resepsionis-verifikasi', ResepsionisController::class, 'verifikasi',[MustLoginResepsionisMiddleware::class]);
Router::add('GET', $baseurl . 'tamu-register', TamuController::class, 'setRegister');
Router::add('POST', $baseurl . 'tamu-register', TamuController::class, 'register');
Router::add('GET', $baseurl . 'tamu-login', TamuController::class, 'setLogin');
Router::add('POST', $baseurl . 'tamu-login', TamuController::class, 'login');
Router::add('GET', $baseurl . 'tamu-beranda', TamuController::class, 'index',[MustLoginTamuMiddleware::class]);
Router::add('GET', $baseurl . 'tamu-pesan/([0-9a-zA-Z]*)', TamuController::class, 'setPesan',[MustLoginTamuMiddleware::class]);
Router::add('POST', $baseurl . 'tamu-reservasi', TamuController::class, 'reservasi',[MustLoginTamuMiddleware::class]);
Router::add('GET', $baseurl . 'tamu-reservasi/([0-9a-zA-Z]*)', TamuController::class, 'setReservasi',[MustLoginTamuMiddleware::class]);
Router::add('GET', $baseurl . 'tamu-tagihan/([0-9a-zA-Z]*)', TamuController::class, 'setTagihan',[MustLoginTamuMiddleware::class]);
Router::add('GET', $baseurl . 'fresh', LandingController::class, 'fresh',[MustLoginTamuMiddleware::class]);

Router::run();
?>