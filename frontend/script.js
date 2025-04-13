const url = "http://localhost:3000";
const img = document.querySelector("img");

let color = "blue"; // Exemple: couleur sélectionnée par l'utilisateur
let view = "front"; // Exemple: vue sélectionnée

fetch(`${url}/product/1`)
  .then((response) => response.json())
  .then((data) => {
    const image = data.product.default_img;
    img.src = image;
  })
  .catch((err) => {
    console.error("Erreur !", err);
  });
