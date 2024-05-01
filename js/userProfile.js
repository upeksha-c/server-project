// Make sure the import paths are correct
import { BACKEND_URL } from "./config.js";
import { User } from "./class/Userinfo.js";

document.addEventListener('DOMContentLoaded', async () => {
  const user = new User(); // Instantiate the User class
  
  // Function to render profile image
  function renderProfileImage(user) {
    const img = document.querySelector('#profile-image');     
    if (user.image_name) {
      img.src = BACKEND_URL + '/images/' + user.image_name;
      console.log(img.src);
    } else {
      img.src = BACKEND_URL + '/images/placeholder_image.jpg';
    }
    
  }

  // Function to display user profile information
  function displayProfile() {
    //get elements to variables
    const fnameElement = document.querySelector('#fname')
    const lnameElement = document.querySelector('#lname');
    const emailElement = document.querySelector('#email');    
    const phoneElement = document.querySelector('#phone');    

   
    // Populate user information into HTML elements
    fnameElement.value = user.firstname;    
    lnameElement.value = user.lastname;
    emailElement.value = user.email;
    phoneElement.value = user.phone;

  }

  // Get the profile image container
  const image_div = document.getElementById('profile-image');

console.log(image_div);
  // Check if user is logged in
  if (user.isLoggedIn) {
    // Render profile image
    renderProfileImage(user);
    // Display user profile information
    displayProfile();
  }
});
