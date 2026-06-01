import mysql from 'mysql2'
import dotenv from 'dotenv'

dotenv.config()
let connection
export default connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "senai_add",
    port: 3306
})