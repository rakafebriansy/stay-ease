<?php

namespace rakafebriansy\phpmvc\Middleware;

use App\Core\View;

class MustLoginTamuMiddleware
{
    public function before():void
    {
        if (!isset($_SESSION['id_tamu'])) {
            View::redirectTo('/stay-ease/tamu-login');
        }
    }
}

?>