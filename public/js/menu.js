const menu = document.querySelector(".menu");
const arrow = document.querySelector(".arrow");
const btn = document.querySelector(".menu__btn");
document.querySelector(".menu__btn").addEventListener("click",()=>{
    menu.classList.toggle("menu-active");
    btn.classList.toggle("menu__btn-active");
    arrow.classList.toggle("arrow-active");
});
