const pool = require("../../config/db");

class Product {
  static async getAllProduct() {
    try {
      const query = `
      SELECT p.product_id, p.name, p.description, p.price, p.default_img, p.quantity, p.available, p.novelty, g.name AS gender FROM products AS p
      JOIN genders AS g ON p.gender_id = g.gender_id
      `;
      const [results] = await pool.query(query);
      return results;
    } catch (error) {
      console.log("Error when you get product by id :", error);
      throw error;
    }
  }

  static async getProductById(id) {
    try {
      const query = `
      SELECT p.product_id, p.name, p.description, p.price, p.default_img, p.quantity, p.available FROM products AS p 
      WHERE p.product_id = ?`;
      const [results] = await pool.query(query, [id]);
      return results[0];
    } catch (error) {
      console.log("Error when you get product by id :", error);
      throw error;
    }
  }

  static async getProductColorById(id) {
    try {
      const query = `
      SELECT c.name AS color, c.hexa_code, cp.front_img, cp.back_img FROM products AS p
      JOIN color_product AS cp ON p.product_id = cp.product_id
      JOIN colors AS c ON cp.color_id = c.color_id
      WHERE p.product_id = ?`;
      const [results] = await pool.query(query, [id]);
      return results;
    } catch (error) {
      console.error("Error", error);
      throw error;
    }
  }

  static async getProductSizeById(id) {
    try {
      const query = `
      SELECT s.name FROM products AS p
      JOIN size_product AS sp ON p.product_id = sp.product_id
      JOIN sizes AS s ON sp.size_id = s.size_id
      WHERE p.product_id = ?`;
      const [results] = await pool.query(query, [id]);
      return results;
    } catch (error) {
      console.error("Error", error);
      throw error;
    }
  }

  static async getProductGenderById(id) {
    try {
      const query = `
      SELECT g.name FROM products AS P
      JOIN genders AS g ON p.gender_id = g.gender_id
      WHERE p.product_id = ?`;
      const [results] = await pool.query(query, [id]);
      return results;
    } catch (error) {
      console.error("Error", error);
      throw error;
    }
  }
}

module.exports = Product;
