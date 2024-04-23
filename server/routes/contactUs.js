const express = require('express');
const { query } = require('../helpers/db.js');

const contactUsRouter = express.Router();

contactUsRouter.post("/contactUs", async (req, res) => {
    try {
        const code = 'INSERT INTO inquiry(first_name, last_name, email, company, country, phone, message) VALUES($1, $2, $3, $4, $5, $6, $7)';
        const result = await query(code, [req.body.first_name, req.body.last_name, req.body.email, req.body.company, req.body.country, req.body.phone, req.body.message]);
        res.status(200).json();
    } catch (error) {
        res.statusMessage = error;
        res.status(500).json({error: error});
    }
});


module.exports = { contactUsRouter };