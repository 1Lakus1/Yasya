const ingridient = document.getElementById('addIngridient');
const step = document.getElementById('addStep');
const form = document.getElementById('settingForm');

step.addEventListener('click', ()=>{
    form.innerHTML += '<input class="settingForm__input" type="text" placeholder="Steps" name="steps[]">';
});

ingridient.addEventListener('click', ()=>{
    form.innerHTML += '<input class="settingForm__input" type="text" placeholder="Ingridients" name="ingridients[]">';
});