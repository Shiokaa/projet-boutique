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
    ("Bleu", "#0080FF"),
    ("Rouge", "#FF0000"),
    ("Jaune", "#FFFF00"),
    ("Marron", "#654321"),
    ("Rose", "#FFC0CB");

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
INSERT INTO products (name, description, price, default_img, quantity, available, gender_id, novelty, iconic, categorie) 
VALUES 
    (
        "Nike Park VII Jersey",
        "Le Nike Park VII Jersey est un maillot de football alliant confort et performance. Doté de la technologie Dri-FIT, il évacue la transpiration pour garder la peau au sec. Son tissu léger et respirant assure une aération optimale, tandis que sa coupe ajustée favorise la liberté de mouvement. Son design minimaliste, avec un col en V ou rond selon le modèle, en fait un choix idéal pour l'entraînement et les matchs.",
        24.99,
        "http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_front_purple.jpg",
        100,
        1,
        1,
	1,
    1,
    "tshirt"
    ),
    (
        "Jack & Jones Jjecorp",
        "Le JACK & JONES Jjecorp Logo Tee SS Crew Neck Noos est un t-shirt casual alliant style et confort. Confectionné en coton doux et respirant, il offre une sensation agréable sur la peau. Son col rond classique et sa coupe ajustée garantissent une tenue moderne et polyvalente. Orné du logo emblématique de JACK & JONES, il affiche un design minimaliste idéal pour un look décontracté au quotidien. Parfait pour être porté seul ou sous une veste, il s’adapte à toutes les occasions.",
        19.99,
        "http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_front_grey.jpg",
        0,
        0,
        1,
	1,
    0,
    "tshirt"
    ),
    (
        "Build Your Brand Ladies",
        "Le Build Your Brand Ladies Basic Tee T-Shirt Femme est un essentiel du dressing féminin, pensé pour allier simplicité et confort. Fabriqué en coton doux, il procure une sensation agréable tout au long de la journée. Sa coupe féminine légèrement cintrée met la silhouette en valeur, tandis que son col rond classique et ses finitions soignées offrent un look épuré. Idéal à porter seul ou en superposition, ce t-shirt polyvalent s’adapte aussi bien à une tenue décontractée qu’à un style plus urbain.",
        9.99,
        "http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_front_black.jpg",
        100,
        1,
        2,
	0,
    1,
    "tshirt"
    ),
    (
    "Champion Legacy",
    "Le t-shirt Champion Legacy incarne la fusion parfaite entre style rétro et confort moderne. Confectionné en coton de qualité supérieure, il offre une sensation douce et agréable tout au long de la journée. Avec sa coupe ajustée et son logo distinctif, il s’adapte aussi bien aux activités sportives qu’au quotidien. Sa teinte bleue ajoute une touche dynamique à n'importe quelle tenue, tandis que ses finitions soignées reflètent l’authenticité de la marque.",
    29.99,
    "http://localhost:3000/img/tshirts/Champion_Legacy/Champion_Legacy_front_blue.jpg",
    85,
    1,
    2,
    0,
    1,
    "tshirt"
),
(
    "Levi's Luca Slime",
    "Le Levi's Luca Slime est un t-shirt noir au style urbain affirmé, parfait pour les adeptes d'une mode décontractée et contemporaine. Fabriqué dans un coton doux et respirant, il garantit un confort optimal à chaque port. Sa coupe moderne met en valeur la silhouette sans restreindre les mouvements. Idéal pour toutes les occasions, il s’associe aisément avec un jean ou un pantalon plus habillé. Son logo discret rappelle l’élégance intemporelle de Levi's.",
    34.99,
    "http://localhost:3000/img/tshirts/Levi's_Luca_Slime/Levi's_Luca_Slime_front_black.jpg",
    42,
    1,
    2,
    1,
    0,
    "tshirt"
),
(
    "Only Women Plain Brand Heart",
    "Ce t-shirt Only Women Plain Brand Heart se distingue par son design sobre rehaussé d’un petit cœur symbolique. Pensé pour le quotidien, il allie confort et féminité avec une coupe légèrement cintrée et un tissu doux au toucher. Parfait pour les journées décontractées, ce haut vert pastel s’accorde avec tous les styles. Que ce soit pour un café entre amies ou une sortie shopping, il accompagne vos tenues avec charme et simplicité. Un incontournable du dressing féminin moderne.",
    17.99,
    "http://localhost:3000/img/tshirts/Only_Women_Plain_Brand_Heart/Only_Women_Plain_Brand_Heart_front_green.jpg",
    110,
    1,
    2,
    1,
    1,
    "tshirt"
),
(
    "Puma Ess Logo Tee",
    "Le Puma Ess Logo Tee est un classique revisité pour un style sportif et décontracté. Confectionné dans un mélange de coton doux, il offre un confort maximal tout au long de la journée. Son logo emblématique imprimé sur la poitrine affirme son identité tout en restant discret. Ce modèle olive est idéal pour les entraînements légers ou pour compléter un look casual. Sa coupe droite et ses finitions précises garantissent une liberté de mouvement sans compromis.",
    22.99,
    "http://localhost:3000/img/tshirts/Puma_Ess_Logo_Tee/Puma_Ess_Logo_Tee_front_olive.jpg",
    64,
    1,
    1,
    0,
    0,
    "tshirt"
),
(
    "The North Face Coat",
    "Inspiré des grands espaces, le t-shirt The North Face Coat est une pièce essentielle pour les amateurs d’aventure au style affirmé. Fabriqué en coton résistant, il allie robustesse et confort. Sa couleur rouge éclatante et son logo iconique évoquent les paysages extrêmes que la marque incarne. Que ce soit pour une randonnée ou une journée urbaine, il vous accompagne avec fiabilité. Sa coupe polyvalente et ses finitions soignées en font un choix à la fois pratique et tendance.",
    27.49,
    "http://localhost:3000/img/tshirts/The_North_Face_Coat/The_North_Face_Coat_front_red.jpg",
    0,
    0,
    1,
    1,
    1,
    "tshirt"
),
(
    "Champion Legacy Basics",
    "Le hoodie Champion Legacy Basics combine l’élégance du noir classique avec un confort inégalé. Fabriqué dans un tissu doux et chaud, il offre une sensation agréable en toute saison. Sa capuche ajustable, sa poche kangourou et ses finitions soignées en font une pièce essentielle pour les amateurs de style urbain. Que ce soit pour une journée relax ou une sortie sportive, il s’adapte à toutes les envies. Fidèle à l’esprit Champion, il incarne la simplicité efficace et l’authenticité.",
    44.99,
    "http://localhost:3000/img/hoodies/Champion_Legacy_Basics/Champion_Legacy_Basics_front_black.jpg",
    75,
    1,
    2,
    0,
    1,
    "hoodie"
),
(
    "Jack & Jones Sweat à Capuche",
    "Le Jack & Jones Sweat à Capuche est une pièce polyvalente qui associe confort et tendance. Son design rouge vif apporte du dynamisme à votre tenue, tandis que son tissu molletonné procure une chaleur agréable pour les journées fraîches. Conçu avec une capuche doublée et une coupe moderne, il est idéal pour un look casual maîtrisé. Facile à associer à un jean ou un pantalon de sport, ce hoodie devient rapidement un indispensable du dressing masculin.",
    39.99,
    "http://localhost:3000/img/hoodies/Jack_&_Jones_Sweat_a_Capuche/Jack_&_Jones_Sweat_a_Capuche_front_red.jpg",
    50,
    1,
    1,
    1,
    0,
    "hoodie"
),
(
    "Karl Lagerfeld Jeans Regular Box",
    "Le hoodie Karl Lagerfeld Jeans Regular Box séduit par son design épuré et élégant. Arborant un noir profond et un logo discret, il incarne le style sobre et raffiné de la marque. Fabriqué en coton doux, il assure un confort optimal au quotidien. Sa coupe regular et ses finitions de qualité en font un vêtement aussi agréable à porter qu’à regarder. Il se porte aussi bien dans un contexte urbain qu’élégant, s’adressant à ceux qui apprécient le style minimaliste et affirmé.",
    59.99,
    "http://localhost:3000/img/hoodies/Karl_Lagerfeld_Jeans_Regular_Box/Karl_Lagerfeld_Jeans_Regular_Box_front_black.jpg",
    33,
    1,
    1,
    0,
    1,
    "hoodie"
),
(
    "Nike M Nk Flc Park20",
    "Le Nike M Nk FLC Park20 est un hoodie de sport pensé pour l'entraînement comme pour les moments de détente. Sa couleur blanche apporte une touche de fraîcheur et de modernité. Conçu dans une matière douce et respirante, il garde la chaleur sans alourdir. Avec sa capuche ajustable, ses poignets côtelés et sa poche avant pratique, il offre une coupe confortable et fonctionnelle. Un must-have signé Nike pour les passionnés de sport et de style minimaliste.",
    49.99,
    "http://localhost:3000/img/hoodies/Nike_M_Nk_Flc_Park20/Nike_M_Nk_Flc_Park20_front_white.jpg",
    120,
    1,
    1,
    1,
    0,
    "hoodie"
),
(
    "Pieces Hoodie Pcchilli LS Heart",
    "Le hoodie Pieces Pcchilli LS Heart est une pièce féminine pleine de douceur et de caractère. Son tissu molletonné garantit chaleur et confort, tandis que sa teinte bleue pastel et son petit motif cœur brodé lui donnent une touche romantique et contemporaine. Parfait pour un style cosy chic, il se marie aussi bien avec un jean qu’avec un legging. Sa capuche pratique et ses détails fins en font un choix idéal pour les journées cocooning ou les sorties décontractées.",
    34.49,
    "http://localhost:3000/img/hoodies/Pieces_Hoodie_Pcchilli_Ls_Heart/Pieces_Hoodie_Pcchilli_Ls_Heart_front_blue.jpg",
    95,
    1,
    2,
    1,
    1,
    "hoodie"
),
(
    "Puma Teamgoal 23 Causals",
    "Pensé pour les amateurs de sport et de confort, le hoodie Puma Teamgoal 23 Causals propose un look sobre et efficace. Sa couleur grise s’accorde avec tout, et son tissu épais assure une bonne isolation thermique. Doté d’une capuche ajustable et d’une poche ventrale spacieuse, il est parfait pour affronter les journées fraîches avec style. Il s’intègre facilement à un look athleisure ou casual. Sa qualité Puma garantit durabilité et confort à chaque usage.",
    42.99,
    "http://localhost:3000/img/hoodies/Puma_Teamgoal_23_Causals/Puma_Teamgoal_23_Causals_front_grey.jpg",
    60,
    1,
    1,
    0,
    0,
    "hoodie"
),
(
    "Joma Championship",
    "Le jogging Joma Championship est conçu pour les sportifs à la recherche de performance et de confort. Avec son tissu respirant et sa coupe ergonomique, il accompagne les mouvements avec fluidité. Sa couleur rouge énergique en fait un vêtement à la fois technique et stylé. Il est doté de poches pratiques et d’une taille élastique ajustable. Parfait pour les entraînements ou les instants de détente, ce pantalon s’adapte à tous les rythmes de vie actifs.",
    34.99,
    "http://localhost:3000/img/joggings/Joma_Championship/Joma_Championship_front_red.jpg",
    45,
    1,
    1,
    1,
    0,
    "jogging"
),
(
    "Nike Team Club",
    "Le Nike Team Club est un jogging moderne qui combine esthétique sportive et grand confort. Confectionné en coton doux mélangé à des fibres techniques, il offre une excellente respirabilité et une coupe fluide. Sa teinte noire classique le rend facile à assortir avec n’importe quel haut. Les poignets élastiques et la taille ajustable assurent un maintien optimal. Idéal pour les échauffements, les sorties ou les journées relax, il s'impose comme un basique de la garde-robe athlétique.",
    44.99,
    "http://localhost:3000/img/joggings/Nike_Team_Club/Nike_Team_Club_front_black.jpg",
    80,
    1,
    2,
    0,
    1,
    "jogging"
),
(
    "Puma Pantalon",
    "Le Puma Pantalon est un jogging gris aux lignes épurées, parfait pour ceux qui recherchent à la fois praticité et style. Sa matière souple et légèrement extensible permet une grande liberté de mouvement, idéale pour les séances de sport comme pour les instants cocooning. Doté d’une ceinture réglable et de poches latérales, il assure confort et fonctionnalité au quotidien. Sa sobriété et sa qualité de fabrication en font un allié de choix en toutes circonstances.",
    38.49,
    "http://localhost:3000/img/joggings/Puma_Pantalon/Puma_Pantalon_front_grey.jpg",
    100,
    1,
    1,
    0,
    0,
    "jogging"
),
(
    "Ross Camp",
    "Le jogging Ross Camp est un pantalon décontracté pensé pour le confort sans négliger le style. Sa coupe droite et fluide, associée à une matière douce, permet une aisance de mouvement appréciée aussi bien à la maison qu’en extérieur. Sa teinte rouge apporte une touche d’originalité tout en restant sobre. Il dispose de poches pratiques et d’une taille élastique pour un ajustement parfait. C’est un essentiel pour les journées cool ou les escapades sportives.",
    29.99,
    "http://localhost:3000/img/joggings/Ross_Camp/Ross_Camp_front_red.jpg",
    58,
    1,
    2,
    1,
    1,
    "jogging"
),
(
    "Adidas Essentials Fleece Regular",
    "Le jogging Adidas Essentials Fleece Regular est conçu pour offrir un confort absolu au quotidien. Fabriqué en molleton doux, il garantit chaleur et douceur tout au long de la journée. Sa coupe regular s’adapte à toutes les morphologies, tandis que sa taille élastique avec cordon assure un ajustement parfait. Idéal pour les journées détente ou les sorties sportives, ce pantalon allie praticité et style épuré avec les finitions classiques de la marque Adidas.",
    39.99,
    "http://localhost:3000/img/joggings/Adidas_Essentials_Fleece_Regular/Adidas_Essentials_Fleece_Regular_front_black.jpg",
    100,
    1,
    1,
    1,
    1,
    "jogging"
),
(
    "Jogging Homme Pantalon Baggy",
    "Confort et style s’unissent dans le Jogging Homme Pantalon Baggy. Ce modèle au look décontracté est confectionné dans un tissu doux et résistant, idéal pour un usage quotidien ou pour se détendre à la maison. Sa coupe ample baggy assure une grande liberté de mouvement, tandis que ses poches pratiques et sa taille ajustable apportent une fonctionnalité appréciable. Disponible en plusieurs coloris sobres et modernes, ce jogging deviendra vite un incontournable de votre garde-robe urbaine.",
    29.99,
    "http://localhost:3000/img/joggings/Jogging_Homme_Pantalon_Baggy/Jogging_Homme_Pantalon_Baggy_front_blue.jpg",
    100,
    1,
    1,
    0,
    0,
    "jogging"
);


-- Couleurs associées aux produits
INSERT INTO color_product (product_id, color_id, front_img, back_img)
VALUES
-- 1. Nike Park Vii Jersey
(1, 4,"http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_front_purple.jpg","http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_back_purple.jpg"),
(1, 8, "http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_front_blue.jpg","http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_back_blue.jpg"),
(1, 6, "http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_front_green.jpg","http://localhost:3000/img/tshirts/Nike_Park_Vii_Jersey/Nike_Park_Vii_Jersey_back_green.jpg"),

-- 2. Jack & Jones Jjecorp
(2, 5, "http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_front_orange.jpg", "http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_back_orange.jpg"),
(2, 6, "http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_front_green.jpg", "http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_back_green.jpg"),
(2, 7, "http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_front_grey.jpg", "http://localhost:3000/img/tshirts/Jack_&_Jones_Jjecorp/Jack_&_Jones_Jjecorp_back_grey.jpg"),

-- 3. Build Your Brand Ladies
(3, 1, "http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_front_black.jpg", "http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_back_black.jpg"),
(3, 2, "http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_front_white.jpg", "http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_back_white.jpg"),
(3, 3, "http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_front_olive.jpg", "http://localhost:3000/img/tshirts/Build_Your_Brand_Ladies/Build_Your_Brand_Ladies_back_olive.jpg"),
    
-- 4. Champion Legacy
(4, 8, "http://localhost:3000/img/tshirts/Champion_Legacy/Champion_Legacy_front_blue.jpg", "http://localhost:3000/img/tshirts/Champion_Legacy/Champion_Legacy_back_blue.jpg"),
(4, 7, "http://localhost:3000/img/tshirts/Champion_Legacy/Champion_Legacy_front_grey.jpg", "http://localhost:3000/img/tshirts/Champion_Legacy/Champion_Legacy_back_grey.jpg"),
(4, 2, "http://localhost:3000/img/tshirts/Champion_Legacy/Champion_Legacy_front_white.jpg", "http://localhost:3000/img/tshirts/Champion_Legacy/Champion_Legacy_back_white.jpg"),

-- 5. Levi's Luca Slime
(5, 1, "http://localhost:3000/img/tshirts/Levi's_Luca_Slime/Levi's_Luca_Slime_front_black.jpg", "http://localhost:3000/img/tshirts/Levi's_Luca_Slime/Levi's_Luca_Slime_back_black.jpg"),
(5, 2, "http://localhost:3000/img/tshirts/Levi's_Luca_Slime/Levi's_Luca_Slime_front_white.jpg", "http://localhost:3000/img/tshirts/Levi's_Luca_Slime/Levi's_Luca_Slime_back_white.jpg"),

-- 6. Only Women Plain Brand Heart
(6, 8, "http://localhost:3000/img/tshirts/Only_Women_Plain_Brand_Heart/Only_Women_Plain_Brand_Heart_front_blue.jpg", "http://localhost:3000/img/tshirts/Only_Women_Plain_Brand_Heart/Only_Women_Plain_Brand_Heart_back_blue.jpg"),
(6, 1, "http://localhost:3000/img/tshirts/Only_Women_Plain_Brand_Heart/Only_Women_Plain_Brand_Heart_front_black.jpg", "http://localhost:3000/img/tshirts/Only_Women_Plain_Brand_Heart/Only_Women_Plain_Brand_Heart_back_black.jpg"),
(6, 6, "http://localhost:3000/img/tshirts/Only_Women_Plain_Brand_Heart/Only_Women_Plain_Brand_Heart_front_green.jpg", "http://localhost:3000/img/tshirts/Only_Women_Plain_Brand_Heart/Only_Women_Plain_Brand_Heart_back_green.jpg"),
(6, 12, "http://localhost:3000/img/tshirts/Only_Women_Plain_Brand_Heart/Only_Women_Plain_Brand_Heart_front_pink.jpg", "http://localhost:3000/img/tshirts/Only_Women_Plain_Brand_Heart/Only_Women_Plain_Brand_Heart_back_pink.jpg"),

-- 7. Puma Ess Logo Tee
(7, 8, "http://localhost:3000/img/tshirts/Puma_Ess_Logo_Tee/Puma_Ess_Logo_Tee_front_blue.jpg", "http://localhost:3000/img/tshirts/Puma_Ess_Logo_Tee/Puma_Ess_Logo_Tee_back_blue.jpg"),
(7, 3, "http://localhost:3000/img/tshirts/Puma_Ess_Logo_Tee/Puma_Ess_Logo_Tee_front_olive.jpg", "http://localhost:3000/img/tshirts/Puma_Ess_Logo_Tee/Puma_Ess_Logo_Tee_back_olive.jpg"),
(7, 1, "http://localhost:3000/img/tshirts/Puma_Ess_Logo_Tee/Puma_Ess_Logo_Tee_front_black.jpg", "http://localhost:3000/img/tshirts/Puma_Ess_Logo_Tee/Puma_Ess_Logo_Tee_back_black.jpg"),

-- 8. The North Face Coat
(8, 1, "http://localhost:3000/img/tshirts/The_North_Face_Coat/The_North_Face_Coat_front_black.jpg", "http://localhost:3000/img/tshirts/The_North_Face_Coat/The_North_Face_Coat_back_black.jpg"),
(8, 9, "http://localhost:3000/img/tshirts/The_North_Face_Coat/The_North_Face_Coat_front_red.jpg", "http://localhost:3000/img/tshirts/The_North_Face_Coat/The_North_Face_Coat_back_red.jpg"),
(8, 7, "http://localhost:3000/img/tshirts/The_North_Face_Coat/The_North_Face_Coat_front_grey.jpg", "http://localhost:3000/img/tshirts/The_North_Face_Coat/The_North_Face_Coat_back_grey.jpg"),

-- 9. Champion Legacy Basics
(9, 1, "http://localhost:3000/img/hoodies/Champion_Legacy_Basics/Champion_Legacy_Basics_front_black.jpg", "http://localhost:3000/img/hoodies/Champion_Legacy_Basics/Champion_Legacy_Basics_back_black.jpg"),
(9, 7, "http://localhost:3000/img/hoodies/Champion_Legacy_Basics/Champion_Legacy_Basics_front_grey.jpg", "http://localhost:3000/img/hoodies/Champion_Legacy_Basics/Champion_Legacy_Basics_back_grey.jpg"),

-- 10. Jack & Jones Sweat à Capuche
(10, 1, "http://localhost:3000/img/hoodies/Jack_&_Jones_Sweat_a_Capuche/Jack_&_Jones_Sweat_a_Capuche_front_black.jpg", "http://localhost:3000/img/hoodies/Jack_&_Jones_Sweat_a_Capuche/Jack_&_Jones_Sweat_a_Capuche_back_black.jpg"),
(10, 9, "http://localhost:3000/img/hoodies/Jack_&_Jones_Sweat_a_Capuche/Jack_&_Jones_Sweat_a_Capuche_front_red.jpg", "http://localhost:3000/img/hoodies/Jack_&_Jones_Sweat_a_Capuche/Jack_&_Jones_Sweat_a_Capuche_back_red.jpg"),
(10, 8, "http://localhost:3000/img/hoodies/Jack_&_Jones_Sweat_a_Capuche/Jack_&_Jones_Sweat_a_Capuche_front_blue.jpg", "http://localhost:3000/img/hoodies/Jack_&_Jones_Sweat_a_Capuche/Jack_&_Jones_Sweat_a_Capuche_back_blue.jpg"),

-- 11. Karl Lagerfeld Jeans Regular Box
(11, 1, "http://localhost:3000/img/hoodies/Karl_Lagerfeld_Jeans_Regular_Box/Karl_Lagerfeld_Jeans_Regular_Box_front_black.jpg", "http://localhost:3000/img/hoodies/Karl_Lagerfeld_Jeans_Regular_Box/Karl_Lagerfeld_Jeans_Regular_Box_back_black.jpg"),
(11, 11, "http://localhost:3000/img/hoodies/Karl_Lagerfeld_Jeans_Regular_Box/Karl_Lagerfeld_Jeans_Regular_Box_front_brown.jpg", "http://localhost:3000/img/hoodies/Karl_Lagerfeld_Jeans_Regular_Box/Karl_Lagerfeld_Jeans_Regular_Box_back_brown.jpg"),

-- 12. Nike M Nk Flc Park20
(12, 1, "http://localhost:3000/img/hoodies/Nike_M_Nk_Flc_Park20/Nike_M_Nk_Flc_Park20_front_black.jpg", "http://localhost:3000/img/hoodies/Nike_M_Nk_Flc_Park20/Nike_M_Nk_Flc_Park20_back_black.jpg"),
(12, 9, "http://localhost:3000/img/hoodies/Nike_M_Nk_Flc_Park20/Nike_M_Nk_Flc_Park20_front_red.jpg", "http://localhost:3000/img/hoodies/Nike_M_Nk_Flc_Park20/Nike_M_Nk_Flc_Park20_back_red.jpg"),
(12, 2, "http://localhost:3000/img/hoodies/Nike_M_Nk_Flc_Park20/Nike_M_Nk_Flc_Park20_front_white.jpg", "http://localhost:3000/img/hoodies/Nike_M_Nk_Flc_Park20/Nike_M_Nk_Flc_Park20_back_white.jpg"),

-- 13. Pieces Hoodie Pcchilli LS Heart
(13, 1, "http://localhost:3000/img/hoodies/Pieces_Hoodie_Pcchilli_Ls_Heart/Pieces_Hoodie_Pcchilli_Ls_Heart_front_black.jpg", "http://localhost:3000/img/hoodies/Pieces_Hoodie_Pcchilli_Ls_Heart/Pieces_Hoodie_Pcchilli_Ls_Heart_back_black.jpg"),
(13, 8, "http://localhost:3000/img/hoodies/Pieces_Hoodie_Pcchilli_Ls_Heart/Pieces_Hoodie_Pcchilli_Ls_Heart_front_blue.jpg", "http://localhost:3000/img/hoodies/Pieces_Hoodie_Pcchilli_Ls_Heart/Pieces_Hoodie_Pcchilli_Ls_Heart_back_blue.jpg"),
(13, 2, "http://localhost:3000/img/hoodies/Pieces_Hoodie_Pcchilli_Ls_Heart/Pieces_Hoodie_Pcchilli_Ls_Heart_front_white.jpg", "http://localhost:3000/img/hoodies/Pieces_Hoodie_Pcchilli_Ls_Heart/Pieces_Hoodie_Pcchilli_Ls_Heart_back_white.jpg"),

-- 14. Puma Teamgoal 23 Causals
(14, 1, "http://localhost:3000/img/hoodies/Puma_Teamgoal_23_Causals/Puma_Teamgoal_23_Causals_front_black.jpg", "http://localhost:3000/img/hoodies/Puma_Teamgoal_23_Causals/Puma_Teamgoal_23_Causals_back_black.jpg"),
(14, 8, "http://localhost:3000/img/hoodies/Puma_Teamgoal_23_Causals/Puma_Teamgoal_23_Causals_front_blue.jpg", "http://localhost:3000/img/hoodies/Puma_Teamgoal_23_Causals/Puma_Teamgoal_23_Causals_back_blue.jpg"),
(14, 7, "http://localhost:3000/img/hoodies/Puma_Teamgoal_23_Causals/Puma_Teamgoal_23_Causals_front_grey.jpg", "http://localhost:3000/img/hoodies/Puma_Teamgoal_23_Causals/Puma_Teamgoal_23_Causals_back_grey.jpg"),
(14, 9, "http://localhost:3000/img/hoodies/Puma_Teamgoal_23_Causals/Puma_Teamgoal_23_Causals_front_red.jpg", "http://localhost:3000/img/hoodies/Puma_Teamgoal_23_Causals/Puma_Teamgoal_23_Causals_back_red.jpg"),

-- 15. Joma Championship
(15, 9, "http://localhost:3000/img/joggings/Joma_Championship/Joma_Championship_front_red.jpg", "http://localhost:3000/img/joggings/Joma_Championship/Joma_Championship_back_red.jpg"),
(15, 10, "http://localhost:3000/img/joggings/Joma_Championship/Joma_Championship_front_yellow.jpg", "http://localhost:3000/img/joggings/Joma_Championship/Joma_Championship_back_yellow.jpg"),

-- 16. Nike Team Club
(16, 1, "http://localhost:3000/img/joggings/Nike_Team_Club/Nike_Team_Club_front_black.jpg", "http://localhost:3000/img/joggings/Nike_Team_Club/Nike_Team_Club_back_black.jpg"),
(16, 8, "http://localhost:3000/img/joggings/Nike_Team_Club/Nike_Team_Club_front_blue.jpg", "http://localhost:3000/img/joggings/Nike_Team_Club/Nike_Team_Club_back_blue.jpg"),
(16, 7, "http://localhost:3000/img/joggings/Nike_Team_Club/Nike_Team_Club_front_grey.jpg", "http://localhost:3000/img/joggings/Nike_Team_Club/Nike_Team_Club_back_grey.jpg"),

-- 17. Puma Pantalon
(17, 1, "http://localhost:3000/img/joggings/Puma_Pantalon/Puma_Pantalon_front_black.jpg", "http://localhost:3000/img/joggings/Puma_Pantalon/Puma_Pantalon_back_black.jpg"),
(17, 7, "http://localhost:3000/img/joggings/Puma_Pantalon/Puma_Pantalon_front_grey.jpg", "http://localhost:3000/img/joggings/Puma_Pantalon/Puma_Pantalon_back_grey.jpg"),

-- 18. Ross Camp
(18, 1, "http://localhost:3000/img/joggings/Ross_Camp/Ross_Camp_front_black.jpg", "http://localhost:3000/img/joggings/Ross_Camp/Ross_Camp_back_black.jpg"),
(18, 7, "http://localhost:3000/img/joggings/Ross_Camp/Ross_Camp_front_grey.jpg", "http://localhost:3000/img/joggings/Ross_Camp/Ross_Camp_back_grey.jpg"),
(18, 9, "http://localhost:3000/img/joggings/Ross_Camp/Ross_Camp_front_red.jpg", "http://localhost:3000/img/joggings/Ross_Camp/Ross_Camp_back_red.jpg"),

-- 19. Adidas Essentials Fleece Regular
(19, 1, "http://localhost:3000/img/joggings/Adidas_Essentials_Fleece_Regular/Adidas_Essentials_Fleece_Regular_front_black.jpg", "http://localhost:3000/img/joggings/Adidas_Essentials_Fleece_Regular/Adidas_Essentials_Fleece_Regular_back_black.jpg"),
(19, 4, "http://localhost:3000/img/joggings/Adidas_Essentials_Fleece_Regular/Adidas_Essentials_Fleece_Regular_front_purple.jpg", "http://localhost:3000/img/joggings/Adidas_Essentials_Fleece_Regular/Adidas_Essentials_Fleece_Regular_back_purple.jpg"),

-- 20. Jogging Homme Pantalon Baggy
(20, 8, "http://localhost:3000/img/joggings/Jogging_Homme_Pantalon_Baggy/Jogging_Homme_Pantalon_Baggy_front_blue.jpg", "http://localhost:3000/img/joggings/Jogging_Homme_Pantalon_Baggy/Jogging_Homme_Pantalon_Baggy_back_blue.jpg"),
(20, 7, "http://localhost:3000/img/joggings/Jogging_Homme_Pantalon_Baggy/Jogging_Homme_Pantalon_Baggy_front_grey.jpg", "http://localhost:3000/img/joggings/Jogging_Homme_Pantalon_Baggy/Jogging_Homme_Pantalon_Baggy_back_grey.jpg");

-- Tailles associées aux produits
INSERT INTO size_product (product_id, size_id)
VALUES
-- 1. Nike Park Vii Jersey
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),

-- 2. Jack & Jones Jjecorp
(2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6),

-- 3. Build Your Brand Ladies
(3, 1), (3, 2), (3, 3), (3, 4), (3, 5),

-- 4. Champion Legacy
(4, 2), (4, 3), (4, 4), (4, 5), (4, 6),

-- 5. Levi's Luca Slime
(5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6),

-- 6. Only Women Plain Brand Heart
(6, 2), (6, 3), (6, 4), (6, 5),

-- 7. Puma Ess Logo Tee
(7, 3), (7, 4), (7, 5), (7, 6), (7, 7),

-- 8. The North Face Coat
(8, 2), (8, 3), (8, 4), (8, 5), (8, 6), (8, 7), (8, 8),

-- 9. Champion Legacy Basics
(9, 3), (9, 4), (9, 5), (9, 6),

-- 10. Jack & Jones Sweat à Capuche
(10, 1), (10, 2), (10, 3), (10, 4), (10, 5), (10, 6), (10, 7),

-- 11. Karl Lagerfeld Jeans Regular Box
(11, 2), (11, 3), (11, 4), (11, 5), (11, 6),

-- 12. Nike M Nk Flc Park20
(12, 1), (12, 2), (12, 3), (12, 4), (12, 5),

-- 13. Pieces Hoodie Pcchilli LS Heart
(13, 2), (13, 3), (13, 4), (13, 5), (13, 6),

-- 14. Puma Teamgoal 23 Causals
(14, 1), (14, 2), (14, 3), (14, 4), (14, 5), (14, 6), (14, 7),

-- 15. Joma Championship
(15, 3), (15, 4), (15, 5), (15, 6), (15, 7),

-- 16. Nike Team Club
(16, 2), (16, 3), (16, 4), (16, 5), (16, 6),

-- 17. Puma Pantalon
(17, 1), (17, 2), (17, 3), (17, 4), (17, 5), (17, 6),

-- 18. Ross Camp
(18, 3), (18, 4), (18, 5), (18, 6), (18, 7),

-- 19. Adidas Essentials Fleece Regular
(19, 2), (19, 3), (19, 4), (19, 5), (19, 6),

-- 20. Jogging Homme Pantalon Baggy
(20, 1), (20, 2), (20, 3), (20, 4), (20, 5), (20, 6);