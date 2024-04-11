const{ Pool } = require('pg') // imports the Pool class from the 'pg' module

const query = (sql,values=[]) => {
    return new Promise(async(resolve,reject)=> {
        try{
            const pool = openDb()
            const result = await pool.query(sql,values)
            resolve(result)
        }catch(error){
            reject(error.message)
        }
    })
}
const openDb = () => {
    const pool = new Pool({
        user : 'postgres',
        host : 'localhost',
        database : 'feedback2',
        password : '2054arch',
        port : 5433
    })
    return pool
}

module.exports = {query}