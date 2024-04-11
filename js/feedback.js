import { Feedback } from "./class/feedbackClass.js";

const feedbackinstance = new Feedback()

// Select all star icons
const stars = document.querySelectorAll('.fa-star');
const submitButton = document.querySelector('.btnFeedback');

// Add click event listener to each star
stars.forEach(function(star) {
  star.addEventListener('click', function() {
    // If the star is empty, fill it
    if (this.classList.contains('far')) {
      this.classList.remove('far');
      this.classList.add('fas');
    } 
    // If the star is filled, empty it
   else if (this.classList.contains('fas')) {
      this.classList.remove('fas');
      this.classList.add('far');
    }
  });
});

console.log(feedbackinstance);
// Select feedback section input
const FullName = document.querySelector('#FullName');
const Email = document.querySelector('#Email');
const feedbackArea = document.querySelector('#feedbackArea');


// Add event listener to the Submit button
document.querySelector('.btnFeedback').addEventListener('click', (event) => {
  event.preventDefault();

  // Retrieve feedback data
  const Fullname = FullName.value;
  const email = Email.value;
  const feedback = feedbackArea.value;
  
  // Attempt to submit
  feedbackinstance.feedbackSection(Fullname, email, feedback).then(user => {
     // If submission is successful, show the submitted alert
     alert("Thank You for submitting Feedback");

     // Clear the input fields
     FullName.value = '';
     Email.value = '';
     feedbackArea.value = '';

   })
   .catch(error => {
     // If submitting fails
     alert(error);
   });
});


// Add click event listener to the submit button
//submitButton.addEventListener('click', function(event){
  // Prevent the form from submitting
  /*event.preventDefault();
  const newDiv = document.createElement('div');
  newDiv.innerHTML = "Thank you for submitting Feedback 😊";*/
  // Append the new div to the form
  //document.querySelector('form').appendChild(newDiv);
//});
 