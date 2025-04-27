-- Création des valeurs de base (genres, couleurs, tailles)
INSERT INTO genders (name)
VALUES
    ("Homme"),
    ("Femme");

INSERT INTO colors (name, hexa_code) 
VALUES 
    ("Noir", "#000000"),
    ("Blanc", "#FFFFFF"),
    ("Olive", "#808000"),
    ("Violet", "#800080"),
    ("Orange", "#FFA500"),
    ("Vert", "#008000"),
    ("Gris", "#808080"),
    ("Bleu", "#0080FF");

INSERT INTO sizes (name)
VALUES
    ("XXS"),
    ("XS"),
    ("S"),
    ("M"),
    ("L"),
    ("XL"),
    ("XXL"),
    ("XXXL");

-- Insertion des produits
INSERT INTO products (name, description, price, default_img, quantity, available, gender_id, novelty) 
VALUES 
    (
        "Nike Park VII Jersey",
        "Le Nike Park VII Jersey est un maillot de football alliant confort et performance. Doté de la technologie Dri-FIT, il évacue la transpiration pour garder la peau au sec. Son tissu léger et respirant assure une aération optimale, tandis que sa coupe ajustée favorise la liberté de mouvement. Son design minimaliste, avec un col en V ou rond selon le modèle, en fait un choix idéal pour l'entraînement et les matchs.",
        24.99,
        "http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_front_purple.jpg",
        100,
        1,
        1,
	1
    ),
    (
        "Jack & Jones Jjecorp",
        "Le JACK & JONES Jjecorp Logo Tee SS Crew Neck Noos est un t-shirt casual alliant style et confort. Confectionné en coton doux et respirant, il offre une sensation agréable sur la peau. Son col rond classique et sa coupe ajustée garantissent une tenue moderne et polyvalente. Orné du logo emblématique de JACK & JONES, il affiche un design minimaliste idéal pour un look décontracté au quotidien. Parfait pour être porté seul ou sous une veste, il s’adapte à toutes les occasions.",
        19.99,
        "http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_front_grey.jpg",
        0,
        0,
        1,
	1
    ),
    (
        "Build Your Brand Ladies",
        "Le Build Your Brand Ladies Basic Tee T-Shirt Femme est un essentiel du dressing féminin, pensé pour allier simplicité et confort. Fabriqué en coton doux, il procure une sensation agréable tout au long de la journée. Sa coupe féminine légèrement cintrée met la silhouette en valeur, tandis que son col rond classique et ses finitions soignées offrent un look épuré. Idéal à porter seul ou en superposition, ce t-shirt polyvalent s’adapte aussi bien à une tenue décontractée qu’à un style plus urbain.",
        9.99,
        "http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_front_black.jpg",
        100,
        1,
        2,
	0
    );

-- Insertion des images liées aux produits
INSERT INTO images (path, product_id)
VALUES
    -- Nike Park VII
    ("http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_front_purple.jpg", 1),
    ("http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_back_purple.jpg", 1),
    ("http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_front_blue.jpg", 1),
    ("http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_back_blue.jpg", 1),
    ("http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_front_green.jpg", 1),
    ("http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_back_green.jpg", 1),

    -- Jack & Jones
    ("http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_front_grey.jpg", 2),
    ("http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_back_grey.jpg", 2),
    ("http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_front_orange.jpg", 2),
    ("http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_back_orange.jpg", 2),
    ("http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_front_green.jpg", 2),
    ("http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_back_green.jpg", 2),

    -- Build Your Brand Ladies
    ("http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_front_black.jpg", 3),
    ("http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_back_black.jpg", 3),
    ("http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_front_white.jpg", 3),
    ("http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_back_white.jpg", 3),
    ("http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_front_olive.jpg", 3),
    ("http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_back_olive.jpg", 3);

-- Couleurs associées aux produits
INSERT INTO color_product (product_id, color_id, front_img, back_img)
VALUES
    (1, 4,"http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_front_purple.jpg","http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_back_purple.jpg"), -- Violet
    (1, 8, "http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_front_blue.jpg","http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_back_blue.jpg"), -- Bleu
    (1, 6, "http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_front_green.jpg","http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_back_green.jpg"), -- Vert
    (2, 5, "http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_front_orange.jpg", "http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_back_orange.jpg"), -- Orange
    (2, 6, "http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_front_green.jpg", "http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_back_green.jpg"), -- Vert
    (2, 7, "http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_front_grey.jpg", "http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_back_grey.jpg"), -- Gris
    (3, 1, "http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_front_black.jpg", "http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_back_black.jpg"), -- Noir
    (3, 2, "http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_front_white.jpg", "http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_back_white.jpg"), -- Blanc
    (3, 3, "http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_front_olive.jpg", "http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_back_olive.jpg"); -- Olive

-- Tailles associées aux produits
INSERT INTO size_product (product_id, size_id)
VALUES
    (1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
    (2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6),
    (3, 1), (3, 2), (3, 3), (3, 4), (3, 5);
