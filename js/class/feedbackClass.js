import { BACKEND_URL } from "../config.js"

class Feedback {
    #id = undefined
    #Full_Name = undefined
    #Email = undefined
    #feedback_text = undefined

    constructor(){

    }

    get id(){
        return this.#id
    }
    get Full_Name() {
        return this.#Full_Name
    }
    get Email() {
        return this.#Email
    }
    get feedback_text() {
        return this.#feedback_text
    }

    async feedbackSection(Full_Name, Email, feedback_text) {
        const data = JSON.stringify({Full_Name:Full_Name, Email:Email, feedback_text:feedback_text})
        const response = await fetch(BACKEND_URL + '/feedback',{
          method: 'post',
          headers: {'Content-Type':'application/json'},
          body: data
        })
        if (response.ok === true) {
          const json = await response.json()
          return json.id
        } else {
          throw response.statusText
        }
      }
    
}

export { Feedback }