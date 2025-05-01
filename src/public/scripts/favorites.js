const favoritesItems = document.querySelector(".favorites-items");

function displayFavorites() {
  const localStorageFavorites =
    JSON.parse(localStorage.getItem("favorites")) || [];

  favoritesItems.innerHTML = "";

  if (localStorageFavorites.length === 0) {
    favoritesItems.innerHTML = "<p>Vous n'avez aucun article en favori.</p>";
    return;
  }

  localStorageFavorites.forEach((item, index) => {
    const favoriteItem = document.createElement("div");
    favoriteItem.classList.add("favorite-item");

    favoriteItem.innerHTML = `
      <div class="item-info">
        <img src="${item.img}" alt="${item.name}">
        <div class="item-details">
          <h3 class="item-name">${item.name}</h3>
          <p class="item-price">${item.price} €</p>
        </div>
      </div>
      <div class="favorite-item-actions">
        <a href="/productpage?id=${item.id}" class="view-product-btn">Voir le produit</a>
        <button class="remove-favorite-btn" data-index="${index}">Retirer</button>
      </div>
    `;
    favoritesItems.appendChild(favoriteItem);
  });

  setupRemoveFavoriteButtons();
}

function setupRemoveFavoriteButtons() {
  const removeFavoriteButtons = document.querySelectorAll(
    ".remove-favorite-btn"
  );

  removeFavoriteButtons.forEach((btn) => {
    btn.addEventListener("click", () => {
      const index = btn.getAttribute("data-index");
      removeFavorite(index);
    });
  });
}

function removeFavorite(index) {
  let localStorageFavorites =
    JSON.parse(localStorage.getItem("favorites")) || [];

  // Retire l'article des favoris
  localStorageFavorites.splice(index, 1);

  // Sauvegarde les favoris mis à jour
  localStorage.setItem("favorites", JSON.stringify(localStorageFavorites));

  displayFavorites(); // Met à jour l'affichage des favoris
  window.location.reload();
}

displayFavorites();
