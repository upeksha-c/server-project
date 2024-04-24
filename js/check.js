import { User } from "./class/Userinfo.js";
const user = new User();


const profile = document.querySelector('#profile')
profile.addEventListener('click',function() {
    if(user.id){
        profile.href = '../userprofile.html'
    }
})