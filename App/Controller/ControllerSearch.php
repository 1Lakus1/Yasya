<?php

namespace App\Controller;

use App\Mapper\ProductMapper;

class ControllerSearch extends \Framework\Core\Controller
{
    public function actionIndex()
    {
        if(isset($_GET['title'])){
            $product_list = ProductMapper::getProductsSearch($_GET['title']);
            $this->renderer->render("layout_view", $product_list, 'list_view');
        }

    }
    
}
