const url = "http://localhost:3000";
const img = document.querySelector("img");

let color = "purple"; // Exemple: couleur sélectionnée par l'utilisateur
let view = "front"; // Exemple: vue sélectionnée

fetch(`${url}/tshirt`)
  .then((response) => response.json())
  .then((data) => {
    const tshirt = data[0];
    img.src = `${tshirt.images}_${view}_${color}.jpg`;
  })
  .catch((err) => {
    console.error("Erreur !", err);
  });
