const express = require('express');
const { query } = require('../helpers/db.js');

const profileRouter = express.Router();

/// Get user profile
// Define route to handle GET requests for retrieving user details by ID
  profileRouter.get("/profile/:id", async (req, res) => {
    try {
      const userId = parseInt(req.params.id);
  
      // Check if userId is a valid integer
      if (isNaN(userId)) {
        return res.status(400).json({ error: 'Invalid user ID' });
      }
  
      // Query database to retrieve user details by ID
      const sql = `SELECT * FROM userinfo WHERE id = $1`;
      const result = await query(sql, [userId]);
  
      // Check if user exists
      if (result.rows.length === 0) {
        return res.status(404).json({ error: 'User not found' });
      }
  
      // User found, send user details in response
      const user = result.rows[0]; // Assuming only one user is returned
      res.status(200).json(user);
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: 'Internal server error' });
    }
  });
  
  
//new
// Add a new user
profileRouter.post("/new", async (req, res) => {
  try {
    const { firstname, lastname, phone, email, password } = req.body;

    // Check if all required fields are provided
    if (!firstname || !lastname || !phone || !email || !password) {
      return res.status(400).json({ error: 'Missing required fields' });
    }

    const sql = `INSERT INTO userinfo (firstname, lastname, phone, email, password) VALUES ($1, $2, $3, $4, $5)`;

    // Pass the values to replace placeholders
    const result = await query(sql, [firstname, lastname, phone, email, password]);
    res.status(200).json({ message: 'User added successfully' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal server error' });
  }
});
 
    module.exports = {
        profileRouter
      };