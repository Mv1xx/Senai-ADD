import express from 'express'
import { atualizarUsuario, cadastrarUsuario, deletarUsuario, listarUsuario, listarUsuarioSetor } from '../controllers/userController.js'

const router = express.Router()

router.post('/cadastrar', cadastrarUsuario)
router.get('/listar', listarUsuario)
router.delete('/deletar/:id', deletarUsuario)
router.put('/atualizar', atualizarUsuario)
router.get('/listar/:setor', listarUsuarioSetor)

export default router