import express from 'express';
const app = express();

app.get('/', (req, res) => {
    res.send('API truando')
})

import perfil from './routes/perfil.js'
app.use('/perfil', perfil)

app.listen(3100, () => console.log('Servidor rodando em http://localhost:3100'));