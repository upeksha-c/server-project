import { Feedback } from "./class/feedbackClass.js";
import { User } from "./class/Userinfo.js";
const user = new User();

const feedbackinstance = new Feedback()

//get user email
const userEmail = user.email
//console.log(userEmail)


// Select all star icons
const stars = document.querySelectorAll('.fa-star');

// Add click event listener to each star
stars.forEach(function(star, index) {
  star.addEventListener('click', function() {
    if (star.classList.contains('fas')) {
      // If this star is already filled, empty it and all stars after it
      for (let i = index; i < stars.length; i++) {
        stars[i].classList.remove('fas');
        stars[i].classList.add('far');
      }
    } else {
      // If this star is not filled, fill it and all stars before it
      for (let i = 0; i <= index; i++) {
        stars[i].classList.remove('far');
        stars[i].classList.add('fas');
      }
      // Empty all stars after this one
      for (let i = index + 1; i < stars.length; i++) {
        stars[i].classList.remove('fas');
        stars[i].classList.add('far');
      }
    }
  });
});

console.log(feedbackinstance);
// Select feedback section input
const user_Id = document.querySelector('#user_Id');
const Email = document.querySelector('#Email');
const feedbackArea = document.querySelector('#feedbackArea');
//const rating = document.querySelectorAll('.far fa-star');

// Hide the user id field
user_Id.style.display = 'none';

//get id of user
// Get user id from session storage and set it as the value of the user id field
const userId = sessionStorage.getItem('userId');
user_Id.value = userId;

// Get email from session storage and set it as the value of the user id field
const emailId = sessionStorage.getItem('emailId');
Email.value = emailId;
//console.log(emailId); 

// Add event listener to the Submit button
document.querySelector('.btnFeedback').addEventListener('click', (event) => {
  event.preventDefault();

  // Retrieve feedback data
  const users_Id = user_Id.value;
  const email = Email.value;
  const feedback = feedbackArea.value;

   // Get the star rating
   const filledStars = document.querySelectorAll('.fas.fa-star');
   const Satisfaction_rating = filledStars.length;

  //take only email type dataa
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!emailRegex.test(email)) {
    alert('Please enter a valid email address.');
   
    Email.value = ''; // Clear the email field after showing alert
    return;
  }


  // Attempt to submit
  feedbackinstance.feedbackSection(users_Id, email, feedback, Satisfaction_rating).then(user => {
          
      // If submission is successful, crear the div to show thank you message
    let formdiv = document.querySelector('#form-div')
    formdiv.innerHTML = '';


     // Clear the input fields
     user_Id.value = '';
     Email.value = '';
     feedbackArea.value = '';

      // Make the stars appear empty
      filledStars.forEach(star => {
        star.classList.remove('fas');
        star.classList.add('far');
      });

    //catch the body element
    let body = document.querySelector('body')
    //create new div element for thank you message
    let div = document.createElement('div')
    div.classList= "container"
    body.appendChild(div)
    //call thankyou function and append it
    div.appendChild(thankForContact())

   })
   .catch(error => {
     // If submitting fails
     alert(error);
   });
});


//function to display thankyou
function thankForContact(){
  //create div
  let div1 = document.createElement("div")
  div1.classList = "jumbotron text-center"

  //create heading
  let heading = document.createElement("h1")
  heading.classList = "display-3"
  heading.innerHTML = "Thank You! For your feedback."
  div1.appendChild(heading)

  //create description
  let description = document.createElement("p")
  description.classList = "lead"
  description.innerHTML = "Please check your email for further updates."
  div1.appendChild(description)

  //create rule
  let rule = document.createElement("hr")
  div1.appendChild(rule)

  //trouble statement
  let description2 = document.createElement("p")
  description2.innerHTML = "Having trouble?"
  let anchor = document.createElement('a')
  anchor.href = '../contact.html'
  anchor.innerHTML = 'Contact us'
  description2.appendChild(anchor)
  div1.appendChild(description2)

  //direct to home page
  let description3 = document.createElement("p")
  description3.classList = "lead"
  let anchor2 = document.createElement('a')
  anchor2.classList = 'btn btn-primary btn-lg'
  anchor2.href = '../Front.html'
  anchor2.role = "button"
  anchor2.innerHTML = 'Continue to homepage'
  description3.appendChild(anchor2)
  div1.appendChild(description3)

  return div1
}