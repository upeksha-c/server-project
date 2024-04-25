// Import the User class from the User module
import { User } from "./class/Userinfo.js";


// Create a new instance of the User class
const user = new User();
console.log(user);

// Select input fields
const first_name_input = document.querySelector('#firstname');
const last_name_input = document.querySelector('#lastname');
const phone_input = document.querySelector('#phone');
const email_input = document.querySelector('#email');
const image_input = document.querySelector('#input-file');
const password_input = document.querySelector('#password');
const confirm_password_input = document.querySelector('#confirm-password');

// Add event listener to the signup button
document.querySelector('#register-button').addEventListener('click', async (event) => {
  event.preventDefault();

  // Retrieve user input
  const firstname = first_name_input.value;
  const lastname = last_name_input.value;
  const phone = phone_input.value;
  const email = email_input.value;
  const image = image_input.value;
  const password = password_input.value;
  const confirmPassword = confirm_password_input.value;
  
  // Check if passwords match
  if (password !== confirmPassword) {
    alert('Passwords do not match');
    return;
  }

  try {
    // Attempt to register the user using the provided credentials
    await user.register(firstname, lastname, phone, email,image, password, confirmPassword);
    
    // If registration is successful, redirect to the login page
    window.location.href = "login.html";
  } catch (error) {
    // If registration fails, display an error message
    alert(error);
  }
});

// Add event listener to the form submission
const form = document.querySelector('form');
form.addEventListener('submit', (e) => {
  e.preventDefault(); // Prevent HTML refresh
  const formData = new FormData(form); 
    
  fetch('http://localhost:3001/register', {
    method: 'POST',
    body: formData,
  })

  const data = Object.fromEntries(formData);
  console.log(data);

  const json = JSON.stringify(data);
  sessionStorage.setItem('form', json);

  console.log(json);

  const retrievedData = localStorage.getItem('data');
  console.log(retrievedData);

  // Redirect to the user profile page
  window.location.href = "userprofile.html";
});
