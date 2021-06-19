<?php

namespace App\Controller;
use App\Mapper\ProductMapper;

class ControllerSet extends \Framework\Core\Controller
{
    public function actionIndex()
    {
            $this->renderer->render("layout_view", null, "setProduct_view");
            if(isset($_POST['name'])){
                echo $_POST['name'];
            }
    }
}
