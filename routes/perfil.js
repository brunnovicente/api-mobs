import express from 'express';
import Perfil from "../models/Perfil.js";
const router = express.Router();

router.get('/', (req, res) => {
    Perfil.findAll().then(function (perfis) {
        res.json(perfis);
    })
})

export default router;