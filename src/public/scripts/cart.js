const cartItems = document.querySelector(".cart-items");

function displayCartItems() {
  const localStorageItems = JSON.parse(localStorage.getItem("product")) || [];

  cartItems.innerHTML = "";

  if (localStorageItems.length === 0) {
    cartItems.innerHTML = "<p>Votre panier est vide.</p>";
    updateCartTotal([]);
    return;
  }

  localStorageItems.forEach((item, index) => {
    const cartItem = document.createElement("div");
    cartItem.classList.add("cart-item");

    cartItem.innerHTML = `
      <div class="item-info">
        <img src="${item.img}" alt="${item.name}">
        <div class="item-details">
          <p class="item-name">${item.name}</p>
          <p class="item-color-size">${item.color} | ${item.size}</p>
        </div>
      </div>
      <div class="item-actions">
        <input type="number" class="item-quantity" min="1" value="${
          item.quantity
        }" data-index="${index}">
        <p class="item-price">${(item.price * item.quantity).toFixed(2)} €</p>
        <button class="delete-btn" data-index="${index}">❌</button>
      </div>
    `;
    cartItems.appendChild(cartItem);
  });

  setupDeleteButtons();
  setupQuantityInputs();
  updateCartTotal(localStorageItems);
}

function setupDeleteButtons() {
  const deleteButtons = document.querySelectorAll(".delete-btn");

  deleteButtons.forEach((btn) => {
    btn.addEventListener("click", () => {
      const index = btn.getAttribute("data-index");
      deleteCartItem(index);
    });
  });
}

function setupQuantityInputs() {
  const quantityInputs = document.querySelectorAll(".item-quantity");

  quantityInputs.forEach((input) => {
    input.addEventListener("change", () => {
      const index = input.getAttribute("data-index");
      const newQuantity = parseInt(input.value);

      if (newQuantity < 1) return; // Empêcher quantité 0 ou négative

      updateCartItemQuantity(index, newQuantity);
    });
  });
}

function deleteCartItem(index) {
  let localStorageItems = JSON.parse(localStorage.getItem("product")) || [];

  localStorageItems.splice(index, 1);

  localStorage.setItem("product", JSON.stringify(localStorageItems));

  window.location.reload();
  displayCartItems();
}

function updateCartItemQuantity(index, newQuantity) {
  let localStorageItems = JSON.parse(localStorage.getItem("product")) || [];

  localStorageItems[index].quantity = newQuantity;

  localStorage.setItem("product", JSON.stringify(localStorageItems));

  displayCartItems();
}

function updateCartTotal(items) {
  const totalAmount = items.reduce(
    (total, item) => total + item.price * item.quantity,
    0
  );
  const totalElement = document.querySelector(".total-amount");
  totalElement.textContent = `${totalAmount.toFixed(2)} €`;
}

displayCartItems();
