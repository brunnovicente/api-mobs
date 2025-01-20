import banco from '../config/banco.js'
import Perfil from "./Perfil.js";
import Usuario from "./Usuario.js";

const Carro = banco.sequelize.define('carros', {
    id:{
        type: banco.Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    marca:{
        type: banco.Sequelize.STRING(150),
    },
    modelo:{
        type: banco.Sequelize.STRING(150),
    },
    cor:{
        type: banco.Sequelize.STRING(150),
    }
})

Carro.belongsTo(Perfil, {
    foreignKey: 'perfil_id',
    constraint: true,
    onDelete: 'CASCADE',
    as: 'perfil',
})

export default Carro