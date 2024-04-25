const express = require('express');
const cors = require('cors');
const multer = require('multer');

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
app.use(express.urlencoded({ 
    extended: false, 
    limit: '10000mb',
    parameterLimit: 2,
}));
 

// Static files 
app.use(express.static('public'))

// Routes
app.use('/user', userRouter);
app.use('/',questionsRouter)
app.use('/',fbRouter)
app.use('/',carouselRouter)
app.use('/',scoreRouter)
app.use('/',contactUsRouter)

// Default route
app.get('/', (req, res) => {
    res.send('Welcome to Quizzify!');
});

const upload = multer({ dest: 'files/' }) 
app.post('/upload', upload.any(), function (req, res) {
    console.log(req.body);
    console.log(req.input_file);
    res.send('success');
  
});  
   


// Start server
app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}`);
});