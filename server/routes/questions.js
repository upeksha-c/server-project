const express = require('express')
const { query } = require('../helpers/db.js')

const questionsRouter = express.Router()

questionsRouter.get("/",async(req,res) => {
    try{
        const result = await query('select * from questions')
        const rows = result.rows ? result.rows : []
        res.status(200).json(rows)
    }catch(error){
        res.statusMessage = error
        res.status(500).json({error:error})
    }
})

module.exports = {questionsRouter}
