class automovel{
    modelo 
    marca
    cor 
    ano
    motor

    constructor(modelo, marca, cor, ano, motor){
        this.modelo = modelo
        this.marca = marca
        this.cor = cor
        this.ano = ano
        this.motor = motor

    }

    //métodos
    acelerar(){
        return `O veiculo ${this.modelo} ${this.marca} esta acelerando`
    }

    freiar(){
        return `O veiculo ${this.modelo} ${this.marca} esta freiando`
    }

    esterçar(lado){
        return `O veiculo ${this.modelo} ${this.marca} esta para ${this.lado}`
    }
}

//atributos
const veiculo1 = new automovel("Ford", "Fiesta", "Branco", 2015, "1.5L", )

console.log(veiculo1.acelerar())

const veiculo2 = new automovel("Astra", "Chevrolet", "Preto", 1999, "2.0L")

console.log(veiculo2.acelerar())

//herança
//acesso aos metodos e atributos da classe automóvel
class carro extends automovel{
    abrirPorta(){
        return "Abrindo as portas"
    }
}

class moto extends automovel{
    grau(){
        return "Dando grau"
    }
}

const carro1 = new carro("Kwid", "Renaut", "amarelo", 2018, "1.0L")
const moto1 = new moto("S1000R", "BMW", "Azul", 2015, "1.0L")

console.log(carro1.abrirPorta())
console.log(moto1.grau())
