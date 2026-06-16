const divCampeonatos = document.getElementById("campeonatos")
const divTimes = document.getElementById("times")
const tituloTimes = document.getElementById("titulo-times")

async function carregarCampeonatos() {

    try {

        const resposta =
            await fetch("http://localhost:8080/campeonatos")

        const campeonatos =
            await resposta.json()

        divCampeonatos.innerHTML = ""

        campeonatos.forEach(campeonato => {

            divCampeonatos.innerHTML += `
                <div
                    class="card campeonato"
                    onclick="carregarTimes(${campeonato.id}, '${campeonato.nome}')"
                >
                    <h3>${campeonato.nome}</h3>
                    <p>Clique para visualizar os times</p>
                </div>
            `
        })

    } catch (erro) {

        console.error(erro)

        divCampeonatos.innerHTML =
            "<p>Erro ao carregar campeonatos.</p>"
    }
}

async function carregarTimes(id, nomeCampeonato) {

    try {

        tituloTimes.innerText =
            `Times - ${nomeCampeonato}`

        const resposta =
            await fetch(
                `http://localhost:8080/campeonatos/${id}/times`
            )

        const times =
            await resposta.json()

        divTimes.innerHTML = ""

        if (times.length === 0) {

            divTimes.innerHTML =
                "<p>Nenhum time encontrado.</p>"

            return
        }

        times.forEach(time => {

            divTimes.innerHTML += `
                <div class="card">
                    <h3>${time.nome}</h3>
                </div>
            `
        })

    } catch (erro) {

        console.error(erro)

        divTimes.innerHTML =
            "<p>Erro ao carregar os times.</p>"
    }
}

carregarCampeonatos()