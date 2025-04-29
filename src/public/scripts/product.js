// Récupération de l'ID depuis l'URL
const urlParams = new URLSearchParams(window.location.search);
const id = urlParams.get("id");

// Sélection des éléments principaux
const main = document.querySelector("main");
const addToCartBtn = document.querySelector(".add-to-cart");

// --- Fonction principale ---
async function fetchProduct() {
  try {
    const response = await fetch(`http://localhost:3000/product/${id}`);
    if (!response.ok) throw new Error(`HTTP error! Status: ${response.status}`);
    const data = await response.json();
    initializeProductPage(data.product);
  } catch (error) {
    console.error("Erreur lors de la récupération des données :", error);
  }
}

// --- Initialisation complète de la page ---
function initializeProductPage(product) {
  setupColorPicker(product);
  setupSizePicker(product);
  setupProductInfo(product);
  setupImages(product);
  setupCarousel();

  addToCartBtn.addEventListener("click", (_) => {
    addToCart(product);
  });
}

// --- Ajouter produit au panier ---

function addToCart(product) {
  const colorDots = document.querySelectorAll(".color-dot");
  const sizeBtn = document.querySelectorAll(".size-btn");
  let colorPicked = "";
  let sizePicked = "";
  let image = "";

  colorDots.forEach((dot) => {
    if (dot.classList.contains("active")) {
      colorPicked = dot.getAttribute("data-color");
      product.colors.forEach((color) => {
        if (color.color === colorPicked) {
          image = color.front_img;
        }
      });
    }
  });

  sizeBtn.forEach((btn) => {
    if (btn.classList.contains("active")) {
      sizePicked = btn.getAttribute("data-size");
    }
  });

  let productToCart = {
    id: product.product_id,
    name: product.name,
    price: product.price,
    color: colorPicked,
    size: sizePicked,
    quantity: 1,
    img: image,
  };

  let localStorageItems = JSON.parse(localStorage.getItem("product")) || [];

  const existingProduct = localStorageItems.find(
    (item) =>
      item.id === productToCart.id &&
      item.color === productToCart.color &&
      item.size === productToCart.size
  );

  if (existingProduct) {
    existingProduct.quantity += 1;
  } else {
    localStorageItems.push(productToCart);
  }

  localStorage.setItem("product", JSON.stringify(localStorageItems));
  window.location.reload();
}

// --- Remplir les informations du produit ---
function setupProductInfo(product) {
  document.querySelector(".product-name-text").textContent = product.name;
  document.querySelector(
    ".product-price-text"
  ).textContent = `${product.price} €`;
  document.querySelector(".product-description-text").textContent =
    product.description;

  const productGender = document.querySelector(".product-gender-text");
  product.gender.forEach(({ name }) => {
    productGender.textContent = name;
  });
}

// --- Générer les boutons de couleur ---
function setupColorPicker(product) {
  const colorOptions = document.querySelector(".color-options");
  colorOptions.innerHTML = "";

  product.colors.forEach(({ color, hexa_code }, index) => {
    const colorDot = document.createElement("span");
    colorDot.classList.add("color-dot");
    if (index === 0) colorDot.classList.add("active");
    colorDot.dataset.color = color;
    colorDot.style.backgroundColor = hexa_code;
    colorOptions.appendChild(colorDot);
  });

  addColorPickerEvents(product);
}

// --- Ajouter les événements aux boutons de couleur ---
function addColorPickerEvents(product) {
  const colorDots = document.querySelectorAll(".color-dot");

  colorDots.forEach((dot) => {
    dot.addEventListener("click", () => {
      colorDots.forEach((d) => d.classList.remove("active"));
      dot.classList.add("active");
      setupImages(product);
    });
  });
}

// --- Générer les boutons de tailles ---
function setupSizePicker(product) {
  const sizeOptions = document.querySelector(".size-options");
  sizeOptions.innerHTML = "";

  product.sizes.forEach(({ name }, index) => {
    const sizeBtn = document.createElement("button");
    sizeBtn.classList.add("size-btn");
    if (index === 0) sizeBtn.classList.add("active");
    sizeBtn.dataset.size = name;
    sizeBtn.textContent = name;
    sizeOptions.appendChild(sizeBtn);
  });

  addSizePickerEvents();
}

// --- Ajouter les événements aux boutons de tailles ---
function addSizePickerEvents() {
  const sizeButtons = document.querySelectorAll(".size-btn");

  sizeButtons.forEach((button) => {
    button.addEventListener("click", () => {
      sizeButtons.forEach((btn) => btn.classList.remove("active"));
      button.classList.add("active");
    });
  });
}

// --- Afficher les images en fonction de la couleur sélectionnée ---
function setupImages(product) {
  const activeColorDot = document.querySelector(".color-dot.active");
  const selectedColor = activeColorDot ? activeColorDot.dataset.color : "";

  const carouselMain = document.querySelector(".carousel-main-img");
  const carouselThumb = document.querySelector(".carousel-img");

  carouselMain.innerHTML = "";
  carouselThumb.innerHTML = "";

  const color = product.colors.find((c) => c.color === selectedColor);

  if (color) {
    carouselMain.innerHTML = `
      <img class="active" src="${color.front_img}" alt="">
      <img src="${color.back_img}" alt="">
    `;

    carouselThumb.innerHTML = `
      <img class="thumb active" src="${color.front_img}" alt="Miniature image du produit">
      <img class="thumb" src="${color.back_img}" alt="Miniature image du produit">
    `;
  }
}

// --- Gérer le carrousel d'images ---
function setupCarousel() {
  const mainImages = document.querySelectorAll(".carousel-main-img img");
  const thumbs = document.querySelectorAll(".carousel-img img");
  const prevBtn = document.querySelector(".previous");
  const nextBtn = document.querySelector(".next");

  let currentIndex = 0;

  function updateCarousel(index) {
    mainImages.forEach((img, i) => img.classList.toggle("active", i === index));
    thumbs.forEach((thumb, i) => thumb.classList.toggle("active", i === index));
    currentIndex = index;
  }

  nextBtn.addEventListener("click", () => {
    const nextIndex = (currentIndex + 1) % mainImages.length;
    updateCarousel(nextIndex);
  });

  prevBtn.addEventListener("click", () => {
    const prevIndex =
      (currentIndex - 1 + mainImages.length) % mainImages.length;
    updateCarousel(prevIndex);
  });

  thumbs.forEach((thumb, index) => {
    thumb.addEventListener("click", () => updateCarousel(index));
  });
}

// Lancer la récupération du produit au chargement
fetchProduct();
