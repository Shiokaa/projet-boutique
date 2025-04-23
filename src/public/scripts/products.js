const sortButton = document.querySelector(".sort");
const sortChoices = document.querySelector(".sort-choices");

sortButton.addEventListener("click", (_) => {
  sortChoices.classList.toggle("active");
});

async function fetchProducts() {
  try {
    const response = await fetch(`http://localhost:3000/product`);
    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }

    const data = await response.json();
    displayProductsCards(data.products);
  } catch (error) {
    console.error("Erreur lors de la récupération des données :", error);
  }
}

function displayProductsCards(products) {
  products.forEach(({ product_id, name, price, default_img, novelty }) => {
    const productsCard = document.createElement("div");
    const productsList = document.querySelector(".products-list");
    productsCard.classList.add("products-card");
    productsCard.setAttribute("data-id", product_id);
    if (novelty) {
      productsCard.innerHTML = `
      <a href="/productpage?id=${product_id}">
        <svg xmlns="http://www.w3.org/2000/svg" height="22px" viewBox="0 -960 960 960" width="22px" fill="#000">
          <path d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z" />
        </svg>
        <div class="products-card-img">
          <img src="${default_img}" alt="${name}">
        </div>
        <div class="products-card-details">
          <p class="product-novelty">Dernières sorties !</p>
          <p class="product-name">${name}</p>
          <p class="product-price">${price}€</p>
        </div>
      </a>
      `;
    } else {
      productsCard.innerHTML = `
        <svg xmlns="http://www.w3.org/2000/svg" height="22px" viewBox="0 -960 960 960" width="22px" fill="#000">
          <path d="m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0 46-15.5 90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z" />
        </svg>
        <div class="products-card-img">
          <img src="${default_img}" alt="${name}">
        </div>
        <div class="products-card-details">
          <p class="product-name">${name}</p>
          <p class="product-price">${price}€</p>
        </div>
      `;
    }

    productsList.appendChild(productsCard);
  });
}

fetchProducts();
