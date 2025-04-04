const offScreenMenu = document.querySelector(".off-screen-menu");
const hamburgerMenu = document.querySelector(".hamburger-menu");
const menuText = document.querySelector(".menu-text-span");
const overlay = document.querySelector(".overlay");

hamburgerMenu.addEventListener("click", addActive);
overlay.addEventListener("click", removeActive);

function addActive() {
  offScreenMenu.classList.toggle("active");
  hamburgerMenu.classList.toggle("active");
  menuText.classList.toggle("active");
  overlay.classList.toggle("active");
}

function removeActive() {
  offScreenMenu.classList.remove("active");
  hamburgerMenu.classList.remove("active");
  menuText.classList.remove("active");
  overlay.classList.remove("active");
}
 