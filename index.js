import express from 'express';
const app = express();

app.use((req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
    next();
});

app.get('/', (req, res) => {
    res.send('API truando')
})

import perfil from './routes/perfil.js'
app.use('/perfil', perfil)

app.listen(3100, () => console.log('Servidor rodando em http://localhost:3100'));