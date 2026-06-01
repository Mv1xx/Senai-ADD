function somar(){
    let numero1 = Number(document.getElementById('n1').value)
    let numero2 = Number(document.querySelector('#n2').value)

    let resposta = document.querySelector('#resposta')

    //console.log(numero1 + numero2)
    let somar = numero1 + numero2
    resposta.innerHTML = somar 
}

function alterarImagem(){
    let imagem = document.getElementById('imagem')
    imagem.setAttribute('src' , 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.mCn3MZ7Y0u4-DRBQbPrOeQHaEK%3Fpid%3DApi&f=1&ipt=50c3602bf9cded1aec4293345e5639157731df8f11972ce4917117fec2ca7401&ipo=images')
}