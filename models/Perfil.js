import banco from '../config/banco.js'

const Perfil= banco.sequelize.define('perfis', {
    id:{
        type: banco.Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    nome:{
        type: banco.Sequelize.STRING(150),
    },
    endereco:{
        type: banco.Sequelize.STRING(150),
    },
    cidade:{
        type: banco.Sequelize.STRING(150),
    },
    bairro: {
        type: banco.Sequelize.STRING(150),
    },
    telefone:{
        type: banco.Sequelize.STRING(20),
    },
    email: {
        type: banco.Sequelize.STRING(150),
    }
})

export default Perfil