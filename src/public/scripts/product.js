const urlParams = new URLSearchParams(window.location.search);
const id = urlParams.get("id");
const main = document.querySelector("main");

async function fetchProduct() {
  try {
    const response = await fetch(`http://localhost:3000/product/${id}`);
    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }
    const data = await response.json();
    setupColorPicker(data.product);
    setupSizePicker(data.product);
    setupImages(data.product);
    setupProduct(data.product);
    setupCarousel();
  } catch (error) {
    console.error("Erreur lors de la récupération des données :", error);
  }
}

fetchProduct();

function setupProduct(product) {
  const productName = document.querySelector(".product-name-text");
  const productPrice = document.querySelector(".product-price-text");
  const productDescription = document.querySelector(
    ".product-description-text"
  );
  const productGender = document.querySelector(".product-gender-text");

  productName.textContent = product.name;
  productPrice.textContent = product.price + " €";
  productDescription.textContent = product.description;
  product.gender.forEach(({ name }) => {
    productGender.textContent = name;
  });
}

function setupImages(product) {
  const colorDots = document.querySelectorAll(".color-dot");
  const carouselImg = document.querySelector(".carousel-main-img");
  const carouselThumb = document.querySelector(".carousel-img");

  let colorActive = "";
  colorDots.forEach((dot) => {
    if (dot.classList.contains("active")) {
      colorActive = dot.dataset.color;
    }
  });

  product.colors.forEach(({ color, front_img, back_img }) => {
    if (colorActive === color) {
      carouselImg.innerHTML = `
            <img class="active" src="${front_img}" alt="">
            <img src="${back_img}" alt="">
      `;
      carouselThumb.innerHTML = `
            <img class="thumb active" src="${front_img}" alt="Miniature image du produit">
            <img class="thumb" src="${back_img}" alt="Miniature image du produit">
      `;
    }
    setupCarousel();
  });
}

function setupColorPicker(product) {
  const colorOptions = document.querySelector(".color-options");

  product.colors.forEach(({ color, hexa_code }, index) => {
    const newSpan = document.createElement("span");
    newSpan.classList.add("color-dot");
    if (index === 0) newSpan.classList.add("active");
    newSpan.setAttribute("data-color", color);
    newSpan.style.backgroundColor = hexa_code;
    colorOptions.appendChild(newSpan);
  });

  const colorDots = document.querySelectorAll(".color-dot");

  colorDots.forEach((dot) => {
    dot.addEventListener("click", () => {
      colorDots.forEach((dot) => dot.classList.remove("active"));
      dot.classList.add("active");
      setupImages(product);
    });
  });
}

function setupSizePicker(product) {
  const sizeOptions = document.querySelector(".size-options");

  product.sizes.forEach(({ name }, index) => {
    const newBtn = document.createElement("button");
    newBtn.classList.add("size-btn");
    if (index === 0) newBtn.classList.add("active");
    newBtn.setAttribute("data-size", name);
    newBtn.innerHTML = `${name}`;
    sizeOptions.appendChild(newBtn);
  });

  const sizeButtons = document.querySelectorAll(".size-btn");
  sizeButtons.forEach((button) => {
    button.addEventListener("click", () => {
      sizeButtons.forEach((btn) => btn.classList.remove("active"));
      button.classList.add("active");
    });
  });
}

function setupCarousel() {
  const mainImages = document.querySelectorAll(".carousel-main-img img");
  const thumbs = document.querySelectorAll(".carousel-img img");
  const prevBtn = document.querySelector(".previous");
  const nextBtn = document.querySelector(".next");

  let currentIndex = 0;

  function updateCarousel(index) {
    mainImages.forEach((img, i) => {
      img.classList.toggle("active", i === index);
    });
    thumbs.forEach((thumb, i) => {
      thumb.classList.toggle("active", i === index);
    });
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
