// Import the User class from the User module
import { User } from "./class/Userinfo.js";

// Create a new instance of the User class
const user = new User();
console.log(user);
// Select email and password input fields
const first_name_input = document.querySelector('#firstname');
const last_name_input = document.querySelector('#lastname');
const phone_input = document.querySelector('#phone');
const email_input = document.querySelector('#email');
const password_input = document.querySelector('#password');

// Add event listener to the signup button
document.querySelector('#register-button').addEventListener('click', (event) => {
  event.preventDefault();

  // Retrieve email and password from input fields
  const firstname = first_name_input.value;
  const lastname = last_name_input.value;
  const phone = phone_input.value;
  const email = email_input.value;
  const password = password_input.value;
  


  // Attempt to register the user using the provided credentials
  user.register(firstname, lastname, phone, email, password).then(user => {
      // If registration is successful, redirect to the login page
      window.location.href = "login.html";
    })
    .catch(error => {
      // If registration fails, display an error message
      alert(error);
    });
});
 