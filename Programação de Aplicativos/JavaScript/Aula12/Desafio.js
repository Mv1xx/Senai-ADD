class User{
    #id
    #nome
    #email
    #password
    #active

    constructor(id, nome, email, password){
        if(!nome || !email.includes('@') || password.lenght < 6){
            return console.error("Ocorreu um erros. Confira novamente os dados")
        }

        this.#id = id
        this.#nome = nome
        this.#email = email
        this.#password = password
        this.#active = true
    }

    //id
    getId(){
        return this.#id
    }

    //nome
    getNome(){
        return this.#nome
    }

    setNome(nome){
        return !nome ? console.error("Erro ao setar nome") : this.#nome = nome
    }

    //email
    setEmail(email){
        return this.#email = email
    }

    getEmail(){
        return this.#email
    }
    //senha
    getSPassword(){
        return this.#password
    }

    setPassword(password){
        return senha.lenght < 6 ? console.error("Erro ao setar senha!") : this.#password = password
    }

    verifyPassword(password){
        return password == this.#password ? false : true
    }

    //atividade
    changeUserActivity(){
        return this.#active === true ? this.#active = false : this.#active = true
    }

    verifyUserActivity(){
        return this.#active === true ? true : false
    }

    
}

class Client extends User{
    constructor(id, nome, email, password){
        super(id, nome, email, password)
    }

    showData(){
        return {
            id: this.getId(),
            nome: this.getNome(),
            email: this.getEmail(),
            active: this.verifyUserActivity()
        }
    }
}

const c1 = new Client(1, "Diego", "Diego@email.com", "123456")
console.log(c1.showData())