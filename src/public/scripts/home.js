const iconic = document.querySelector(".iconic");

async function fetchProducts() {
  try {
    const response = await fetch(`http://localhost:3000/product`);
    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }

    const data = await response.json();
    displayProducts(data.products);
  } catch (error) {
    console.error("Erreur lors de la récupération des données :", error);
  }
}

function displayProducts(products) {
  products.forEach(({ product_id, name, price, default_img }) => {
    const productCard = document.createElement("div");
    productCard.classList.add("product-card");
    productCard.setAttribute("data-id", product_id);

    productCard.innerHTML = `
          <div class="product-card-img">
            <img src="${default_img}" alt="${name}">
          </div>
          <div class="product-card-details">
            <p>${name}</p>
            <p>${price}€</p>
          </div>
        `;

    iconic.appendChild(productCard);
  });
}

fetchProducts();
