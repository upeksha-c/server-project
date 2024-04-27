import { User } from "./class/Userinfo.js";
const user = new User();


const profile = document.querySelector('#profile')

if(!user.id){
    profile.style.display = 'none'
}
