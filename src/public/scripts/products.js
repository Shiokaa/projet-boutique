// ==== Sélection des éléments du DOM ====
const sortButton = document.querySelector(".sort");
const sortChoices = document.querySelector(".sort-choices");
const croissantBtn = document.querySelector(".croissant");
const decroissantBtn = document.querySelector(".decroissant");

const productsList = document.querySelector(".products-list");

const filterToggleBtn = document.querySelector(".filter-toggle");
const filterOptions = document.querySelector(".filter-options");
const applyFiltersBtn = document.querySelector(".apply-filters");
const resetBtn = document.querySelector(".reset-button");

let productsData = []; // Stockage de tous les produits récupérés

// ==== Récupère le paramètre "filter" de l'URL ====

const urlParams = new URLSearchParams(window.location.search);
const filter = urlParams.get("filter");

// ==== Fetch des produits ====
async function fetchProducts() {
  try {
    const response = await fetch(`http://localhost:3000/product`);
    if (!response.ok) throw new Error(`HTTP error! Status: ${response.status}`);

    const data = await response.json();
    productsData = data.products;
    displayProductsCards(productsData);
    filterHeader(filter);
  } catch (error) {
    console.error("Erreur lors de la récupération des données :", error);
  }
}

// ==== Affichage des produits ====
function displayProductsCards(products) {
  productsList.innerHTML = "";

  products.forEach(({ product_id, name, price, default_img, novelty }) => {
    const productsCard = document.createElement("div");
    productsCard.classList.add("products-card");
    productsCard.setAttribute("data-id", product_id);

    productsCard.innerHTML = `
      <a href="/productpage?id=${product_id}">
        <svg xmlns="http://www.w3.org/2000/svg" height="22px" viewBox="0 -960 960 960" width="22px" fill="#000">
          <path d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z"/>
        </svg>
        <div class="products-card-img">
          <img src="${default_img}" alt="${name}">
        </div>
        <div class="products-card-details">
          ${novelty ? '<p class="product-novelty">Dernières sorties !</p>' : ""}
          <p class="product-name">${name}</p>
          <p class="product-price">${price}€</p>
        </div>
      </a>
    `;

    productsList.appendChild(productsCard);
  });
}

// ==== Filtres ====
function applyFilters() {
  const hommeChecked = document.getElementById("filter-homme").checked;
  const femmeChecked = document.getElementById("filter-femme").checked;
  const nouveauteChecked = document.getElementById("filter-nouveaute").checked;

  let filteredProducts = [...productsData];

  if (hommeChecked || femmeChecked) {
    filteredProducts = filteredProducts.filter((product) => {
      if (hommeChecked && product.gender === "Homme") return true;
      if (femmeChecked && product.gender === "Femme") return true;
      return false;
    });
  }

  if (nouveauteChecked) {
    filteredProducts = filteredProducts.filter((product) => product.novelty);
  }

  displayProductsCards(filteredProducts);
}

function resetFilters() {
  document.getElementById("filter-homme").checked = false;
  document.getElementById("filter-femme").checked = false;
  document.getElementById("filter-nouveaute").checked = false;

  displayProductsCards(productsData);
}

// ==== Tri des produits ====
function sortProducts(order) {
  const sortedProducts = [...productsData].sort((a, b) => {
    return order === "asc" ? a.price - b.price : b.price - a.price;
  });

  displayProductsCards(sortedProducts);
}

// ==== Filtre depuis header ====

function filterHeader(filter) {
  document.getElementById("filter-homme").checked = false;
  document.getElementById("filter-femme").checked = false;
  document.getElementById("filter-nouveaute").checked = false;

  if (filter === "homme") {
    document.getElementById("filter-homme").checked = true;
  } else if (filter === "femme") {
    document.getElementById("filter-femme").checked = true;
  } else if (filter === "nouveaute") {
    document.getElementById("filter-nouveaute").checked = true;
  }

  applyFilters();
}

// ==== Événements ====
sortButton.addEventListener("click", () => {
  sortChoices.classList.toggle("active");
});

croissantBtn.addEventListener("click", () => sortProducts("asc"));
decroissantBtn.addEventListener("click", () => sortProducts("desc"));

filterToggleBtn.addEventListener("click", () => {
  filterOptions.classList.toggle("active");
});

applyFiltersBtn.addEventListener("click", applyFilters);
resetBtn.addEventListener("click", resetFilters);

// ==== Lancement initial ====
fetchProducts();
