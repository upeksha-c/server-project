const express = require('express') //imports the Express.js framework
const { query } = require('../helpers/db.js') //imports the query from db.js which is in helpers folder

const fbRouter = express.Router() //handle routing for the feedback-related endpoints

fbRouter.post("/feedback",async(req,res) => { //route handler for POST requests to the "/feedback" endpoint
  try {
    const sql = "insert into feedback (user_id , feedback_text, satisfaction_rating ) values ($1,$2,$3) returning id_feedback"
    const result = await query(sql,[req.body.user_id,req.body.feedback_text, req.body.satisfaction_rating])
    res.status(200).json({id_feedback: result.rows[0].id_feedback}) 
  } catch (error) {
    res.statusMessage = error
    res.status(500).json({error: error})
  }
})

fbRouter.get("/feedback",async(req,res) => {
  try{
      const result = await query("SELECT feedback.feedback_text, CONCAT(userinfo.firstname, ' ', userinfo.lastname) AS fullname, feedback.satisfaction_rating FROM feedback INNER JOIN userinfo ON feedback.user_id = userinfo.id ORDER BY random() LIMIT 3");
      const rows = result.rows ? result.rows : []
      res.status(200).json(rows)
  }catch(error){
      res.statusMessage = error
      res.status(500).json({error:error})
  }
})

fbRouter.get("/feedback/pic",async(req,res) => {
  try{
      const result = await query("SELECT image FROM feedbackPhoto ORDER BY random() LIMIT 3");
      const rows = result.rows ? result.rows : []
      res.status(200).json(rows)
  }catch(error){
      res.statusMessage = error
      res.status(500).json({error:error})
  }
})

module.exports = {
  fbRouter
}