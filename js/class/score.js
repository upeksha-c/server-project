import { BACKEND_URL } from "../config.js"

class Score{
    #idQuiz = undefined
    #userId = undefined
    #cateId = undefined
    #score = undefined


    constructor(){

    }

    get idQuiz(){
        return this.#idQuiz
    }

    get userId(){
        return this.#userId
    }

    get cateId(){
        return this.#cateId
    }

    get score(){
        return this.#score
    }


    async sendScore(id_user,id_category,score){
        const data = JSON.stringify({id_user:id_user,id_category:id_category,score:score})
        const response = await fetch(BACKEND_URL+'/score',{
            method: 'post',
            headers: {'Content-Type':'application/json'},
            body: data
        })
        if(response.ok === true){
            
        }
        else{
            throw response.statusText
        }
    }
}

export { Score }