import { BACKEND_URL } from "./config.js";
import { User } from "./class/Userinfo.js";

const user = new User();
console.log(user);

document.addEventListener('DOMContentLoaded', async () => {
  const image_div = document.getElementById('profile-image'); 

  
  if (user.isLoggedIn) {
    renderProfileImage(image_div, user);
    displayProfile();
  }

  function displayProfile() {
    const firstNameElement = document.getElementById('firstname');
    const lastNameElement = document.getElementById('lastname');
    const phoneElement = document.getElementById('phone');
    const emailElement = document.getElementById('email');

    firstNameElement.innerHTML = user.firstname;
    lastNameElement.innerHTML = user.lastname;
    phoneElement.innerHTML = user.phone;
    emailElement.innerHTML = user.email;
  }

  console.log(displayProfile);
  function renderProfileImage(image_div, user) {
    const img = document.createElement('img');

    img.setAttribute('class', 'card-img-top profile-image');
    img.setAttribute('alt', 'profile image');
    img.src = `${BACKEND_URL}/images/placeholder_image.png${user.image || ''}`;
   console.log(image_div);
   
    image_div.appendChild(img);
  }
});
