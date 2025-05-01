const offScreenMenu = document.querySelector(".off-screen-menu");
const hamburgerMenu = document.querySelector(".hamburger-menu");
const menuText = document.querySelector(".menu-text-span");
const overlay = document.querySelector(".overlay");
const offScreenSearchBar = document.querySelector(".off-screen-search-bar");
const searchBar = document.querySelector(".search-bar");
const closeIcon = document.querySelector(".close-icon");
const cartItemNbr = document.querySelector(".cart-item-number");
const products = JSON.parse(localStorage.getItem("product")) || [];
const body = document.querySelector("body");

hamburgerMenu.addEventListener("click", addActive);
overlay.addEventListener("click", removeActive);

searchBar.addEventListener("click", () => {
  offScreenSearchBar.classList.add("active");
  body.classList.add("active");
});
closeIcon.addEventListener("click", () => {
  offScreenSearchBar.classList.remove("active");
  body.classList.remove("active");
});

cartItemNbr.textContent = products.length;

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

async function fetchProducts() {
  try {
    const response = await fetch(`http://localhost:3000/product`);
    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }

    const data = await response.json();
    displayProductCards(data.products);
  } catch (error) {
    console.error("Erreur lors de la récupération des données :", error);
  }
}

const favorites = JSON.parse(localStorage.getItem("favorites")) || [];

function displayProductCards(products) {
  const productList = document.querySelector(".product-list");
  productList.innerHTML = ""; // <-- Ajouté pour éviter les doublons

  const favorites = JSON.parse(localStorage.getItem("favorites")) || [];

  products.forEach(({ product_id, name, price, default_img, novelty }) => {
    if (novelty) {
      const productCard = document.createElement("div");
      productCard.classList.add("product-card");
      productCard.setAttribute("data-id", product_id);

      const isFavorite = favorites.find((item) => item.id === product_id);
      const heartColor = isFavorite ? "#ff0000" : "#000";

      console.log(heartColor);

      productCard.innerHTML = `
        <a href="/productpage?id=${product_id}">
          <div class="product-card-img">
            <img src="${default_img}" alt="${name}">
          </div>
          <div class="product-card-details">
            <p>${name}</p>
            <p>${price}€</p>
          </div>
        </a>
            <svg xmlns="http://www.w3.org/2000/svg" height="22px" viewBox="0 -960 960 960" width="22px" fill="${heartColor}" class="favorite-heart">
              <path
                  d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z" />
           </svg>
      `;

      const heartIcon = productCard.querySelector(".favorite-heart");

      heartIcon.addEventListener("click", (e) => {
        e.preventDefault();
        toggleFavorite({ product_id, name, price, default_img });
      });

      productList.appendChild(productCard);
    }
  });
}

function toggleFavorite(product) {
  let localStorageFavorites =
    JSON.parse(localStorage.getItem("favorites")) || [];

  const existingFavorite = localStorageFavorites.find(
    (item) => item.id === product.product_id
  );

  if (existingFavorite) {
    // Si le produit est déjà dans les favoris, on le supprime
    localStorageFavorites = localStorageFavorites.filter(
      (item) => item.id !== product.product_id
    );
  } else {
    // Sinon, on ajoute le produit aux favoris
    const favoriteToAdd = {
      id: product.product_id,
      name: product.name,
      price: product.price,
      img: product.default_img, // Image par défaut
    };
    localStorageFavorites.push(favoriteToAdd);
  }

  // Sauvegarde des favoris mis à jour
  localStorage.setItem("favorites", JSON.stringify(localStorageFavorites));

  // Rechargement de l'affichage des produits avec la couleur mise à jour
  fetchProducts();
}

fetchProducts();
