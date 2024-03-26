//crete comments for all the functions

// This function is called when the user clicks on the "Start Quiz" button
function startQuiz() {
    document.querySelector("div").remove();
    const body = document.querySelector("body");
    const firstDiv = document.createElement("div");
    body.appendChild(firstDiv);

    const BACKEND_URL = "http://localhost:3001/";
    let answerArray = [];
    let currentElement = 0;
    let score = 0;
    let usersAnswerArray = [];

    // This function fetches the questions from the backend and displays the first question
    const getQuestionsFromBackend = async (url) => {
        try {
            const response = await fetch(url);
            const json = await response.json();
            answerArray = json.map((element) => element.correct_answer);
            displayQuestion(json[currentElement]);
        } catch (error) {
            alert("Error retrieving questions: " + error.message);
        }
    };

    // This function displays the question and options on the screen
    const displayQuestion = (questionData) => {
        firstDiv.innerHTML = ""; // Clear previous content
        const questionDiv = createQuestionElement(questionData);
        const optionsDiv = createOptions(questionData.options);
        firstDiv.appendChild(questionDiv);
        firstDiv.appendChild(optionsDiv);
    };

    // This function creates the question element   
    const createQuestionElement = (questionData) => {
        const questionDiv = document.createElement("div");
        questionDiv.className = "questionDiv";
        const question = document.createElement("h3");
        question.innerHTML = questionData.question;
        questionDiv.appendChild(question);
        return questionDiv;
    };

    // This function creates the options element
    const createOptions = (options) => {
        const answersDiv = document.createElement("div");
        options.forEach((option) => {
            const optionButton = createOptionButton(option);
            answersDiv.appendChild(optionButton);
        });
        return answersDiv;
    };

    // This function creates the option button
    const createOptionButton = (option) => {
        const btn = document.createElement("button");
        btn.className = "option";
        btn.innerHTML = option;
        btn.addEventListener("click", function() {
            disableButtons();
            checkAnswerAndUpdateUI(option);
        });
        return btn;
    };

    // This function disables all the buttons after the user selects an option
    const disableButtons = () => {
        const allButtons = document.querySelectorAll(".option");
        allButtons.forEach((button) => {
            button.disabled = true;
        });
    };

    // This function checks the user's answer and updates the UI
    const checkAnswerAndUpdateUI = (selectedAnswer) => {
        const correctAnswer = answerArray[currentElement];
        const resultBox = document.createElement('div');
        const resultStatement = document.createElement('h3');
        resultBox.className = "resultPrompt";
        resultBox.appendChild(resultStatement);

        if (selectedAnswer === correctAnswer) {
            resultStatement.innerHTML = "CORRECT";
            resultStatement.style.color = "#28a745"; // Green color for correct
            score++;
        } else {
            resultStatement.innerHTML = "INCORRECT";
            resultStatement.style.color = "#dc3545"; // Red color for incorrect
        }
        usersAnswerArray.push(selectedAnswer);
        firstDiv.appendChild(resultBox);

        const optionButtons = document.querySelectorAll('.option');
        optionButtons.forEach((button) => {
            if (button.innerHTML === correctAnswer) {
                button.classList.add('correctAnswer');
            } else {
                button.classList.add('incorrectAnswer');
            }
            button.disabled = true;
        });

        firstDiv.appendChild(createNextButtonElement());
    };

    // This function creates the next button
    const createNextButtonElement = () => {
        const nextDiv = document.createElement('div');
        const nextButton = document.createElement('button');
        nextButton.className = "btn btn-primary nextButton";
        nextButton.innerHTML = "NEXT";
        nextButton.addEventListener("click", function() {
            currentElement++;
            if (currentElement === answerArray.length) {
                displayScoreBox(score, answerArray.length);
            } else {
                getQuestionsFromBackend(BACKEND_URL);
            }
        });
        nextDiv.appendChild(nextButton);
        return nextDiv;
    };

    // This function displays the score box
    const displayScoreBox = (score, totalQuestions) => {
        firstDiv.innerHTML = ""; 
        const scoreBox = createScoreBox(score, totalQuestions);
        firstDiv.appendChild(scoreBox);
    };

    // This function creates the score box
    const createScoreBox = (score, totalQuestions) => {
        const scoreBox = document.createElement('div');
        scoreBox.className = "scoreBox";
        const scoreText = document.createElement('h3');
        scoreText.innerHTML = `YOUR SCORE: ${score}/${totalQuestions}`;
        scoreBox.appendChild(scoreText);
        return scoreBox;
    };

    // Start the quiz
    getQuestionsFromBackend(BACKEND_URL);
}
