<?php

session_start();

// require 'vendor/autoload.php';
require 'app/Database.php';
require 'app/Seeder.php';
require 'app/View.php';
require 'app/Router.php';
require 'app/Model.php';
require 'app/Models/Manager.php';
require 'app/Models/Tamu.php';
require 'app/Models/Resepsionis.php';
require 'app/Models/TipeKamar.php';
require 'app/Models/Kamar.php';
require 'app/Models/Reservasi.php';
require 'app/Controllers/LandingController.php';
require 'app/Controllers/ManagerController.php';
require 'app/Controllers/ResepsionisController.php';
require 'app/Controllers/TamuController.php';
require 'app/Middleware/MustLoginResepsionisMiddleware.php';
require 'app/Middleware/MustLoginManagerMiddleware.php';
require 'app/Middleware/MustLoginTamuMiddleware.php';

?>