const express = require('express');
const { query } = require('../helpers/db.js');

const contactUsRouter = express.Router();

contactUsRouter.post("/contactUs", async (req, res) => {
    try {
        const code = 'INSERT INTO inquiry(full_name, email, phone, subject, message) VALUES($1, $2, $3, $4, $5)';
        const result = await query(code, [req.body.full_name, req.body.email, req.body.phone, req.body.subject, req.body.message]);
        res.status(200).json();
    } catch (error) {
        res.statusMessage = error;
        res.status(500).json({error: error});
    }
});


module.exports = { contactUsRouter };