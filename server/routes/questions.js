const express = require('express')
const { query } = require('../helpers/db.js')

const questionsRouter = express.Router()

questionsRouter.get("/questions",async(req,res) => {
    try{
        const category = req.query.category; 
        const code = 'SELECT * FROM questions WHERE category = $1 order by random() LIMIT 10'; 
        const result = await query(code, [category]);
        const rows = result.rows ? result.rows : []
        res.status(200).json(rows)
    }catch(error){
        res.statusMessage = error
        res.status(500).json({error:error})
    }
})

questionsRouter.get("/categories",async(req,res) => {
    try{
        const result = await query('select cate_name from categories')
        const rows = result.rows ? result.rows : []
        res.status(200).json(rows)
    }catch(error){
        res.statusMessage = error
        res.status(500).json({error:error})
    }
})

module.exports = {questionsRouter}
