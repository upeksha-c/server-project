import { User } from "./class/Userinfo.js";
const user = new User();

//get uer id to a variable
const userId = user.id;

document.addEventListener('DOMContentLoaded', async () => {
    const quizResultsTable = document.getElementById('quizResults');

    try {
            
        if (!userId) {

            //since it's not logged in user table heading hide
            const table = document.querySelector('.table-dark')
            table.style.display = 'none'

            //catch a div element
            const statement = document.querySelector('#table')
            statement.appendChild(requestLogin())
            return
            
        }

        // Fetch quiz results for the logged-in user from the server
        const response = await fetch(`http://localhost:3001/score/${userId}`);
        const quizResults = await response.json();

        // Populate the table with the fetched quiz results
        quizResults.forEach((result, index) => {
            const row = document.createElement('tr');
            row.innerHTML = `
                <td>${index + 1}</td>
                <td>${result.cate_name}</td> <!-- Use category name instead of ID -->
                <td>${result.score}</td>
            `;
            quizResultsTable.appendChild(row);
        });

        // Generate statistics from the quiz results
        const statistics = generateStatistics(quizResults);

        // Render the chart
        renderChart(statistics);
    } catch (error) {
        console.error('Error fetching quiz results:', error);
    }
});


// Function to generate statistics from quiz results
function generateStatistics(quizResults) {
    // Group quiz results by category
    const categoryScores = {};
    quizResults.forEach(result => {
        if (!categoryScores[result.cate_name]) {
            categoryScores[result.cate_name] = [];
        }
        categoryScores[result.cate_name].push(result.score);
    });

    // Calculate average score for each category
    const statistics = [];
    for (const category in categoryScores) {
        const scores = categoryScores[category];
        const averageScore = scores.reduce((sum, score) => sum + score, 0) / scores.length;
        statistics.push({ category, averageScore });
    }

    return statistics;
}

// Function to render a bar chart
function renderChart(statistics) {
    const ctx = document.getElementById('chart').getContext('2d');
    const chart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: statistics.map(stat => stat.category),
            datasets: [{
                label: 'Average Score',
                data: statistics.map(stat => stat.averageScore),
                backgroundColor: 'rgba(54, 162, 235, 0.8)',
                borderColor: 'rgba(54, 162, 235, 3)',
                borderWidth: 1
            }]
        },
        options: {
            responsive: true, // Allow chart to resize
            maintainAspectRatio: false, // Allow chart to adjust aspect ratio
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
}


//function to display thankyou
function requestLogin(){
    //create div
    let div1 = document.createElement("div")
    div1.classList = "jumbotron text-center"
  
    //create heading
    let heading = document.createElement("h3")
    heading.classList = "display-3"
    heading.innerHTML = "Join with us"
    div1.appendChild(heading)
  
    //create description
    let description = document.createElement("p")
    description.classList = "lead"
    description.innerHTML = "Please login to use this feature."
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
    anchor2.href = '../login.html'
    anchor2.role = "button"
    anchor2.innerHTML = 'LOG IN'
    description3.appendChild(anchor2)
    div1.appendChild(description3)
  
    return div1
  }