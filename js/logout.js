import { User } from "./class/Userinfo.js"

const user = new User()
const login_link = document.querySelector('button#login-button')

user.logout()

login_link.innerHTML = "Submit"
login_link.href ="login.html"
login-button