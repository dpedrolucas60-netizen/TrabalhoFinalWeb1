import express from "express"
import pkg from "pg"
import cors from "cors"

const { Pool } = pkg

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'timesdefutebol',
    password: '1234',
    port: 5432,
})

const api = express()

api.use(cors())
api.use(express.json())

api.listen(8080, () => {
    console.log('server rodando')
})


// LISTAR CAMPEONATOS
api.get('/campeonatos', async (req, res) => {
    try {

        const resultado = await pool.query(
            'SELECT * FROM campeonatos ORDER BY nome'
        )

        res.status(200).json(resultado.rows)

    } catch (erro) {

        console.error(erro)

        res.status(500).json({
            mensagem: 'Erro ao buscar campeonatos'
        })
    }
})


api.get('/times', async (req, res) => {
    try {

        const resultado = await pool.query(`
            SELECT
                t.id,
                t.nome AS time,
                c.nome AS campeonato
            FROM times t
            INNER JOIN campeonatos c
                ON t.campeonato_id = c.id
            ORDER BY t.nome
        `)

        res.status(200).json(resultado.rows)

    } catch (erro) {

        console.error(erro)

        res.status(500).json({
            mensagem: 'Erro ao buscar times'
        })
    }
})


api.get('/campeonatos/:id/times', async (req, res) => {

    const { id } = req.params

    try {

        const resultado = await pool.query(`
            SELECT
                id,
                nome
            FROM times
            WHERE campeonato_id = $1
            ORDER BY nome
        `, [id])

        res.status(200).json(resultado.rows)

    } catch (erro) {

        console.error(erro)

        res.status(500).json({
            mensagem: 'Erro ao buscar times do campeonato'
        })
    }
})