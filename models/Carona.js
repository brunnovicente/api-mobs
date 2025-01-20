import banco from '../config/banco.js'
import Carro from "./Carro.js";

const Carona = banco.sequelize.define('caronas', {
    id:{
        type: banco.Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    origem:{
        type: banco.Sequelize.STRING(150),
    },
    destino:{
        type: banco.Sequelize.STRING(150),
    },
    data:{
        type: banco.Sequelize.DATE
    },
    vagas:{
        type: banco.Sequelize.INTEGER,
    },
    status:{
        type: banco.Sequelize.INTEGER,
    }
})

Carona.belongsTo(Carro, {
    foreignKey: 'carro_id',
    constraint: true,
    onDelete: 'CASCADE',
    as: 'carro',
})

export default Carona