class produtos{

    constructor(embalagem, fabricado){
        this.embalagem = embalagem
        this.fabricado = fabricado
       

    }

    //métodos
    (){
        return `O produto de embalagem de${this.pata} fabricado em ${this.cor} esta caçando`
    }

    respira(){
        return `O animal de ${this.pata} patas e de cor ${this.cor} esta respirando`
    }

}

//atributos
const produto1 = new produtos("plastico", "14-03-2025")

console.log(produto1.())

const produto2 = new produtos("papel", "01-12-2025")

console.log(produto2.respira())