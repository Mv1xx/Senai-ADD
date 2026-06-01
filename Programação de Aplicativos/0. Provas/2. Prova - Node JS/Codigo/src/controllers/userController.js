import connection from "../../db.js"

export const cadastrarUsuario = (req, res) => {
    const user = req.body

    try{
        
        connection.query('INSERT INTO user (user.name, user.email, user.password) values (?, ?, ?)', [], (err, results) => {
            if(err){
                return res.status(500).send({ response: "Ocorreu algum erro"})
            }
        })
        res.status(201).send({ response: "Usuário cadastrado com sucesso! "})
    }catch{
        return res.status(200).send({ response: "ocorreu algum erro..."})
    }

}

export const listarUsuario = (req, res) => {
    const user = connection.query('SELECT * FROM user', (err,results) => {
        if(err) {
            return res.status(500).send({ response: "Ocorreu algum erro!"})
        }
        return res.status(200).send(results)
    })
}

export const deletarUsuario = (req, res) => {
    let idUser = req.params
    idUser = parseInt(idUser['id'])

    if(idUser <= isNaN(idUser)){
        return res.status(400).send({error: "ID inválido!"})
    }

    connection.query(`DELETE FROM user WHERE id = ?`, [idUser], (err, results) => {
        if(err) {
            return res.status(500).send({ error: "Erro com o servidor interno!"})
        }
        return res.status(200).send({ sucess: "Usuario deletado com sucesso!"})
    })
}

export const atualizarUsuario = (req, res) => {
    const user = req.body
    try {
        connection.query('UPDATE user set user.name = ?, user.email = ?, user.password = ?', [user.name, user.email, user.password], (err, results) => {
            if(err) {
                return res.status(500).send({ response: "Ocorreu algum erro!"})
            }
        })
        return res.status(201).send({ response: "Usuário atualizado com sucesso!"})
    }catch{
        return res.status(500).send({ response: "Ocorreu um erro!"})
    }
}

export const listarUsuarioSetor = (req, res) => {
    let setorUser = req.params
    setorUser = parseInt(setorUser['setor'])

    if(isNaN(setorUser)){
        return res.status(400).send({error: "Setor inválido!"})
    }

    connection.query(`SELECT * FROM user WHERE setor = ?`, [setorUser], (err, results) => {
        if(err){
            return res.status(500).send({ response: "Ocorreu um erro!"})
        }
        return res.status(500).send(results)
    })
}


