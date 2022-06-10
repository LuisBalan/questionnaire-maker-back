const { response } = require('express');
const express = require('express');
const router = express.Router();
const connection = require('../services/db');

router.get("/", (req, res) => {
    res.json({mensaje: "Hola cuestionario!"});
});


router.get("/cuestionarios", (req, res) => {
    connection.query("SELECT * FROM Cuestionarios", 
    (error, results) => {
        if(error){
            throw error;
        }else{
            res.status(200).json(results);
        }
    })
});












module.exports = router;