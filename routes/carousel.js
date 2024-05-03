const express = require('express')
const { query } = require('../helpers/db.js')

const carouselRouter = express.Router()

carouselRouter.get("/carousel",async(req,res) => {
    try{
        const result = await query('SELECT * FROM categories ORDER BY random() Limit 9');
        const rows = result.rows ? result.rows : []
        res.status(200).json(rows)
    }catch(error){
        res.statusMessage = error
        res.status(500).json({error:error})
    }
})

module.exports = {carouselRouter}