<?php
require 'app/init.php';

use App\Controllers\LandingController;
use App\Router;

$baseurl = '/stay-ease/'; 

Router::add('GET', $baseurl, LandingController::class, 'index');
Router::add('GET', $baseurl . 'fresh', LandingController::class, 'fresh');
// Router::add('GET', $baseurl . 'admin/login', App\Controllers\Admin\LoginController::class, 'setLogin');
// Router::add('GET', $baseurl . 'guru/soal/([0-9a-zA-Z]*)', App\Controllers\Guru\UjianController::class, 'setSoal');


// Router::add('POST', $baseurl . 'logout', App\Controllers\HomeController::class, 'logout');
// Router::add('GET', $baseurl . 'fresh', App\Controllers\HomeController::class, 'fresh');

Router::run();
?>