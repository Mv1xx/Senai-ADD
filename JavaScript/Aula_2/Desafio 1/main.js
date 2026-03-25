

function toDoList(){
    //recebe o valor do input e a lista
    let input = document.getElementById('input')
    let texto = input.value
    let lista = document.getElementById('lista')

    //cria tags li e button
    let topico = document.createElement('li')
    let botao = document.createElement('button')

    //add textos e add no html
    topico.innerHTML = texto
    botao.innerHTML = '-'

    //add elementos filhos nos elementos pai
    topico.appendChild(botao)
    lista.appendChild(topico)

    input.value = ' '

    botao.addEventListener ("click", () => {
        botao.parentElement.remove()
    })
}

