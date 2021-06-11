<main class = "articles">
    <div class = "container">
        <h1 class = "page">Интересное</h1>
        <div class = "articles__wrapper">
            <?php foreach($data as $product){ ?>
            <article class = "article">
                <a href = "/product?id=<?php echo $product->getId(); ?>">
                    <h3 class = "article__titleBg"><?php echo $product->getTitle(); ?></h3>
                    <img class = "article__img" src = "/src/images/<?php echo $product->getImgName(); ?>">
                </a>
            </article>
            <?php } ?>
        </div>
    </div>
</main>