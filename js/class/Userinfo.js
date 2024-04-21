//backend url
const BACKEND_URL = 'http://localhost:3001';

class User {
  #id = undefined
  #firstname = undefined
  #lastname = undefined
  #phone = undefined
  #email = undefined

  constructor() {
    const userFromStorage = sessionStorage.getItem('user')
    if (userFromStorage) {
      const userObject = JSON.parse(userFromStorage)
      this.#id = userObject.id
      this.#firstname = userObject.firstname
      this.#lastname = userObject.lastname
      this.#phone = userObject.phone
      this.#email = userObject.email
      
    }
  }

  get id() {
    return this.#id
  }

  get firstname() {
    return this.#firstname
  }

  get lastname() {
    return this.#lastname
  }

  get phone() {
    return this.#phone
  }

  get email() {
    return this.#email
  }

  get isLoggedIn() {
    return this.#id !== undefined ? true : false
  }


 
  async login(email,password) {
    const data = JSON.stringify({email: email, password: password})
    const response = await fetch(BACKEND_URL + '/user/login',{
      method: 'post',
      headers: {'Content-Type':'application/json'},
      body: data
    })
    if (response.ok === true) {
      const json = await response.json()
      console.log(json)
      this.#id = json.id
      this.#email = json.email
      this.#firstname = json.firstname
      this.#lastname = json.lastname
      this.#phone = json.phone
      sessionStorage.setItem('user',JSON.stringify(json))
      return this
    } else {
      throw response.statusText
      }
  }

  //get profile 
  async getProfile() {
    const response = await fetch(BACKEND_URL + '/user/profile?id=' + this.#id)
    if (response.ok === true) {
      const json = await response.json()
      this.#firstname = json.firstname
      this.#lastname = json.lastname
      this.#phone = json.phone
      this.#email = json.email
      return this
    } else {
      throw response.statusText
    }
  }

  async register(firstname, lastname, phone, email,password) {
    const data = JSON.stringify({firstname:firstname, lastname:lastname, phone:phone, email:email, password:password})
    const response = await fetch(BACKEND_URL + '/user/register',{
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

  async fetchUserInfo() {
    const response = await fetch(BACKEND_URL + '/user/profile?id=' + this.#id)
    if (response.ok === true) {
      const json = await response.json()
      this.#firstname = json.firstname
      this.#lastname = json.lastname
      this.#phone = json.phone
      this.#email = json.email
      return this
    } else {
      throw response.statusText
    }
  }


  logout() {
    this.#id = undefined
    this.#firstname = undefined
    this.#lastname = undefined
    this.#phone = undefined
    this.#email = undefined
    sessionStorage.removeItem('user')
  }

 
  }


export { User }
