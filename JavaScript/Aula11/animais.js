class animais{

    constructor(pata, cor){
        this.pata = pata
        this.cor = cor
       

    }

    //métodos
    caça(){
        return `O animal de ${this.pata} patas e de cor ${this.cor} esta caçando`
    }

    respira(){
        return `O animal de ${this.pata} patas e de cor ${this.cor} esta respirando`
    }

}

//atributos
const animal1 = new animais(4, "rosa")

console.log(animal1.caça())

const animal2 = new animais(2, "laranja")

console.log(animal2.respira())