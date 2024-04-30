import { BACKEND_URL } from "../config.js"

class Contact{
    #id_inquiry = undefined
    #full_name = undefined
    #email = undefined
    #phone = undefined
    #subject = undefined
    #message = undefined


    constructor(){

    }

    get id_inquiry(){
        return this.#id_inquiry
    }

    get full_name(){
        return this.#full_name
    }

    get email(){
        return this.#email
    }

    get phone(){
        return this.#phone
    }

    get subject(){
        return this.#subject
    }

    get message(){
        return this.#message
    }


    async formSubmit(full_name,email,phone,subject,message){
        const data = JSON.stringify({full_name:full_name, email:email, phone:phone, subject:subject,message:message})
        const response = await fetch(BACKEND_URL+'/contactUs',{
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

export { Contact }