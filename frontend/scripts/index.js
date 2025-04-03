const url = "http://localhost:3000";
const img = document.querySelector("img");

let color = "orange"; // Exemple: couleur sélectionnée par l'utilisateur
let view = "front"; // Exemple: vue sélectionnée

fetch(`${url}/tshirt`)
  .then((response) => response.json())
  .then((data) => {
    const tshirt = data[1];
    const images = tshirt.images;
    img.src = images[color][view];
  })
  .catch((err) => {
    console.error("Erreur !", err);
  });
