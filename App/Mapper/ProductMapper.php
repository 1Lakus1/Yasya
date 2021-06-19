<?php

namespace App\Mapper;

use Framework\Database\Database;
use App\Model\ProductModel;
use PHP_CodeSniffer\Tests\Core\File\FindEndOfStatementTest;

class ProductMapper
{

    public static function getProductById($id)
    {
        $db = Database::connect();
        $sql = 'SELECT products.id, title, img, description, ingridients FROM products JOIN descriptions ON products.id = descriptions.product_id WHERE products.id = :id;';
        $statement = $db->prepare($sql);
        $statement->bindParam('id', $id);
        $statement->execute();
        $row = $statement->fetch();
        if($row) {
            $product = new ProductModel();
            $product->setTitle($row['title']);
            $product->setIngridients(unserialize($row['ingridients']));
            $product->setImgName($row['img']);
            $product->setId($row['id']);
            $product->setDescription(unserialize($row['description']));
            return $product;
        }else{
            throw new \Exception("This product doesn't exist!");
        }
    }

    public static function setProduct(object $product): void
    {
        $db = Database::connect();
        $sql = 'INSERT INTO products(title, img) VALUES (:title, :img)';
        $statement = $db->prepare($sql);
        $statement->bindParam('name', $product->title);
        $statement->bindParam('img', $product->imgName);
        $statement->execute();
    }

    public static function getProducts(int $maxCount=NULL): array
    {
        $db = Database::connect();
        $product_list = [];
        if(isset($maxCount)) {
            $sql = 'SELECT id, title, img FROM products ORDER BY id DESC LIMIT :maxCount;';
            $statement = $db->prepare($sql);
            $statement->bindParam('maxCount', $maxCount);
            $statement->execute();
            while ($row = $statement->fetch()) {
                $product = new ProductModel();
                $product->setTitle($row['title']);
                $product->setImgName($row['img']);
                $product->setId($row['id']);
                $product_list[] = $product;
            }
        } else {
            $sql = 'SELECT products.id, description, level, time, title, img, ingridients FROM products JOIN descriptions ON products.id = descriptions.product_id;';
            $statement = $db->prepare($sql);
            $statement->execute();
            while ($row = $statement->fetch()) {
                $product = new ProductModel();
                $product->setTitle($row['title']);
                $product->setIngridients(unserialize($row['ingridients']));
                $product->setImgName($row['img']);
                $product -> setLevel($row['level']);
                $product->setDescription(unserialize($row['description']));
                $product->setTime($row['time']);
                $product->setId($row['id']);
                $product_list[] = $product;
            }
        }

        return $product_list;
    }

    public static function getProductsSearch($title){
        $db = Database::connect();
        $product_list = [];
        $sql = "SELECT products.id, description, level, time, title, img, ingridients FROM products JOIN descriptions ON products.id = descriptions.product_id;";
        $statement = $db->prepare($sql);
        /*$statement->bindParam('title', $title);*/
        $statement->execute();
        while ($row = $statement->fetch()) {
            $product = new ProductModel();
            $product->setTitle($row['title']);
            $product->setIngridients($row['ingridients']);
            $product->setImgName($row['img']);
            $product -> setLevel($row['level']);
            $product->setDescription($row['description']);
            $product->setTime($row['time']);
            $product->setId($row['id']);
            $product_list[] = $product;
        }
    }

    /*public static function setProduct($title, $img, $description, $ingridients){

    }*/

}
