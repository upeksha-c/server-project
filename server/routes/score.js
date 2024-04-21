const express = require('express')
const { query } = require('../helpers/db.js')

const scoreRouter = express.Router()

scoreRouter.post("/score",async(req,res) => {
    try{
        const code = 'INSERT INTO score(id_user,id_category,score) VALUES($1,$2,$3)'; 
        const result = await query(code, [req.body.id_user,req.body.id_category,req.body.score]);
        res.status(200).json()
    }catch(error){
        res.statusMessage = error
        res.status(500).json({error:error})
    }
})

module.exports = {scoreRouter}
