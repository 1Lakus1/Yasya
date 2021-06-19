<?php /** @noinspection ALL */

namespace App\Model;

class ProductModel
{
    private int $id;
    private string $title;
    private string $imgName;
    private array $description;
    private array $ingridients;
    private int $time;
    private string $level;

    public function getDescription()
    {
        return $this->description;
    }


    public function setDescription($description)
    {
        $this->description = $description;
    }


    public function getIngridients()
    {
        return $this->ingridients;
    }


    public function setIngridients($ingridients)
    {
        $this->ingridients = $ingridients;
    }


    public function getTime()
    {
        return $this->time;
    }


    public function setTime($time)
    {
        $this->time = $time;
    }


    public function getLevel()
    {
        return $this->level;
    }


    public function setLevel($level)
    {
        $this->level = $level;
    }


    public function getTitle(): string
    {
        return $this -> title;
    }

    public function getImgName(): string
    {
        return $this -> imgName;
    }

    public function getId(): int
    {
        return $this -> id;
    }

    public function setTitle(string $title): void
    {
        $this -> title = $title;
    }

    public function setImgName(string $imgName): void
    {
        $this -> imgName = $imgName;
    }

    public function setId(int $id): void
    {
        $this -> id = $id;
    }
}