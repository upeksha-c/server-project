// Make sure the import paths are correct
import { BACKEND_URL } from "./config.js";
import { User } from "./class/Userinfo.js";

document.addEventListener('DOMContentLoaded', async () => {
  const user = new User(); // Instantiate the User class
  
  // Function to render profile image
  function renderProfileImage(image_div, user) {
    const img = document.createElement('img');
    img.setAttribute('class', 'card-img-top profile-image');
    img.setAttribute('alt', 'profile image');
     
    if (user.image_name) {
      img.src = BACKEND_URL + '/images/' + user.image_name;
      console.log(img.src);
    } else {
      img.src = BACKEND_URL + '/images/placeholder_image.png';
    }
    parent_element.appendChild(img);
    
    // Construct the image source URL
    img.src = `${BACKEND_URL}/images/placeholder_image.png${user.image || ''}`;
    
    image_div.appendChild(img);
  }

  // Function to display user profile information
  function displayProfile() {
    const nameElement = document.getElementById('name')
    const phoneElement = document.getElementById('phone');
    const emailElement = document.getElementById('email');

    // Get user full name
    const fullName = user.firstname + ' ' + user.lastname;
   
    // Populate user information into HTML elements
    nameElement.innerHTML = user.fullName;
    phoneElement.innerHTML = user.phone;
    emailElement.innerHTML = user.email;
  }

  // Get the profile image container
  const image_div = document.getElementById('profile-image'); 

  // Check if user is logged in
  if (user.isLoggedIn) {
    // Render profile image
    renderProfileImage(image_div, user);
    // Display user profile information
    displayProfile();
  }
});
