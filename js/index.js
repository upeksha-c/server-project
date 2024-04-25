//importing root url
import { BACKEND_URL } from './config.js';
// Import modules
import { User } from "./class/Userinfo.js";
import { Profile } from "./class/Profile.js";

// Constants
const profileDiv = document.querySelector('div#profile');
const logoutButton = document.querySelector('button#logout-button');
const profileIcon = document.querySelector('a#profileIcon');

// Create instances
const user = new User();
const profile = new Profile(BACKEND_URL);

// Functions

// Render user profile information on the UI
const renderUserProfile = (userData) => {
  const profileInfo = document.createElement('div');
  profileInfo.classList.add('profile-info');

  const nameLabel = document.createElement('p');
  nameLabel.textContent = `Name: ${userData.firstname} ${userData.lastname}`;
  profileInfo.appendChild(nameLabel);

  const emailLabel = document.createElement('p');
  emailLabel.textContent = `Email: ${userData.email}`;
  profileInfo.appendChild(emailLabel);

  // You can add more profile information here...

  profileDiv.innerHTML = '';
  profileDiv.appendChild(profileInfo);
};

// Fetch user profile from the backend
const fetchUserProfile = async () => {
  try {
    const userData = await profile.getUserInfo(user);
    renderUserProfile(userData);
  } catch (error) {
    console.error('Error fetching user profile:', error);
    // Handle error - display error message or redirect to login page
  }
};

// Event listeners

// Profile icon click event
  profileIcon.addEventListener('click', async (event) => {
  event.preventDefault();
  
  try {
    await user.getUserInfo(); // Fetch user information
    
    if (user.isLoggedIn) {
      await fetchUserProfile(); // Fetch user profile
      window.location.href = 'userprofile.html'; // Redirect to profile page
    } else {
      window.location.href = 'login.html'; // Redirect to login page if user is not logged in
    }
  } catch (error) {
    console.error('Error fetching user information:', error);
    // Handle error, such as displaying an error message to the user
  }
});

// Logout button click event
logoutButton.addEventListener('click', async (event) => {
  event.preventDefault();
  
  try {
    await user.logout(); // Logout user
    window.location.href = 'login.html'; // Redirect to login page
  } catch (error) {
    console.error('Error logging out user:', error);
    // Handle error, such as displaying an error message to the user
  }
});

