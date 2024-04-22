import { User } from "./class/Userinfo.js";
const user = new User();

//get uer id to a variable
const userId = user.id;

document.addEventListener('DOMContentLoaded', async () => {
    const quizResultsTable = document.getElementById('quizResults');

    try {
            
        if (!userId) {
            console.error('User ID not found in sessionStorage');
            return;
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
