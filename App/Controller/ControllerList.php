<?php

namespace App\Controller;

use App\Mapper\ProductMapper;

class ControllerList extends \Framework\Core\Controller
{
    public function actionIndex()
    {
        $product_list = ProductMapper::getProducts();
        $this->renderer->render("layout_view", $product_list, 'list_view');
    }

}
