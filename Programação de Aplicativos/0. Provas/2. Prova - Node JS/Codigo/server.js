import express from 'express';
import Routes from './src/routes/routes.js'
import cors from 'cors'

const port = 8000
const app = express()
// app.listen(port)

app.use(cors({
    origin: '*'
}))

app.get('/', (req, res) => {
    res.send("A api esta funcionando")
})

Routes(app)

app.listen(port, () => {
    console.log(`Server rodando em http://localhost:${port}`)
})

