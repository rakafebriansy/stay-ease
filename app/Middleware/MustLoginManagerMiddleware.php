<?php

namespace rakafebriansy\phpmvc\Middleware;

use App\Core\View;

class MustLoginManagerMiddleware
{
    public function before():void
    {
        if (!isset($_SESSION['id_manager'])) {
            View::redirectTo('/stay-ease/manager-login');
        }
    }
}

?>