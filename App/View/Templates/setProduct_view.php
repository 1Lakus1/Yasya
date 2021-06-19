<main class = "setting">
    <div class="container">
        <h1 class = "page">Добавить рецепт</h1>
        <div class="setting_wrapper">
            <form class="settingForm" id="settingForm" method="post">
                <input class="settingForm__input" type="text" placeholder="Name" name="name">
                <input class="settingForm__input" type="text" placeholder="Ingridients" name="ingridients[]">
                <input class="settingForm__input" type="text" placeholder="Steps" name="steps[]">
               <!-- <input class="settingForm__input" type="file" placeholder="file" name="img">-->

            </form>
            <button id="addIngridient"> Add ingridient</button>
            <button id="addStep"> Add step </button>c
            <div class="admission__wrapper">
                <a class="admission__link" href="/main">Cancel</a>
                <button type="submit" form="logForm">Apply</button>
            </div>
        </div>
    </div>
</main>
