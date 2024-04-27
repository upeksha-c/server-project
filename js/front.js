import { User } from "./class/Userinfo.js";
const user = new User();

//get uer id to a variable
let userId = user.id;

//when user logged in we want to clear log in button and sign in button
if(userId){
    //hide all 3 buttons
    let btnDiv = document.querySelector("#access_btn")
    btnDiv.style.display = "none"

    //attach new button
    let featureDiv = document.querySelector('.feature-box')
    let newBtn = document.createElement('button')
    newBtn.classList = 'btn1'
    featureDiv.appendChild(newBtn) 

    let anchor = document.createElement('a')
    anchor.href = '../startQuiz.html'
    anchor.innerHTML = 'JOIN QUIZ HERE'
    newBtn.appendChild(anchor)
}

// Get the slide track element
const slideTrack = document.querySelector('.slide-track');

// Clone the slide elements
const slides = slideTrack.querySelectorAll('.slide');
const slidesClone = Array.from(slides).map(slide => slide.cloneNode(true));

// Append cloned slides to the slide track
slidesClone.forEach(slide => {
    slideTrack.appendChild(slide);
});
