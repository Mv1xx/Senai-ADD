class Veiculo{
    #id
    #marca
    #modelo
    #preco
    #disponivel

    constructor(id, marca, modelo, preco){
        this.#id = id
        this.#marca = marca
        this.#modelo = modelo
        this.#preco = preco
        this.#disponivel = true

        if(!marca || marca.lenght < 2 || !modelo || modelo.lenght < 2 || preco <= 0){
            console.log("Ocorreu um erro... tente novamente!")
        }

    }

    getId(){
        return this.#id
    }


    getMarca(){
        return this.#marca
    }

    getModelo(){
        return this.#modelo
    }


        getPreco(){
        return this.#preco
    x}
    
    setPreco(precoNovo){
        if (this.#disponivel == true){
            return this.#preco = precoNovo
        } else{
            return "Não é possível modificar o preço. O veículo esta Indiponível!"
        }
    }


    verifyDisponivel(disponivel){
        return this.#disponivel === true ? true : false
    }

    sales(disponivel){
        if (disponivel == true){
            this.#disponivel = false
        }else{
            console.log("Esse veículo não esta disponível para venda!")
        }
    }

    exibir(){
        return {
            id: this.getId(),
            marca: this.getMarca(),
            modelo: this.getModelo(),
            preco: this.getPreco(),
            disponivel: this.verifyDisponivel()
        }
    }
}

const car1 = new Veiculo(1, "Chevrolet", "Onix", 50000, true)
console.log(car1.exibir());

const car2 = new Veiculo(2, "Fiat", "Jeep", 100000, false)

car2.setPreco(110000)

console.log(car2.exibir())
console.log(car1.sales())