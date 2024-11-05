document.addEventListener("DOMContentLoaded", () =>{

    let userData = JSON.parse(localStorage.getItem('informacoes'))

    if (userData.perfil === "admin") {

        let html = document.querySelector('#informacoes')

        html.innerHTML = `<div style="display: flex; flex-direction: column; align-items: end">
         nome: ${userData.name} email: ${userData.email} Perfil: ${userData.perfil}
        </div>`

        html.style.display = 'block'

        userData.perfil == 'admin'
        ? document.getElementById('cadastrar_produto').style.display = 'block'
        : document.getElementById('cadastrar_produto').style.display = 'none'
    }
})
