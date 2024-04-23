import { BACKEND_URL } from "../config.js"

class Contact{
    #id_inquiry = undefined
    #first_name = undefined
    #last_name = undefined
    #email = undefined
    #company = undefined
    #country = undefined
    #phone = undefined
    #message = undefined


    constructor(){

    }

    get id_inquiry(){
        return this.#id_inquiry
    }

    get first_name(){
        return this.#first_name
    }

    get last_name(){
        return this.#last_name
    }

    get email(){
        return this.#email
    }

    get company(){
        return this.#company
    }

    get country(){
        return this.#country
    }

    get phone(){
        return this.#phone
    }

    get message(){
        return this.#message
    }


    async formSubmit(first_name,last_name,email,company,country,phone,message){
        const data = JSON.stringify({first_name:first_name,last_name:last_name,email:email,company:company,country:country,phone:phone,message:message})
        const response = await fetch(BACKEND_URL+'/contactUs',{
            method: 'post',
            headers: {'Content-Type':'application/json'},
            body: data
        })
        if(response.ok === true){
            alert('Submitted')
        }
        else{
            throw response.statusText
        }
    }
}

export { Contact }