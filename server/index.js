const express = require('express');
const cors = require('cors');
const multer = require('multer');
const bcrypt = require('bcrypt');
const fileUpload = require('express-fileupload');

// Import routes
const { userRouter } = require('./routes/user.js');
const { questionsRouter } = require('./routes/questions.js');
const { fbRouter } = require('./routes/feedbacks.js')
const { carouselRouter } = require('./routes/carousel.js');
const { scoreRouter} = require('./routes/score.js');
const { contactUsRouter} = require('./routes/contactUs.js')

const port = 3001;
const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use(fileUpload());
// Static files 
app.use(express.static('public'))
// Routes
app.use('/user', userRouter);
app.use('/',questionsRouter)
app.use('/',fbRouter)
app.use('/',carouselRouter)
app.use('/',scoreRouter)
app.use('/',contactUsRouter)
/*app.use(express.urlencoded({ 
    extended: false, 
    limit: '10000mb',
    parameterLimit: 2,
}));
 





// Default route
app.get('/', (req, res) => {
    res.send('Welcome to Quizzify!');
});

const storage = multer.diskStorage({
    destination: function (req, file, callback) {
        console.log(files)
      callback(null, 'files/')
    },
    filename: function (req, input_file, callback) {
        console.log(input-file.originalname)
      callback(null, input-file.originalname)
    }
  
})

const upload = multer({ 
    storage: storage,
    limits: { fileSize: 1000000000 },
 }) 


app.post('/user/register', upload.single('input-file'), async (req, res) => {
    try {
      // Extract user registration data from req.body
      const { firstname, lastname, phone, email, password } = req.body;
  
      // Extract file/image data from req.file
      const image_name = req.file.filename; // Assuming the file input name is 'input-file'
  
      // Hash the password
      const hashedPassword = await bcrypt.hash(password, 10);
  
      // Insert user data into the database
      const sql = "INSERT INTO userinfo (firstname, lastname, phone, email, image_name, password) VALUES ($1, $2, $3, $4, $5, $6) RETURNING id";
      const result = await query(sql, [firstname, lastname, phone, email, image_name, hashedPassword]);
  
      // Send success response
      res.status(200).json({ id: result.rows[0].id });
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: 'Internal server error' });
    }
  });*/

// Start server
app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}`);
});