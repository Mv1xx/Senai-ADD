let square = document.getElementById('q1')
let input = document.getElementById('color')

function alternarCor(e){
    let color = e.target.value
    square.style.backgroundColor = color
}
//pra nn add onclick dentro do elemento uau
input.addEventListener('input', alternarCor)