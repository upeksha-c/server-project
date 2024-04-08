// Select all star icons
const stars = document.querySelectorAll('.fa-star');
const submitButton = document.querySelectorAll('.btnFeedback');

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

submitButton.addEventListener(click, function(){
    alert("Thank You For Submitting Feedback");
})