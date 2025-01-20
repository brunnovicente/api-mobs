import banco from '../config/banco.js'
import Carona from "./Carona.js";
import Perfil from "./Perfil.js";

const Passageiro = banco.sequelize.define('passageiros', {
    id:{
        type: banco.Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    status:{
        type: banco.Sequelize.INTEGER,
    }
})

Passageiro.belongsTo(Carona, {
    foreignKey: 'carona_id',
    constraint: true,
    onDelete: 'CASCADE',
    as: 'carona',
})

Passageiro.belongsTo(Perfil, {
    foreignKey: 'perfil_id',
    constraint: true,
    onDelete: 'CASCADE',
    as: 'perfil',
})

export default Passageiro