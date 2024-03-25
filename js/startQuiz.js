function startQuiz(){
    document.querySelector("div").remove();
    var body = document.querySelector("body");
    var firstDiv = document.createElement("div");
    body.appendChild(firstDiv);
    
    var BACKEND_URL = "http://localhost:3001/";
    var answerArray=[];
    const getQuestions = async() => {
        try{
            const response = await fetch(BACKEND_URL)
            const json = await response.json()
            
            //call questionCard() function for questionArray
            json.forEach((element,index,arr) => {
                firstDiv.appendChild(questionCard(element.question,element.options,index+1));
            });
            //get correct answers to a new array
            answerArray = json.map((element) => element.correct_answer);

            createSubmitButton(firstDiv,answerArray);
           
        }catch (error){
            alert("Error retrieving tasks" + error.message)
        }
    } 
    getQuestions();
}

function createSubmitButton(div, answerArray) {
    // Add submit button
    let submitButton = document.createElement('button');
    submitButton.innerHTML = "Check my score!";
    submitButton.className = "btn btn-primary"; // Add Bootstrap classes
    let buttonDiv = document.createElement('div');
    buttonDiv.className = "text-center"; // Center the button
    buttonDiv.appendChild(submitButton);
    div.appendChild(buttonDiv);

    // Add an eventListener to catch submit
    submitButton.addEventListener("click", function submitClicked() {
        let userAnswerArr = getUserAnswers(answerArray);
        let result = checkScore(answerArray, userAnswerArr);

        // Remove the event listener to prevent multiple submissions
        submitButton.removeEventListener("click", submitClicked);

        // Clear the questions and radio buttons
        div.innerHTML = "";

        // Display the score
        div.appendChild(printScore(result, answerArray));
    });
}

function getUserAnswers(answerArray){
    var usersAnswerArray = [];
    //check users answers and push them to a new array
    for(let j=0; j<answerArray.length; j++){
        let inputName = `Q${j+1}`;
        let answerInput = document.querySelector(`input[name=${inputName}]:checked`);
        let answer;
        if(answerInput){
            answer = answerInput.value;
        }
        else{
            answer = "";
        }
        usersAnswerArray.push(answer);
    }
    return usersAnswerArray
}

function checkScore(answerArr,myAnswerArr){
    var score = 0;
    //check users answers with correct answers and decide the score
    for(let k=0; k<answerArr.length; k++){
        if(answerArr[k] == myAnswerArr[k]){
            score++;
        }
    }
    return score;
}
    
function printScore(score, answerArray) {
    // Create a new div for the score
    let resultDiv = document.createElement('div');
    resultDiv.className = "d-flex flex-column justify-content-center align-items-center vh-100"; 

    // Create a square box with background color
    let scoreBox = document.createElement('div');
    scoreBox.className = "score-box";
    
    // Create "YOUR SCORE IS" text in a div
    let scoreTextDiv = document.createElement('div');
    scoreTextDiv.className = "text-center"; // Center the text horizontally
    scoreTextDiv.innerHTML = "<p>YOUR SCORE IS</p>";
    scoreBox.appendChild(scoreTextDiv);

    // Create score text in a div
    let scoreValueDiv = document.createElement('div');
    scoreValueDiv.className = "text-center"; // Center the text horizontally
    scoreValueDiv.innerHTML = `<h2>${score}/${answerArray.length}</h2>`;
    scoreBox.appendChild(scoreValueDiv);

    // Add the square box to the resultDiv
    resultDiv.appendChild(scoreBox);

    return resultDiv;
}

//create question card
function questionCard(question,options,questionNumber){
    //print question
    let cardDiv = document.createElement('div');
    let kysymys = document.createElement('h3');
    kysymys.innerHTML = question;
    cardDiv.appendChild(kysymys);

    //print 4 options
    let answerDiv = document.createElement('div');
    for(let i=0; i<options.length; i++){
        let radio = document.createElement('input');
        radio.type = "radio";
        radio.id = `option${i+1}`;
        radio.name = `Q${questionNumber}`;
        radio.value = options[i];
        let label = document.createElement('label');
        label.for = `option${i+1}`;
        label.innerHTML = options[i];

        let br = document.createElement('br');

        answerDiv.appendChild(radio);
        answerDiv.appendChild(label);
        answerDiv.appendChild(br);
    }
    
    cardDiv.appendChild(answerDiv);
    return cardDiv;
}