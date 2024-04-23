import { BACKEND_URL } from "../config.js"

class Feedback {
    #id = undefined
    #user_Id = undefined
    #Email = undefined
    #feedback_text = undefined
    #Satisfaction_rating = undefined

    constructor(){

    }

    get id(){
      return this.#id
    }
    get user_id() {
      return this.#user_Id
    }
    get Email() {
      return this.#Email
    }
    get feedback_text() {
      return this.#feedback_text
    }
    get Satisfaction_rating(){
      return this.#Satisfaction_rating

    }

    async feedbackSection(user_Id, Email, feedback_text, Satisfaction_rating) {
        //console.log("User_id: " + user_Id);
        //console.log("Email: " + Email);
        const data = JSON.stringify({user_id:user_Id, email:Email, feedback_text:feedback_text, satisfaction_rating:Satisfaction_rating})
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