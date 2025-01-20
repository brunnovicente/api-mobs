import banco from '../config/banco.js'
import Perfil from './Perfil.js'

const Usuario = banco.sequelize.define('usuarios', {
    id:{
        type: banco.Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    login:{
        type: banco.Sequelize.STRING(250),
    },
    senha:{
        type: banco.Sequelize.STRING(250),
    },
    status:{
        type: banco.Sequelize.INTEGER,
    },
    categoria: {
        type: banco.Sequelize.INTEGER,
    }
})

Usuario.belongsTo(Perfil, {
    foreignKey: 'perfil_id',
    constraint: true,
    onDelete: 'CASCADE',
    as: 'perfil',
})

export default Usuario