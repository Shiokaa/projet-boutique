# 🛍️ Projet Boutique

Bienvenue dans **Projet Boutique**, un site e-commerce fictif exploitant une API développée en **Node.js** et une base de données **MySQL**.  
L’objectif est de proposer une boutique en ligne complète et fonctionnelle pour un usage pédagogique ou démonstratif.

---

## ✨ Fonctionnalités principales

- 📦 **Affichage des produits**
- 🔍 **Recherche par mots-clés**
- 🧼 **Filtrage dynamique des produits**
- 📄 **Page détaillée pour chaque produit**
- 🧑‍💻 **Inscription et connexion des utilisateurs**
- ⭐ **Ajout de produits aux favoris**
- 🧭 **Navigation fluide et ergonomique**

---

## ⚙️ Installation

### 📋 Prérequis

Assurez-vous d’avoir les éléments suivants installés sur votre machine :

- [Node.js](https://nodejs.org/) (version récente recommandée)
- [Git](https://git-scm.com/)
- Un navigateur web moderne
- Un environnement de base de données SQL (ex : **XAMPP** ou **WAMP**)

---

### 🚀 Étapes d'installation

1. **Cloner le dépôt :**

```bash
git clone https://github.com/Shiokaa/projet-boutique.git
```

2. **Ouvrir un terminal dans le dossier du projet**
   <br>

3. **Installer les dépendances du backend :**

```bash
cd src
npm install
```

4. **Démarrer Apache et MySQL via XAMPP (ou équivalent)**
   <br>
   
5. **Initialiser la base de données :**

- Ouvrir le fichier migrations.sql situé dans src/database/migrations
- Copier son contenu et l’exécuter dans PhpMyAdmin ou un autre outil SQL

6. **Ajouter les données (produits, tailles, couleurs, etc.) :**

- Ouvrir le fichier insertions.sql situé dans src/database/insertions
- Copier son contenu et l’exécuter dans le même script SQL

7. **Lancer le serveur backend en local :**

```bash
npm start
```

8. **Lancer le frontend :**
- Aller sur le navigateur à l'url suivant : http://localhost:3000/home

---

## 🛠️ Technologies utilisées
- 🖥 Backend : Node.js + Express

- 🌐 Frontend : HTML / CSS / JavaScript

- 💽 Base de données : MySQL

---

# ✅ Conclusion
Ce projet met en œuvre une API RESTful en Node.js connectée à une base de données SQL pour créer une boutique en ligne.
Il comprend les principales fonctionnalités d’un site e-commerce classique, avec une architecture simple, claire et efficace.
