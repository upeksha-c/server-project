function startQuiz(){
    document.querySelector("div").remove();
    var body = document.querySelector("body");
    var firstDiv = document.createElement("div");
    body.appendChild(firstDiv);

    var BACKEND_URL = "http://localhost:3001/";
    var answerArray=[];
    var currentElement = 0;
    var score = 0;
    var usersAnswerArray =[];
    const getQuestions = async() => {
        try{
            const response = await fetch(BACKEND_URL)
            const json = await response.json()

            //get correct answers to a new array
            answerArray = json.map((element) => element.correct_answer);

            //create question by calling createQuestion function
            firstDiv.appendChild(createQuestion(currentElement,json));
                

                //create options
                var answersDiv = document.createElement('div')
                for(let i=0; i< json[currentElement].options.length; i++){
                    var btn = document.createElement('button')
                    btn.id = `option${i}`;
                    btn.className = 'option'
                    btn.innerHTML = json[currentElement].options[i];
        
                    btn.addEventListener("click", function(id) {
                        return function() {
                            disableButtons();
                            checkAnswer(id);
                        };
                    }(btn.id));
                    answersDiv.appendChild(btn)
                }
                firstDiv.appendChild(answersDiv);

                //define checkAnswer function
                function checkAnswer(buttonId){
                  
                    let givenbtn = document.getElementById(`${buttonId}`)
                    let resultBox =document.createElement('div')
                    let resultStatement = document.createElement('h3')
                    resultBox.appendChild(resultStatement)
                   
                    if(givenbtn.innerHTML == answerArray[currentElement]){
                        givenbtn.style.backgroundColor = '#00ff00';
                        resultStatement.innerHTML = "CORRECT"
                        score++;
                    }
                    else{
                        resultStatement.innerHTML = "INCORRECT"
                    }
                    usersAnswerArray.push(givenbtn.innerHTML);
                    firstDiv.appendChild(resultBox)
                    firstDiv.appendChild(createNextButton())
                    
                }

                //define createnextbutton function
                function createNextButton(){
                    let nextDiv =document.createElement('div')
                    let next = document.createElement('button')
                    next.innerHTML = "NEXT"
                    nextDiv.appendChild(next) 

                    next.addEventListener("click", function(){
                        firstDiv.innerHTML =""
                        currentElement++;
                        if(currentElement==answerArray.length){
                            firstDiv.appendChild(printScore(score,answerArray,firstDiv))
                        }
                        else{
                            getQuestions()
                        }
                    })
                    return nextDiv
                }

        }catch (error){
            alert("Error retrieving tasks" + error.message)
        }
    } 
    getQuestions();
}

//create question
function createQuestion(currElement,json){
    var questionDiv = document.createElement('div');
    var question = document.createElement('h3');
    question.innerHTML = json[currElement].question;
    questionDiv.appendChild(question);
    return questionDiv
}

//disable buttons
function disableButtons(){
    let allbuttons = document.querySelectorAll(`.option`)
    allbuttons.forEach((element) => {
        element.disabled = true;
        element.style.backgroundColor = '#ff0000';
    })
}

//print score
function printScore(score,answerArray,firstDiv){
    firstDiv.innerHTML =""
    //add new element and write there score details
    let resultDiv = document.createElement('div');
    //firstDiv.appendChild(resultDiv);
    let statement = document.createElement('h3');
    statement.innerHTML = `YOUR SOCRE ${score}/${answerArray.length}`;
    resultDiv.appendChild(statement);
    return resultDiv;
}




