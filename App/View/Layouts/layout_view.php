<!DOCTYPE html>
<html lang="en">
<head>
    <title>Ты are повар</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href = "src/css/base.css">
    <link rel="stylesheet" href = "src/css/<?php echo $template; ?>.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <script defer src="js/menu.js"></script>
    <script defer src="js/search.js"></script>
</head>
<body>
<div class = "wrapper">
    <acide class = "menu">
        <div class = "menu__wrapper">
            <button class = "menu__btn"><i class="arrow fas fa-long-arrow-alt-left"></i></button>
            <a href="/">
            <img class = "logo" src = "src/images/logo.png">
            </a>
            <nav class = "nav">
                <ul class = "nav__list">
                    <li class = "nav__item"><a href = "/list">Все рецепты</a></li>
                    <li class = "nav__item"><a href = "/">Топ</a></li>
                    <li class = "nav__item"><a href = "/list">Как приготовить</a></li>
                    <li class = "nav__item"><a href = "/list">Кулинарная книга</a></li>
                    <li class = "nav__item"><a href = "#">Здоровье</a></li>
                    <li class = "nav__item"><a href = "#">Авторы</a></li>
                </ul>
            </nav>
            <nav class = "navigation">
                <ul class = "networks">
                    <li class = "networks__item"><a href = "#"><i class="fab fa-vk"></i></a></li>
                    <li class = "networks__item"></i><a href = "#"><i class="fab fa-instagram"></i></a></li>
                    <li class = "networks__item"><a href = "#"><i class="fab fa-facebook-f"></i></a></li>
                    <li class = "networks__item"><a href = "#"><i class="fab fa-google-plus-g"></i></a></li>
                </ul>
            </nav>
        </div>
    </acide>
    <header class = "header">
        <div class = "container">
            <div class = "header__wrapper">
                <div class = "logo">
                    <img class = "logo__img" src = "src/images/logo.png">
                </div>
            </div>
        </div>
    </header>


    <?php require_once $template_path; ?>


    <footer class = "footer">
        <div class = "container">
            <div class = "footer__wrapper">
                <nav class = "navigation">
                    <ul class = "links">
                        <li class = "links__item"><a href = "/">ГЛАВНАЯ</a></li>
                        <li class = "links__item"><a href = "#">Рецепты</a></li>
                        <li class = "links__item"><a href = "#">Идеи</a></li>
                        <li class = "links__item"><a href = "#">Журналы</a></li>
                        <li class = "links__item"><a href = "#">Авторы</a></li>
                        <li class = "links__item"><a href = "#">Реклама</a></li>
                        <li class = "links__item"><a href = "#">FAQ</a></li>
                    </ul>
                </nav>
                <nav class = "navigation">
                    <ul class = "networks">
                        <li class = "networks__item"><a href = "#"><i class="fab fa-vk"></i></a></li>
                        <li class = "networks__item"></i><a href = "#"><i class="fab fa-instagram"></i></a></li>
                        <li class = "networks__item"><a href = "#"><i class="fab fa-facebook-f"></i></a></li>
                        <li class = "networks__item"><a href = "#"><i class="fab fa-google-plus-g"></i></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </footer>
    <div class = "search-box">
        <input type = "text" class = "search-txt" placeholder="Поиск">
        <a href = "#" class = "search-btn"><i class="fas fa-search"></i></a>
    </div>
</div>
</body>
</html>