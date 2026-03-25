const pessoa = require('./data.json')

const pessoas = pessoa.filter((pessoa) => {
    return pessoa.salary == 1234
})

console.log(pessoas)