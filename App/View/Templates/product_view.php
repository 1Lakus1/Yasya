<main class = "recept">
    <div class = "container">
        <h1 class = "page">Рецепт</h1>
        <div class = "recept__wrapper">
            <div class = "recept__img">
                <img src = "src/images/<?php echo $data->getImgName(); ?>">
            </div>
            <div class = "recept__info">
                <h2 class = "recept__name"><?php echo $data->getTitle(); ?></h2>
                <p class = "recept__title-list">Ингридиенты</p>
                <ul class = "recept__ingridients">
                    <?php foreach($data->getIngridients() as $key => $ingridient){ ?>
                    <li class = "recept__ingridients-item"><?php echo $key." ".$ingridient ?></li>
                    <?php } ?>
                </ul>
                <p class = "recept__title-list">Способ приготовления</p>
                <ol class = "recept__steps">
                    <?php foreach($data->getDescription() as $description){ ?>
                        <li class = "recept__steps-item"><?php echo $description; ?></li>
                    <?php } ?>

                </ol>
            </div>
        </div>
    </div>
</main>
