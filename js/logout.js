import { User } from "./class/Userinfo.js"

const user = new User()
//catch logout button from profile dropdown
const login_link = document.querySelector('a#logout-button')


//set eventlistener, when click on button it give logout option
login_link.addEventListener('click',() => user.logout())