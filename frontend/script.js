const url = "http://localhost:3000";
const img = document.querySelector("img");

let color = "blue"; // Exemple: couleur sélectionnée par l'utilisateur
let view = "front"; // Exemple: vue sélectionnée

fetch(`${url}/product`)
  .then((response) => response.json())
  .then((data) => {
    const product = data[0];
    const images = product.images;
    img.src = images[color][view];
  })
  .catch((err) => {
    console.error("Erreur !", err);
  });
