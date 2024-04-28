const express = require('express');
const { query } = require('../helpers/db.js');
const bcrypt = require('bcrypt');
const fileUpload = require('express-fileupload');

const userRouter = express.Router();

userRouter.get("/", async (req, res) => {
  try {
    const sql = "SELECT * FROM userinfo";
    const result = await query(sql);
    res.status(200).json(result.rows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

userRouter.get("/user", async (req, res) => {
  try {
    const sql = "SELECT * FROM userinfo WHERE id = $1";
    const result = await query(sql, [req.params.id]);
    if (result.rowCount === 1) {
      res.status(200).json(result.rows[0]);
    } else {
      res.status(404).json({ error: 'User not found' });
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

userRouter.get("/profile/:id", async (req, res) => {
  try {
    const queryResult = await query('SELECT * FROM userinfo WHERE id = $1', [req.params.id]);
    console.log(queryResult);
    if (queryResult.rows.length === 0) {
      return res.status(404).json({ error: 'User not found' });
    }
    res.status(200).json(queryResult.rows[0]);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});


userRouter.post("/login", async (req, res) => {
  try {
    const sql = "SELECT * FROM userinfo WHERE email = $1";
    const result = await query(sql, [req.body.email]);
    if (result.rowCount === 1) {
      const user = result.rows[0];
      if (bcrypt.compareSync(req.body.password, user.password)) {
        res.status(200).json({ id: user.id, email: user.email, firstname: user.firstname, lastname: user.lastname, phone: user.phone});
      } else {
        res.status(401).json({ error: 'Invalid login' });
      }
    } else {
      res.status(401).json({ error: 'Invalid login' });
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});


userRouter.post("/register",async(req,res) => {
  let file_name = ""
  try {
    if (req.files) {
      const file = req.files.image
      file_name = file.name
      const uploadPath = `./public/images/${file_name}`
      file.mv(uploadPath,(err) => {
        if (err) {
          throw new Error(err)
        }
      })
    }

    bcrypt.hash(req.body.password,10,async (err,hash) => {
      if (!err) {
        const sql = "insert into userinfo (firstname, lastname, phone, email, image_name, password) values ($1,$2,$3,$4,$5,$6) returning *"
        const result = await query(sql,[req.body.firstname,req.body.lastname,req.body.phone,req.body.email,file_name,hash])
        res.status(200).json(result.rows[0]) 
      } else {
        throw new Error(err)
      }
    })
  } catch (error) {
    res.statusMessage = error
    res.status(500).json({error:error})
   
  }
})

userRouter.get("/profile/:id", async (req, res) => {
  try {
    
    const queryResult = await query('SELECT * FROM userinfo WHERE id = $1',[req.params.id]);
    console.log(queryResult);
    res.status(200).json(queryResult.rows[0]);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

/*userRouter.post("/profile/new",async(req,res) => {
  bcrypt.hash(req.body.password,10,async (err,hash) => {
    if (!err) {
      try {
        const sql = `insert into userinfo (images) values ($1) returning id`
        const result = await query(sql,[req.body.images,req.body.lastname,req.body.phone,req.body.email,hash])
        res.status(200).json({id: result.rows[0].id, firstname: req.body.firstname, lastname: req.body.lastname, phone: req.body.phone, email: req.body.email,}) 
      } catch (error) {
        res.statusMessage = error
        res.status(500).json({error: error})
      }
    } else {
      res.statusMessage = err
      res.status(500).json({error: err})
    }
  })
})*/

module.exports = {
  userRouter
};
