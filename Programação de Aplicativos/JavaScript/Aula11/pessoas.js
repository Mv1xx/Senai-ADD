class pessoas{

    constructor(cabelo, olho, nome){
        this.cabelo = cabelo
        this.olho = olho
        this.nome = nome
       

    }

    //métodos
    fala(){
        return `A pessoa de cabelo ${this.cabelo} e olho ${this.olho} esta falando`
    }

    come(){
        return `A pessoa de cabelo ${this.cabelo} e olho ${this.olho} esta comendo`
    }

    anda(lado){
        return `A pessoa de cabelo ${this.cabelo} e olho ${this.olho} esta andando`
    }
}

//atributos
const pessoa1 = new pessoas("Castanho", "Azul", "Fabrício")

console.log(pessoa1.fala())

const pessoa2 = new pessoas("Ruivo", "Verde", "Ana")

console.log(pessoa2.anda())