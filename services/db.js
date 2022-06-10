require('dotenv').config();
const databaseURL = process.env.DB_URI;
const mysql = require('mysql');

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "bln1.618",
    database: "doctors_and_patients",
})


// connection.connect((err) => {
//     if(err){
//         return console.log('Error de conexión: ' + err.message);
//     }else{
//         console.log('Conexión establecida a base de datos MySQL.');
//     }
// });

module.exports = connection;