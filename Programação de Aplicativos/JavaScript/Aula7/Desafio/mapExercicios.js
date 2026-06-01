const users = [
{ id: 1, name: 'Ana', age: 22, salary: 3500, active: true, role: 'dev' },
{ id: 2, name: 'Carlos', age: 29, salary: 7200, active: false, role: 'manager' },
{ id: 3, name: 'Marina', age: 31, salary: 6800, active: true, role: 'designer' },
{ id: 4, name: 'João', age: 19, salary: 2500, active: true, role: 'dev' },
{ id: 5, name: 'Fernanda', age: 27, salary: 4100, active: false, role: 'designer' },
{ id: 6, name: 'Lucas', age: 35, salary: 9500, active: true, role: 'manager' },
{ id: 7, name: 'Beatriz', age: 24, salary: 3900, active: true, role: 'dev' },
{ id: 8, name: 'Rafael', age: 33, salary: 7800, active: true, role: 'data_analyst' },
{ id: 9, name: 'Juliana', age: 26, salary: 5200, active: true, role: 'data_analyst' },
{ id: 10, name: 'Bruno', age: 41, salary: 11000, active: false, role: 'manager' },
{ id: 11, name: 'Camila', age: 30, salary: 6300, active: true, role: 'designer' },
{ id: 12, name: 'Thiago', age: 28, salary: 4700, active: true, role: 'dev' },
{ id: 13, name: 'Patricia', age: 37, salary: 8800, active: true, role: 'data_analyst' },
{ id: 14, name: 'Gustavo', age: 23, salary: 3100, active: false, role: 'dev' },
{ id: 15, name: 'Larissa', age: 34, salary: 7600, active: true, role: 'manager' }
]

const cargo = users.map((arr) =>{
    return {name: arr.name, role: arr.role}
})

const nomes = users.map((arr)=>{
    return {name: arr.name}
})

const nomesMaiusculo = users.map((arr) =>{
    return {nameMaiusculo : arr.name.toUpperCase()}
})

const salario = users.map((arr) =>{
    return {salarioAnual: arr.salary * 12}
})

const nome_age = users.map((arr) =>{
    return {name:arr.name, age:arr.age}
})

const nome_salario = users.map((arr) => {
    return {name: arr.name, salario:'R$' + arr.salary}
})

const classificacao = users.map((arr) => {
    if (arr.age <= 25){
        return {age: arr.age, classificacao: 'Junior'}
    } else if (arr.age <= 30){
        return {age:  arr.age, classificacao: 'Pleno'}
    } else if (arr.age <= 45){
        return {age: arr.age, classificacao: 'Pleno'}
    }
})

const base_salario = users.map((arr) =>{
    if (arr.salary <= 5500){
        return {salary: arr.salary, baseSalario: 'Baixo'}
    } else if (arr.salary <= 8000){
        return {salary: arr.salary, baseSalario: 'Medio'}
    } else if (arr.salary <= 15000){
        return {salary: arr.salary, baseSalario: 'Alto'}
    }
})

const a = users.map((arr) => {
    return {id: arr.id, name: arr.name, active: arr.active}
})

console.log(cargo)
console.log(nomes)
console.log(nomesMaiusculo)
console.log(salario)
console.log(nome_age)
console.log(nome_salario)
console.log(classificacao)
console.log(base_salario)
console.log(a)