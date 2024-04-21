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
console.log(id_category)

// Display the score
const scoreContainer = document.getElementById('container1');
const scoreHTML = `
  <div class="card">
    <div class="card-body">
      <h2 class="card-title">Quiz Result</h2>
      <p class="card-text">You scored: ${score} out of ${totalQuestions}</p>
    </div>  
  </div>
`;
scoreContainer.innerHTML = scoreHTML;
