CREATE DATABASE IF NOT EXISTS `projet-boutique_db`;

USE `projet-boutique_db`;

CREATE TABLE genders (
   gender_id INT AUTO_INCREMENT,
   name VARCHAR(255),
   PRIMARY KEY(gender_id)
);

CREATE TABLE products (
   product_id INT AUTO_INCREMENT,
   name VARCHAR(255) NOT NULL,
   description VARCHAR(500) NOT NULL,
   price DECIMAL(15,2) NOT NULL,
   default_img VARCHAR(255) NOT NULL,
   quantity INT,
   available BOOLEAN NOT NULL,
   gender_id INT,
   novelty BOOLEAN NOT NULL,
   iconic BOOLEAN NOT NULL,
   categorie VARCHAR(255) NOT NULL,
   PRIMARY KEY(product_id),
   FOREIGN KEY(gender_id) REFERENCES genders(gender_id)
);

CREATE TABLE colors (
   color_id INT AUTO_INCREMENT,
   name VARCHAR(255) NOT NULL,
   hexa_code VARCHAR(50) NOT NULL,
   PRIMARY KEY(color_id)
);

CREATE TABLE sizes (
   size_id INT AUTO_INCREMENT,
   name VARCHAR(50) NOT NULL,
   PRIMARY KEY(size_id)
);

CREATE TABLE color_product (
   product_id INT,
   color_id INT,
   front_img VARCHAR(255) NOT NULL,
   back_img VARCHAR(255) NOT NULL,
   PRIMARY KEY(product_id, color_id),
   FOREIGN KEY(product_id) REFERENCES products(product_id),
   FOREIGN KEY(color_id) REFERENCES colors(color_id)
);

CREATE TABLE size_product (
   product_id INT,
   size_id INT,
   PRIMARY KEY(product_id, size_id),
   FOREIGN KEY(product_id) REFERENCES products(product_id),
   FOREIGN KEY(size_id) REFERENCES sizes(size_id)
);
