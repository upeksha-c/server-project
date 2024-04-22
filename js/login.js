// Import the User class from the Userinfo module
import { User } from "./class/Userinfo.js";

// Create a new instance of the User class
const user = new User();

// Select email and password input fields
const email_input = document.querySelector('#email');
const password_input = document.querySelector('#password');

// Add event listener to the login button
document.querySelector('#login-button').addEventListener('click', async (event) => {
    event.preventDefault();

    // Retrieve email and password from input fields
    const email = email_input.value;
    const password = password_input.value;

    try {
        // Attempt to log in using the provided credentials
        const loggedInUser = await user.login(email, password);
        
        // Store the user ID in session storage upon successful login
        sessionStorage.setItem('userId', loggedInUser.id);

        // If login is successful, display a success message and redirect to the index page
        alert('Login successful');
        window.location.href = "startquiz.html";
    } catch (error) {
        // If login fails, display an error message
        alert(error);
    }
});
