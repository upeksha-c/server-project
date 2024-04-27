import { Score } from "./class/score.js";
import { User } from "./class/Userinfo.js";
const user = new User();
const scoreObj = new Score()

// Function to get URL parameters
const getParameterByName = (name, url = window.location.href) => {
    name = name.replace(/[\[\]]/g, "\\$&");
    const regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)");
    const results = regex.exec(url);
    if (!results) return "0";
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
};

// Get score and totalQuestions from URL
const score = getParameterByName('score');
const totalQuestions = getParameterByName('totalQuestions');
const id_category = getParameterByName('categoryId');

//get id of current logged user
const id_user = user.id 


// Display the score
const scoreContainer = document.getElementById('container1');
//Assign encouragement statement according to score
let encouragement = ""
let image_source = ""
if(score > 9){
  encouragement = "Well done!! Congratulations!"
  image_source = "../photos/congradualation.jpg"//downloaded from Freepik and a link to website (www.freepik.com)
}
else if(score > 5){
  encouragement = "Good jobGood job! Keep up the great work!"
  image_source = "../photos/good_job.jpg"//downloaded from Freepik and a link to website (www.freepik.com)
}
else if(score > 3){
  encouragement = "Nice try! Keep it up!"
  image_source = "../photos/good_job.jpg"//downloaded from Freepik and a link to website (www.freepik.com)
}
else{
  encouragement = "Nice try! Try again!"
  image_source = "../photos/try_again.jpg"//downloaded from Freepik and a link to website (www.freepik.com)
}
console.log(encouragement)
const scoreHTML = `
  <div class="card">
    <div class="card-body">
      <h2 class="card-title">Quiz Result</h2>
      <img src = ${image_source} alt ="" class ='container-fluid'>
      <p class ="greet">${encouragement}</p>
      <p class="card-text">You scored: ${score} / ${totalQuestions}</p>
    </div>  
  </div>
`;
scoreContainer.innerHTML = scoreHTML;

//if user is logged in user score data send to database
if(id_user){
  scoreObj.sendScore(id_user,id_category,score).then(json => {
    console.log(json)
  }).catch(error => {
    alert(error)
  })
}
