//invoke dependencies and packages
require('dotenv').config();
const cors = require('cors');
const bodyParser = require('body-parser');
const express = require('express');
const connection = require('./services/db');
// const routes = require('./routes/routes');
const PORT = 3000;

//declare an instance of express (starts a new application)
const app = express();

//middleware that parses incoming requests
app.use(cors());
app.use(express.json());
app.use(bodyParser.urlencoded({extended: false}));

//this is the base endpoint
// app.use('/', routes);


//connection to databse
connection.connect((err) => {
    if(err){
        return console.log('Error de conexión: ' + err.message);
    }else{
        console.log('Conexión establecida a base de datos MySQL...');
    }
});

//initialize app
app.listen(PORT, () => {
    console.log(`Servidor en puerto ${PORT}`)
});  


