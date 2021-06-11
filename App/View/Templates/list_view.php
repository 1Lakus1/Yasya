<main class = "recepts">
    <div class = "container">
        <h1 class = "page">ПОДБОР РЕЦЕПТОВ</h1>
        <div class = "recepts__wrapper">
            <?php foreach($data as $product){?>
            <article class = "recept">
                <div class = "recept__wrapper">
                    <div class = "recept__img">
                        <a href = "/product?id=<?php echo $product->getId(); ?>">
                            <img alt = "" src = "src/images/<?php echo $product->getImgName(); ?>">
                        </a>
                    </div>
                    <div class = "recept__info">
                        <h2 class = "recept__name"><a href = "/product?id=<?php echo $product->getId(); ?>"><?php echo $product->getTitle(); ?></a></h2>
                        <div class = "recept__options">
                            <span class = "recept__time"><i class="far fa-clock"></i><?php echo $product->getTime(); ?> мин.</span>
                            <span class = "recept__complexity"><i class="fas fa-pizza-slice"></i><?php echo $product->getLevel(); ?></span>
                        </div>
                        <p class = "recept__description"><?php echo $product->getDescription()[0];?><a href="/product?id=<?php echo $product->getId(); ?>">...</a>
                        </p>
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
            </article>
            <?php } ?>
        </div>
    </div>
</main>