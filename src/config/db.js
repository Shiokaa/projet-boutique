const mysql = require("mysql2/promise");

const pool = mysql.createPool({
  host: "localhost",
  user: "root",
  database: "projet-boutique_db",
  connectionLimit: 10,
  queueLimit: 0,
});

// Test de connexion à la base de données
pool
  .getConnection()
  .then((connection) => {
    console.log("Connecté à la base de données !");
    connection.release();
  })
  .catch((error) => {
    console.log("Erreur de connexion à la base de données :", error);
  });

module.exports = pool;
