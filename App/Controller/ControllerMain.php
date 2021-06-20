<?php

namespace App\Controller;
use App\Mapper\ProductMapper;

class ControllerMain extends \Framework\Core\Controller
{
    public function actionIndex()
    {
        $product_list = ProductMapper::getProducts(8);
        $this->renderer->render("layout_view", $product_list, 'main_view');
    }
}
