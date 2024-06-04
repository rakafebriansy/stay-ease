<?php

namespace rakafebriansy\phpmvc\Middleware;

use App\Core\View;

class MustLoginResepsionisMiddleware
{
    public function before():void
    {
        if (!isset($_SESSION['id_resepsionis'])) {
            View::redirectTo('/stay-ease/resepsionis-login');
        }

    }
}

?>