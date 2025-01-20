import Perfil from "./Perfil.js";
import Usuario from "./Usuario.js";
import Carro from "./Carro.js";
import Carona from "./Carona.js";
import Passageiro from "./Passageiro.js";

await Perfil.sync()
await Usuario.sync()
await Carro.sync()
await Carona.sync()
await Passageiro.sync()