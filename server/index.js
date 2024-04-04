const express = require('express');
const cors = require('cors');
const { userRouter } = require('./routes/user.js');

const port = 3001;
const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

// Routes
app.use('/user', userRouter);

// Start server
app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}`);
});