import express from 'express';
import Usuario from "../models/Usuario.js";
const router = express.Router();

router.get('/', (req, res) => {
    Usuario.findAll().then(function (usuarios) {
        res.json(usuarios);
    })
})

export default router;