CREATE DATABASE IF NOT EXISTS `projet-boutique_db`;

USE `projet-boutique_db`;

CREATE TABLE genders (
   gender_id INT AUTO_INCREMENT,
   name VARCHAR(255),
   PRIMARY KEY(gender_id)
);

CREATE TABLE customers (
   customer_id INT AUTO_INCREMENT,
   name VARCHAR(255) NOT NULL,
   password VARCHAR(255) NOT NULL,
   created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
   updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY(customer_id)
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
   PRIMARY KEY(product_id),
   FOREIGN KEY(gender_id) REFERENCES genders(gender_id)
);

CREATE TABLE images (
   image_id INT AUTO_INCREMENT,
   path VARCHAR(255) NOT NULL,
   product_id INT NOT NULL,
   PRIMARY KEY(image_id),
   FOREIGN KEY(product_id) REFERENCES products(product_id)
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

CREATE TABLE addresses (
   address_id INT AUTO_INCREMENT,
   street VARCHAR(255) NOT NULL,
   complement VARCHAR(50),
   city VARCHAR(50),
   postcode VARCHAR(50),
   country VARCHAR(50),
   is_default BOOLEAN DEFAULT 0,
   customer_id INT NOT NULL,
   PRIMARY KEY(address_id),
   FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE commands (
   command_id INT AUTO_INCREMENT,
   created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
   updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   customer_id INT NOT NULL,
   PRIMARY KEY(command_id),
   FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE favorites (
   customer_id INT NOT NULL,
   product_id INT NOT NULL,
   created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY(customer_id, product_id),
   FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
   FOREIGN KEY(product_id) REFERENCES products(product_id)
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

CREATE TABLE command_product (
   product_id INT,
   command_id INT,
   quantity INT,
   PRIMARY KEY(product_id, command_id),
   FOREIGN KEY(product_id) REFERENCES products(product_id),
   FOREIGN KEY(command_id) REFERENCES commands(command_id)
);
