const express = require('express')
const cors = require('cors')
const { questionsRouter } = require('./routes/questions.js')

const port = 3001
const app = express()
app.use(cors())

app.use('/',questionsRouter)

app.listen(port)