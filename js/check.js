import { User } from "./class/Userinfo.js";
const user = new User();


const profile = document.querySelector('#profile')
console.log(profile)

if(!user.id){
    profile.style.display = 'none'
    table.style.display = 'none'

}
