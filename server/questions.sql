create database quizzify;
use quizzify;

CREATE TABLE questions (
    id_question SERIAL PRIMARY KEY,
    id_category SMALLINT NOT NULL,
    question VARCHAR(560) NOT NULL,
    options TEXT[] NOT NULL,
    correct_answer VARCHAR(560) NOT NULL,
    FOREIGN KEY(id_category)
        REFERENCES categories(id_category)
        ON DELETE RESTRICT ON UPDATE CASCADE
);



INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of a balance sheet?', 1, '{"To report a company''s financial position at a specific point in time", "To record daily transactions of a company", "To summarize a company''s revenues and expenses for a period", "To forecast future financial performance of a company"}', 'To report a company''s financial position at a specific point in time');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the difference between an asset and a liability?', 1, '{"Assets represent what a company owes, while liabilities represent what a company owns", "Assets and liabilities are the same thing","Assets represent what a company owns, while liabilities represent what a company owes", "Assets represent the total revenue of a company, while liabilities represent the total expenses"}', 'Assets represent what a company owns, while liabilities represent what a company owes');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the formula for calculating the current ratio?', 1, '{"Current Ratio = Total Assets / Total Liabilities", "Current Ratio = Current Liabilities / Current Assets", "Current Ratio = Total Liabilities / Total Assets", "Current Ratio = Current Assets / Current Liabilities"}', 'Current Ratio = Current Assets / Current Liabilities');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is depreciation?', 1, '{"Depreciation is the increase in value of an asset over time", "Depreciation is the decrease in value of an asset over time", "Depreciation is the total revenue of a company", "Depreciation is the total expenses of a company"}', 'Depreciation is the decrease in value of an asset over time');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the accounting equation?', 1, '{"Assets = Liabilities + Equity", "Assets = Liabilities - Equity", "Assets = Equity - Liabilities", "Assets = Equity + Liabilities"}', 'Assets = Liabilities + Equity');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of an income statement?', 1, '{"To report a company''s financial position at a specific point in time", "To record daily transactions of a company","To show the revenue and expenses of a company over a period", "To forecast future financial performance of a company"}', 'To show the revenue and expenses of a company over a period');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the difference between gross profit and net profit?', 1, '{"Gross profit is the profit before deducting expenses, while net profit is the profit after deducting all expenses", "Net profit is the profit before deducting expenses, while gross profit is the profit after deducting all expenses", "Gross profit and net profit are the same", "Gross profit is the profit after deducting expenses, while net profit is the profit before deducting all expenses"}', 'Gross profit is the profit before deducting expenses, while net profit is the profit after deducting all expenses');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the formula for calculating return on investment (ROI)?', 1, '{"ROI = (Investment / Net Profit) x 100%", "ROI = (Net Profit / Investment) x 100%", "ROI = (Revenue / Investment) x 100%", "ROI = (Investment / Revenue) x 100%"}', 'ROI = (Net Profit / Investment) x 100%');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the difference between cash flow and profit?', 1, '{"Cash flow refers to the actual movement of cash in and out of a business, while profit is the difference between revenue and expenses", "Cash flow is the difference between revenue and expenses, while profit refers to the actual movement of cash in and out of a business", "Cash flow and profit are the same", "Cash flow refers to the revenue of a business, while profit refers to the expenses"}', 'Cash flow refers to the actual movement of cash in and out of a business, while profit is the difference between revenue and expenses');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of the statement of cash flows?', 1, '{"To report a company''s financial position at a specific point in time", "To summarize a company''s revenues and expenses for a period", "To forecast future financial performance of a company" , "To report the cash inflows and outflows of a company over a period"}', 'To report the cash inflows and outflows of a company over a period');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What are accruals in accounting?', 1, '{"Accruals are revenues or expenses that are recognized after cash is exchanged", "Accruals are only related to assets","Accruals are revenues or expenses that are recognized before cash is exchanged", "Accruals are only related to liabilities"}', 'Accruals are revenues or expenses that are recognized before cash is exchanged');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of the trial balance?', 1, '{"To record daily transactions of a company", "To ensure that debits equal credits in the accounting system", "To summarize a company''s revenues and expenses for a period", "To forecast future financial performance of a company"}', 'To ensure that debits equal credits in the accounting system');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the difference between a debit and a credit?', 1, '{"Debits decrease assets and expenses, while credits increase assets and expenses", "Debits increase assets and expenses, while credits decrease assets and expenses", "Debits and credits have the same effect on assets and expenses", "Debits increase assets and expenses, while credits increase liabilities and revenues"}', 'Debits increase assets and expenses, while credits decrease assets and expenses');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of the retained earnings statement?', 1, '{"To report a company''s financial position at a specific point in time", "To summarize a company''s revenues and expenses for a period","To show how much of a company''s profits have been reinvested into the business", "To forecast future financial performance of a company"}', 'To show how much of a company''s profits have been reinvested into the business');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of a cash flow statement?', 1, '{"To report a company''s financial position at a specific point in time", "To summarize a company''s revenues and expenses for a period", "To forecast future financial performance of a company" , "To show the inflow and outflow of cash in a business"}', 'To show the inflow and outflow of cash in a business');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the difference between accounts receivable and accounts payable?', 1, '{"Accounts receivable represent money owed to a company by its customers, while accounts payable represent money owed by a company to its suppliers", "Accounts receivable represent money owed by a company to its suppliers, while accounts payable represent money owed to a company by its customers", "Accounts receivable and accounts payable are the same", "Accounts receivable represent the revenue of a company, while accounts payable represent the expenses"}', 'Accounts receivable represent money owed to a company by its customers, while accounts payable represent money owed by a company to its suppliers');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of the general ledger?', 1, '{"To report a company''s financial position at a specific point in time", "To summarize a company''s revenues and expenses for a period", "To record all financial transactions of a company in one place","To forecast future financial performance of a company"}', 'To record all financial transactions of a company in one place');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the formula for calculating gross profit margin?', 1, '{"Gross Profit Margin = (Revenue / Gross Profit) x 100%", "Gross Profit Margin = (Gross Profit / Revenue) x 100%", "Gross Profit Margin = (Net Profit / Revenue) x 100%", "Gross Profit Margin = (Revenue / Net Profit) x 100%"}', 'Gross Profit Margin = (Gross Profit / Revenue) x 100%');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the difference between a journal entry and a ledger entry?', 1, '{"A journal entry is the initial record of a transaction, while a ledger entry is the final entry in the accounting records", "A journal entry is the final entry in the accounting records, while a ledger entry is the initial record of a transaction", "A journal entry and a ledger entry are the same", "A journal entry represents revenue, while a ledger entry represents expenses"}', 'A journal entry is the initial record of a transaction, while a ledger entry is the final entry in the accounting records');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of the income summary account?', 1, '{"To report a company''s financial position at a specific point in time", "To record daily transactions of a company", "To forecast future financial performance of a company", "To summarize all revenues and expenses before transferring them to the retained earnings account"}', 'To summarize all revenues and expenses before transferring them to the retained earnings account');






INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is HTML?', 2, '{"Hyper Tool Multi Language","Hypertext Markup Language", "Hypertext Multi Language", "Hyperlink Text Management Language"}', 'Hypertext Markup Language');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What does CSS stand for?', 2, '{"Creative Style Sheets", "Computer Style Sheets", "Cascading Style Sheets", "Coded Style Sheets"}', 'Cascading Style Sheets');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is JavaScript?', 2, '{ "A type of coffee", "A tool for styling web pages", "A database management system", "A programming language that enables interactive web pages"}', 'A programming language that enables interactive web pages');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of Bootstrap?', 2, '{"A front-end framework for developing responsive and mobile-first websites", "A server-side scripting language", "A database management system", "A version control system"}', 'A front-end framework for developing responsive and mobile-first websites');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the difference between margin and padding in CSS?', 2, '{"Margin is used to add space between elements, while padding is used to add space within an element", "Margin is the space outside the border of an element, while padding is the space inside the border of an element", "Margin and padding are the same", "Margin is used for vertical spacing, while padding is used for horizontal spacing"}', 'Margin is the space outside the border of an element, while padding is the space inside the border of an element');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a responsive web design?', 2, '{"A design approach that focuses only on desktop computers", "A design approach that uses heavy images and videos", "A design approach that requires separate websites for different devices", "A design approach that ensures web pages render well on various devices and screen sizes"}', 'A design approach that ensures web pages render well on various devices and screen sizes');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of a media query in CSS?', 2, '{"To apply styles based on the characteristics of the device displaying the web page, such as screen size and orientation", "To embed multimedia content in a web page", "To query a database for user information", "To create animations and transitions"}', 'To apply styles based on the characteristics of the device displaying the web page, such as screen size and orientation');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the role of a web server?', 2, '{"To design and develop websites", "To manage databases", "To deliver web content to clients upon request", "To analyze web traffic"}', 'To deliver web content to clients upon request');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of AJAX in web development?', 2, '{"To style web pages with animations and transitions", "To create interactive forms", "To manage user authentication" ,"To make asynchronous requests to the server without reloading the entire web page"}', 'To make asynchronous requests to the server without reloading the entire web page');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a front-end developer responsible for?', 2, '{"Managing the server and databases", "Creating the user interface and user experience of a website", "Optimizing website performance", "Testing and debugging code"}', 'Creating the user interface and user experience of a website');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a back-end developer responsible for?', 2, '{"Managing server-side logic and databases", "Designing the user interface of a website", "Optimizing website performance", "Testing and debugging code"}', 'Managing server-side logic and databases');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of version control systems like Git?', 2, '{"To design and develop websites", "To manage databases", "To analyze web traffic" , "To track changes to code and collaborate with other developers"}', 'To track changes to code and collaborate with other developers');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the difference between HTTP and HTTPS?', 2, '{"HTTP encrypts data sent between the client and server, while HTTPS does not", "HTTP and HTTPS are the same", "HTTPS is faster than HTTP" , "HTTPS encrypts data sent between the client and server, while HTTP does not"}', 'HTTPS encrypts data sent between the client and server, while HTTP does not');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a CMS in web development?', 2, '{"A Cascading Style Sheets framework", "A Client Management System for managing user accounts", "A Content Management System used to create, manage, and modify digital content", "A Computer Management System for server administration"}', 'A Content Management System used to create, manage, and modify digital content');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of SEO in web development?', 2, '{"To design and develop websites", "To manage databases", "To analyze web traffic" , "To optimize a website for search engines and improve its visibility in search engine results"}', 'To optimize a website for search engines and improve its visibility in search engine results');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the role of a UI/UX designer?', 2, '{"To manage the server and databases", "To optimize website performance", "To design the user interface and user experience of a website or application", "To test and debug code"}', 'To design the user interface and user experience of a website or application');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of cross-browser testing in web development?', 2, '{"To ensure that a website looks and functions correctly across different web browsers", "To optimize website performance", "To manage server-side logic and databases", "To create interactive forms"}', 'To ensure that a website looks and functions correctly across different web browsers');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a RESTful API?', 2, '{"A tool for styling web pages", "An architectural style for designing networked applications, typically using HTTP", "A database management system", "A version control system"}', 'An architectural style for designing networked applications, typically using HTTP');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of client-side scripting languages like JavaScript?', 2, '{"To add interactivity and dynamic behavior to web pages", "To manage server-side logic and databases", "To optimize website performance", "To track web traffic"}', 'To add interactivity and dynamic behavior to web pages');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of a CSS preprocessor?', 2, '{"To extend CSS with variables, mixins, and other features and make it more maintainable and efficient", "To define the structure and layout of a web page", "To handle server-side logic in web development", "To optimize website performance"}', 'To extend CSS with variables, mixins, and other features and make it more maintainable and efficient');



INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is artificial intelligence (AI)?', 3, '{"AI is the study of how to create intelligent agents", "AI is the process of automating tasks using computers", "AI is the development of robots", "AI is the simulation of human intelligence processes by machines, especially computer systems"}', 'AI is the simulation of human intelligence processes by machines, especially computer systems');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is machine learning?', 3, '{"Machine learning is the process of creating intelligent agents", "Machine learning is a subset of AI that enables machines to learn from data and improve over time without being explicitly programmed", "Machine learning is the study of how to simulate human intelligence", "Machine learning is the development of robots"}', 'Machine learning is a subset of AI that enables machines to learn from data and improve over time without being explicitly programmed');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is deep learning?', 3, '{"Deep learning is a type of AI that mimics the workings of the human brain", "Deep learning is the process of training machines to think like humans", "Deep learning is a subset of machine learning that uses artificial neural networks with many layers to model and understand complex patterns in data", "Deep learning is the development of robots"}', 'Deep learning is a subset of machine learning that uses artificial neural networks with many layers to model and understand complex patterns in data');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is natural language processing (NLP)?', 3, '{"NLP is the process of teaching computers to understand programming languages", "NLP is the development of robots that can communicate with humans", "NLP is a type of machine learning algorithm", "NLP is a branch of AI that enables computers to understand, interpret, and generate human language"}', 'NLP is a branch of AI that enables computers to understand, interpret, and generate human language');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What are neural networks?', 3, '{"Neural networks are algorithms used for data analysis", "Neural networks are computing systems inspired by the biological neural networks of animal brains", "Neural networks are computer programs that simulate human decision-making", "Neural networks are software tools for designing AI models"}', 'Neural networks are computing systems inspired by the biological neural networks of animal brains');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is reinforcement learning?', 3, '{"Reinforcement learning is a method for training neural networks", "Reinforcement learning is a type of deep learning algorithm", "Reinforcement learning is a type of machine learning where an agent learns to make decisions by trial and error, receiving feedback in the form of rewards or penalties", "Reinforcement learning is the development of robots"}', 'Reinforcement learning is a type of machine learning where an agent learns to make decisions by trial and error, receiving feedback in the form of rewards or penalties');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is computer vision?', 3, '{"Computer vision is the process of simulating human vision in computers", "Computer vision is a type of neural network", "Computer vision is a field of AI that enables computers to interpret and understand visual information from the real world", "Computer vision is the development of robots"}', 'Computer vision is a field of AI that enables computers to interpret and understand visual information from the real world');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is supervised learning?', 3, '{ "Supervised learning is a type of AI that mimics human decision-making", "Supervised learning is the development of robots", "Supervised learning is a type of machine learning where the model is trained on a labeled dataset, with input-output pairs provided","Supervised learning is a type of deep learning algorithm"}', 'Supervised learning is a type of machine learning where the model is trained on a labeled dataset, with input-output pairs provided');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is unsupervised learning?', 3, '{"Unsupervised learning is a type of machine learning where the model is trained on unlabeled data and learns to find patterns or structure in the data", "Unsupervised learning is a type of deep learning algorithm", "Unsupervised learning is the development of robots", "Unsupervised learning is a type of reinforcement learning"}', 'Unsupervised learning is a type of machine learning where the model is trained on unlabeled data and learns to find patterns or structure in the data');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is transfer learning?', 3, '{"Transfer learning is the process of transferring knowledge from one machine to another", "Transfer learning is a type of reinforcement learning algorithm","Transfer learning is a machine learning technique where a model trained on one task is adapted for use on a different but related task", "Transfer learning is the development of robots"}', 'Transfer learning is a machine learning technique where a model trained on one task is adapted for use on a different but related task');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is generative adversarial networks (GANs)?', 3, '{"GANs are a type of deep learning model that consists of two neural networks, a generator and a discriminator, that compete against each other to generate realistic data", "GANs are a type of reinforcement learning algorithm", "GANs are the development of robots", "GANs are a type of unsupervised learning algorithm"}', 'GANs are a type of deep learning model that consists of two neural networks, a generator and a discriminator, that compete against each other to generate realistic data');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the Turing test?', 3, '{"The Turing test is a test for programming proficiency", "The Turing test is a type of machine learning algorithm", "The Turing test is a method for training neural networks", "The Turing test is a measure of a machine''s ability to exhibit intelligent behavior equivalent to, or indistinguishable from, that of a human"}', 'The Turing test is a measure of a machine''s ability to exhibit intelligent behavior equivalent to, or indistinguishable from, that of a human');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is Explainable AI (XAI)?', 3, '{"Explainable AI (XAI) is a type of unsupervised learning algorithm", "Explainable AI (XAI) is the development of robots","Explainable AI (XAI) is an approach to artificial intelligence that aims to make the decisions and outputs of AI systems understandable and transparent to humans", "Explainable AI (XAI) is a type of reinforcement learning algorithm"}', 'Explainable AI (XAI) is an approach to artificial intelligence that aims to make the decisions and outputs of AI systems understandable and transparent to humans');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the bias-variance tradeoff in machine learning?', 3, '{"The bias-variance tradeoff is the balance between a model''s ability to capture the complexity of the data (variance) and its ability to generalize to new data (bias)", "The bias-variance tradeoff is a type of neural network architecture", "The bias-variance tradeoff is the development of robots", "The bias-variance tradeoff is a type of reinforcement learning algorithm"}', 'The bias-variance tradeoff is the balance between a model''s ability to capture the complexity of the data (variance) and its ability to generalize to new data (bias)');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is feature engineering in machine learning?', 3, '{ "Feature engineering is the development of robots", "Feature engineering is a type of unsupervised learning algorithm","Feature engineering is the process of selecting and transforming variables (features) to improve a model''s performance","Feature engineering is a type of reinforcement learning algorithm"}', 'Feature engineering is the process of selecting and transforming variables (features) to improve a model''s performance');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the curse of dimensionality in machine learning?', 3, '{ "The curse of dimensionality is a type of neural network architecture", "The curse of dimensionality is the development of robots","The curse of dimensionality refers to the challenges and limitations that arise when working with high-dimensional data", "The curse of dimensionality is a type of reinforcement learning algorithm"}', 'The curse of dimensionality refers to the challenges and limitations that arise when working with high-dimensional data');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is model validation in machine learning?', 3, '{ "Model validation is the development of robots","Model validation is the process of evaluating a trained model on unseen data to assess its performance and generalization ability", "Model validation is a type of unsupervised learning algorithm", "Model validation is a type of reinforcement learning algorithm"}', 'Model validation is the process of evaluating a trained model on unseen data to assess its performance and generalization ability');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is overfitting in machine learning?', 3, '{ "Overfitting is a type of neural network architecture","Overfitting occurs when a model learns the training data too well, capturing noise and irrelevant patterns that do not generalize to new data", "Overfitting is the development of robots", "Overfitting is a type of reinforcement learning algorithm"}', 'Overfitting occurs when a model learns the training data too well, capturing noise and irrelevant patterns that do not generalize to new data');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is underfitting in machine learning?', 3, '{"Underfitting is a type of unsupervised learning algorithm", "Underfitting is the development of robots", "Underfitting is a type of reinforcement learning algorithm" , "Underfitting occurs when a model is too simple to capture the underlying patterns in the data, resulting in poor performance on both the training and test datasets"}', 'Underfitting occurs when a model is too simple to capture the underlying patterns in the data, resulting in poor performance on both the training and test datasets');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the difference between strong AI and weak AI?', 3, '{"Strong AI, also known as artificial general intelligence (AGI), refers to AI systems that exhibit human-like intelligence across a wide range of tasks and contexts, while weak AI refers to AI systems that are designed for specific tasks and do not possess general intelligence", "Strong AI is a type of unsupervised learning algorithm, while weak AI is a type of supervised learning algorithm", "Strong AI is the development of robots, while weak AI is the development of software applications", "Strong AI is a type of reinforcement learning algorithm, while weak AI is a type of supervised learning algorithm"}', 'Strong AI, also known as artificial general intelligence (AGI), refers to AI systems that exhibit human-like intelligence across a wide range of tasks and contexts, while weak AI refers to AI systems that are designed for specific tasks and do not possess general intelligence');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the curse of dimensionality in machine learning?', 3, '{ "The curse of dimensionality is a type of neural network architecture", "The curse of dimensionality refers to the challenges and limitations that arise when working with high-dimensional data","The curse of dimensionality is the development of robots", "The curse of dimensionality is a type of reinforcement learning algorithm"}', 'The curse of dimensionality refers to the challenges and limitations that arise when working with high-dimensional data');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is model validation in machine learning?', 3, '{ "Model validation is the development of robots", "Model validation is a type of unsupervised learning algorithm","Model validation is the process of evaluating a trained model on unseen data to assess its performance and generalization ability", "Model validation is a type of reinforcement learning algorithm"}', 'Model validation is the process of evaluating a trained model on unseen data to assess its performance and generalization ability');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is overfitting in machine learning?', 3, '{ "Overfitting is a type of neural network architecture", "Overfitting is the development of robots", "Overfitting is a type of reinforcement learning algorithm" , "Overfitting occurs when a model learns the training data too well, capturing noise and irrelevant patterns that do not generalize to new data"}', 'Overfitting occurs when a model learns the training data too well, capturing noise and irrelevant patterns that do not generalize to new data');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is underfitting in machine learning?', 3, '{"Underfitting is a type of unsupervised learning algorithm", "Underfitting occurs when a model is too simple to capture the underlying patterns in the data, resulting in poor performance on both the training and test datasets", "Underfitting is the development of robots", "Underfitting is a type of reinforcement learning algorithm"}', 'Underfitting occurs when a model is too simple to capture the underlying patterns in the data, resulting in poor performance on both the training and test datasets');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the difference between classification and regression in machine learning?', 3, '{"Classification is a type of machine learning task where the goal is to predict the category or class label of an input, while regression is a type of machine learning task where the goal is to predict a continuous numeric value", "Classification and regression are the same in machine learning", "Classification is the development of robots, while regression is the development of software applications", "Classification is a type of unsupervised learning algorithm, while regression is a type of supervised learning algorithm"}', 'Classification is a type of machine learning task where the goal is to predict the category or class label of an input, while regression is a type of machine learning task where the goal is to predict a continuous numeric value');





INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the primary role of a nurse in patient care?', 4, '{"Completing administrative tasks","Providing direct patient care",  "Assisting with billing and insurance", "Managing hospital operations"}', 'Providing direct patient care');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of a nursing care plan?', 4, '{"To schedule appointments for the patient", "To document insurance information","To outline the individualized care a patient requires", "To track hospital revenue"}', 'To outline the individualized care a patient requires');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the first step in the nursing process?', 4, '{"Diagnosis", "Planning", "Implementation","Assessment"}', 'Assessment');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What does ADL stand for in nursing?', 4, '{"Advanced Diagnostic Labs", "Activities of Daily Living", "Assessment and Documentation Logs", "Administration of Drugs and Medications"}', 'Activities of Daily Living');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of the Braden Scale?', 4, '{"To measure blood pressure", "To evaluate mental health status", "To assess a patient''s risk for pressure ulcers", "To monitor fluid intake"}', 'To assess a patient''s risk for pressure ulcers');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('Which nursing intervention is appropriate for a patient with impaired mobility?', 4, '{ "Administer pain medication", "Provide nutritional counseling","Assist with range of motion exercises", "Perform wound dressing changes"}', 'Assist with range of motion exercises');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of patient education in nursing?', 4, '{"To empower patients to participate in their own care", "To increase hospital revenue", "To document treatment plans", "To manage hospital resources"}', 'To empower patients to participate in their own care');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the primary goal of pain management in nursing?', 4, '{"To increase hospital admissions", "To decrease patient satisfaction", "To reduce hospital costs", "To alleviate suffering and improve quality of life"}', 'To alleviate suffering and improve quality of life');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What does SOAP stand for in nursing documentation?', 4, '{"Subjective, Objective, Assessment, Plan", "Symptoms, Observations, Analysis, Prescription", "Signs, Operations, Appraisal, Protocol", "Summary, Observations, Assessment, Procedure"}', 'Subjective, Objective, Assessment, Plan');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of sterile technique in nursing procedures?', 4, '{"To increase patient discomfort", "To prevent the spread of infection", "To expedite the procedure", "To minimize documentation requirements"}', 'To prevent the spread of infection');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the priority action for a nurse when encountering a patient with difficulty breathing?', 4, '{"Administer pain medication", "Notify the physician", "Assess the patient''s airway, breathing, and circulation", "Document the observation"}', 'Assess the patient''s airway, breathing, and circulation');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of therapeutic communication in nursing?', 4, '{"To bill insurance companies for services", "To manage hospital finances", "To increase hospital revenue", "To establish rapport and trust with patients"}', 'To establish rapport and trust with patients');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the primary responsibility of a nurse when administering medication?', 4, '{"To expedite the process", "To document the medication after administration", "To ensure the right medication is given to the right patient at the right time in the right dose via the right route", "To bill the patient for the medication"}', 'To ensure the right medication is given to the right patient at the right time in the right dose via the right route');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What does RACE stand for in fire safety training for nurses?', 4, '{"Rescue, Assess, Communicate, Evacuate", "Rescue, Alarm, Contain, Extinguish", "Rapid, Action, Control, Extinguish", "Recognize, Alert, Control, Evacuate"}', 'Rescue, Alarm, Contain, Extinguish');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of using restraints in nursing care?', 4, '{"To prevent patients from harming themselves or others", "To punish non-compliant patients", "To expedite procedures", "To increase patient comfort"}', 'To prevent patients from harming themselves or others');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the role of a nurse in preventing pressure ulcers?', 4, '{ "Administering pain medication", "Documenting wound care", "Assisting with physical therapy exercises", "Assessing risk factors and implementing preventive measures"}', 'Assessing risk factors and implementing preventive measures');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of using the Glasgow Coma Scale in nursing assessments?', 4, '{"To assess level of consciousness and neurological function", "To measure blood pressure", "To evaluate respiratory status", "To monitor heart rate"}', 'To assess level of consciousness and neurological function');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What does HIPAA stand for in nursing?', 4, '{"Hospital Infection Prevention and Assessment Act", "Health Insurance Portability and Accountability Act", "Health Information Protection and Authorization Act", "Hospital Incident Protocol and Assessment Act"}', 'Health Insurance Portability and Accountability Act');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the primary role of a nurse in a disaster response situation?', 4, '{"To evacuate the facility", "To document the event", "To notify the media", "To provide immediate medical care and triage patients"}', 'To provide immediate medical care and triage patients');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of obtaining a patient''s informed consent?', 4, '{"To ensure the patient understands and agrees to the proposed treatment or procedure", "To expedite the process", "To document the patient''s signature", "To increase hospital revenue"}', 'To ensure the patient understands and agrees to the proposed treatment or procedure');




INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('Who wrote "Romeo and Juliet"?', 5, '{"Jane Austen", "Charles Dickens", "Leo Tolstoy" , "William Shakespeare"}', 'William Shakespeare');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the title of J.K. Rowling''s first Harry Potter book?', 5, '{"Harry Potter and the Philosopher''s Stone", "Harry Potter and the Chamber of Secrets", "Harry Potter and the Goblet of Fire", "Harry Potter and the Prisoner of Azkaban"}', 'Harry Potter and the Philosopher''s Stone');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('Who painted the Mona Lisa?', 5, '{"Pablo Picasso","Leonardo da Vinci", "Vincent van Gogh", "Michelangelo"}', 'Leonardo da Vinci');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('Which playwright is known for "Hamlet" and "Macbeth"?', 5, '{"Arthur Miller", "George Bernard Shaw", "Tennessee Williams", "William Shakespeare"}', 'William Shakespeare');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('Who wrote "To Kill a Mockingbird"?', 5, '{"Mark Twain", "Harper Lee", "John Steinbeck", "F. Scott Fitzgerald"}', 'Harper Lee');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the name of the Greek epic poem attributed to Homer?', 5, '{"The Odyssey", "The Iliad", "The Aeneid", "The Epic of Gilgamesh"}', 'The Iliad');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('Who is the author of "1984"?', 5, '{ "Ray Bradbury", "J.R.R. Tolkien", "George Orwell", "Aldous Huxley"}', 'George Orwell');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('Which artist is famous for painting "Starry Night"?', 5, '{"Vincent van Gogh", "Pablo Picasso", "Leonardo da Vinci", "Claude Monet"}', 'Vincent van Gogh');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the title of Jane Austen''s novel about Elizabeth Bennet and Mr. Darcy?', 5, '{"Pride and Prejudice", "Sense and Sensibility", "Emma", "Mansfield Park"}', 'Pride and Prejudice');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('Who wrote "The Great Gatsby"?', 5, '{"Ernest Hemingway", "F. Scott Fitzgerald", "John Steinbeck", "Virginia Woolf"}', 'F. Scott Fitzgerald');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the title of the first book in J.R.R. Tolkien''s "The Lord of the Rings" trilogy?', 5, '{"The Two Towers", "The Return of the King","The Fellowship of the Ring", "The Hobbit"}', 'The Fellowship of the Ring');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('Who is the author of "The Catcher in the Rye"?', 5, '{"John Steinbeck","J.D. Salinger",  "F. Scott Fitzgerald", "Ernest Hemingway"}', 'J.D. Salinger');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('Which playwright wrote "A Streetcar Named Desire"?', 5, '{"Arthur Miller", "Samuel Beckett", "Edward Albee" , "Tennessee Williams"}', 'Tennessee Williams');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('Who painted "The Persistence of Memory," featuring melting clocks?', 5, '{"Pablo Picasso", "Vincent van Gogh","Salvador Dalí", "Claude Monet"}', 'Salvador Dalí');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the title of Harper Lee''s sequel to "To Kill a Mockingbird"?', 5, '{"Go Set a Watchman", "Atticus", "Maycomb", "Scout"}', 'Go Set a Watchman');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('Who is the author of "The Picture of Dorian Gray"?', 5, '{"Charles Dickens", "Oscar Wilde", "George Eliot", "Emily Brontë"}', 'Oscar Wilde');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('Which artist painted "The Scream"?', 5, '{"Pablo Picasso", "Vincent van Gogh","Edvard Munch",  "Claude Monet"}', 'Edvard Munch');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the title of the first book in C.S. Lewis''s "Chronicles of Narnia" series?', 5, '{"The Lion, the Witch and the Wardrobe", "Prince Caspian", "The Magician''s Nephew", "The Horse and His Boy"}', 'The Lion, the Witch and the Wardrobe');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('Who wrote "The Adventures of Huckleberry Finn"?', 5, '{"Charles Dickens", "Jane Austen", "Harper Lee", "Mark Twain"}', 'Mark Twain');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the title of William Golding''s novel about a group of boys stranded on an uninhabited island?', 5, '{"Lord of the Flies", "Brave New World", "Animal Farm", "Of Mice and Men"}', 'Lord of the Flies');





INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is ecotourism?', 6, '{"Ecotourism focuses on responsible travel to natural areas that conserve the environment and improve the well-being of local people", "Ecotourism involves traveling to urban areas and exploring cultural heritage", "Ecotourism emphasizes luxury accommodations and high-end travel experiences", "Ecotourism encourages mass tourism and exploitation of natural resources"}', 'Ecotourism focuses on responsible travel to natural areas that conserve the environment and improve the well-being of local people');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What are the components of a tourism product?', 6, '{"Attractions, accommodations, transportation,amenities, and hospitality services", "Attractions, shopping malls, restaurants, and entertainment venues", "Transportation, technology, accommodations, and travel agencies", "Accommodations, fashion, cuisine, and guided tours"}', 'Attractions, accommodations, transportation, amenities, and hospitality services');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is yield management in the tourism industry?', 6, '{"Yield management focuses on reducing operational costs in the tourism sector", "Yield management prioritizes customer satisfaction over profitability", "Yield management refers to the management of natural resources in tourist destinations" , "Yield management involves adjusting prices and availability to maximize revenue from perishable resources"}', 'Yield management involves adjusting prices and availability to maximize revenue from perishable resources');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is destination management?', 6, '{"Destination management focuses solely on transportation logistics for tourists", "Destination management refers to managing individual attractions within a destination","Destination management involves planning, coordinating, and implementing strategies to develop and promote tourist destinations", "Destination management involves managing local communities near tourist destinations"}', 'Destination management involves planning, coordinating, and implementing strategies to develop and promote tourist destinations');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is experiential tourism?', 6, '{"Experiential tourism emphasizes luxury accommodations and high-end travel experiences", "Experiential tourism promotes mass tourism and overcrowding in tourist destinations", "Experiential tourism focuses on creating authentic and immersive experiences for travelers", "Experiential tourism limits travelers to conventional sightseeing activities"}', 'Experiential tourism focuses on creating authentic and immersive experiences for travelers');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is cultural tourism?', 6, '{"Cultural tourism focuses solely on visiting museums and historical sites", "Cultural tourism prioritizes adventure activities in remote locations", "Cultural tourism involves visiting destinations to experience the arts, heritage, and way of life of local communities", "Cultural tourism encourages tourists to avoid interacting with local communities"}', 'Cultural tourism involves visiting destinations to experience the arts, heritage, and way of life of local communities');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the role of a tour operator?', 6, '{"Tour operators design, organize, and sell tour packages to travelers", "Tour operators manage hotels and resorts in tourist destinations", "Tour operators regulate tourist attractions and enforce safety guidelines", "Tour operators provide transportation services for tourists"}', 'Tour operators design, organize, and sell tour packages to travelers');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is sustainable tourism?', 6, '{"Sustainable tourism focuses on maximizing profits without regard for environmental conservation", "Sustainable tourism encourages mass tourism and overdevelopment of tourist destinations", "Sustainable tourism prioritizes luxury accommodations and high-end travel experiences", "Sustainable tourism aims to minimize the negative impacts of tourism on the environment, society, and economy while maximizing benefits for local communities"}', 'Sustainable tourism aims to minimize the negative impacts of tourism on the environment, society, and economy while maximizing benefits for local communities');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the importance of tourism marketing?', 6, '{"Tourism marketing is only relevant for large tourist destinations and not for smaller regions", "Tourism marketing helps attract visitors to destinations, increase tourism revenue, and promote economic growth", "Tourism marketing focuses solely on advertising, neglecting other aspects of tourism development", "Tourism marketing is not necessary as tourists will naturally find destinations"}', 'Tourism marketing helps attract visitors to destinations, increase tourism revenue, and promote economic growth');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the concept of carrying capacity in tourism?', 6, '{"Carrying capacity is the minimum number of tourists required for a destination to remain profitable", "Carrying capacity refers to the maximum number of tourists that a destination can sustainably accommodate without causing negative impacts", "Carrying capacity refers to the number of hotels and resorts in a tourist destination", "Carrying capacity is irrelevant in tourism planning"}', 'Carrying capacity refers to the maximum number of tourists that a destination can sustainably accommodate without causing negative impacts');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is hospitality management?', 6, '{"Hospitality management focuses solely on customer service training", "Hospitality management refers to managing healthcare facilities for tourists", "Hospitality management involves overseeing operations in hotels, restaurants, and other establishments in the hospitality industry", "Hospitality management is irrelevant in the tourism sector"}', 'Hospitality management involves overseeing operations in hotels, restaurants, and other establishments in the hospitality industry');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What are the characteristics of a successful tourist destination?', 6, '{"High prices, exclusivity, limited accessibility, and lack of local involvement", "Overcrowding, lack of infrastructure, and environmental degradation", "Poor customer service and limited tourist activities", "Attractions, accessibility, accommodations, amenities, and effective destination management"}', 'Attractions, accessibility, accommodations, amenities, and effective destination management');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the concept of seasonality in tourism?', 6, '{ "Seasonality refers to the availability of seasonal discounts for tourists", "Seasonality is irrelevant in the tourism industry","Seasonality refers to fluctuations in tourist arrivals based on factors such as weather, holidays, and events", "Seasonality refers to the duration of tourist stays in destinations"}', 'Seasonality refers to fluctuations in tourist arrivals based on factors such as weather, holidays, and events');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the importance of human resource management in the tourism industry?', 6, '{"Human resource management ensures the recruitment, training, and retention of skilled employees to provide quality service to tourists", "Human resource management is irrelevant in the tourism sector", "Human resource management focuses solely on administrative tasks in tourism organizations", "Human resource management is only necessary for large tourism businesses"}', 'Human resource management ensures the recruitment, training, and retention of skilled employees to provide quality service to tourists');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What are the different types of tourist accommodations?', 6, '{"Hotels, motels, resorts, bed and breakfasts, hostels, and vacation rentals", "Restaurants, cafes, bars, entertainment venues, and shopping malls", "Tourist attractions, museums, historical sites, and cultural centers", "Transportation services, airlines, cruise ships, trains, and rental cars"}', 'Hotels, motels, resorts, bed and breakfasts, hostels, and vacation rentals');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the role of a destination marketing organization (DMO)?', 6, '{ "DMOs manage transportation logistics for tourists", "DMOs regulate tourist attractions and enforce safety guidelines","DMOs promote tourist destinations, attract visitors, and enhance the destination''s image", "DMOs provide accommodation services for tourists"}', 'DMOs promote tourist destinations, attract visitors, and enhance the destination''s image');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the difference between inbound and outbound tourism?', 6, '{ "Inbound tourism refers to travel within a country, while outbound tourism refers to travel between countries", "Inbound tourism focuses solely on domestic travel, while outbound tourism focuses on international travel", "Inbound tourism and outbound tourism are the same", "Inbound tourism involves visitors coming into a country from foreign destinations, while outbound tourism involves residents of a country traveling to foreign destinations"}', 'Inbound tourism involves visitors coming into a country from foreign destinations, while outbound tourism involves residents of a country traveling to foreign destinations');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the role of transportation in the tourism industry?', 6, '{ "Transportation is irrelevant in the tourism sector", "Transportation focuses solely on freight and cargo services","Transportation facilitates the movement of tourists to and within destinations, enhancing accessibility and connectivity", "Transportation is limited to air travel only in the tourism industry"}', 'Transportation facilitates the movement of tourists to and within destinations, enhancing accessibility and connectivity');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the importance of customer service in the tourism sector?', 6, '{ "Customer service is irrelevant in the tourism industry", "Customer service focuses solely on generating profits for tourism businesses","Customer service plays a crucial role in enhancing the overall tourist experience and promoting destination loyalty", "Customer service is limited to certain tourist attractions"}', 'Customer service plays a crucial role in enhancing the overall tourist experience and promoting destination loyalty');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the concept of destination branding in tourism?', 6, '{ "Destination branding refers to regulating the number of tourists in a destination", "Destination branding focuses solely on advertising and promotion", "Destination branding is not relevant in tourism marketing", "Destination branding involves creating a unique identity and image for a tourist destination to attract visitors and differentiate it from competitors"}', 'Destination branding involves creating a unique identity and image for a tourist destination to attract visitors and differentiate it from competitors');




INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is cloud computing?', 7, '{"Cloud computing is the physical hardware infrastructure that provides computing services", "Cloud computing is a type of software application","Cloud computing is the delivery of computing services, including servers, storage, databases, networking, software, over the Internet (the cloud)", "Cloud computing is a storage device"}', 'Cloud computing is the delivery of computing services, including servers, storage, databases, networking, software, over the Internet (the cloud)');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What are the three main service models in cloud computing?', 7, '{"Data as a Service (DaaS), Function as a Service (FaaS), Network as a Service (NaaS)", "Infrastructure as a Service (IaaS), Platform as a Service (PaaS), Software as a Service (SaaS)", "Server as a Service (SaaS), Storage as a Service (StaaS), Application as a Service (AaaS)", "Compute as a Service (CaaS), Database as a Service (DBaaS), Virtualization as a Service (VaaS)"}', 'Infrastructure as a Service (IaaS), Platform as a Service (PaaS), Software as a Service (SaaS)');


INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the benefit of elasticity in cloud computing?', 7, '{"Elasticity increases the cost of cloud services", "Elasticity reduces the availability of cloud services", "Elasticity decreases the security of cloud services" , "Elasticity allows resources to be automatically scaled up or down based on demand"}', 'Elasticity allows resources to be automatically scaled up or down based on demand');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the difference between scalability and elasticity in cloud computing?', 7, '{"Scalability and elasticity are the same in cloud computing", "Scalability refers to the availability of cloud services, while elasticity refers to the security of cloud services", "Scalability refers to the security of cloud services, while elasticity refers to the availability of cloud services", "Scalability refers to the ability to increase or decrease resources manually, while elasticity refers to the ability to automatically adjust resources based on demand"}', 'Scalability refers to the ability to increase or decrease resources manually, while elasticity refers to the ability to automatically adjust resources based on demand');


INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a virtual machine (VM) in cloud computing?', 7, '{"A virtual machine is a software emulation of a physical computer that runs an operating system and applications", "A virtual machine is a physical server located in a data center", "A virtual machine is a cloud service provider", "A virtual machine is a storage device"}', 'A virtual machine is a software emulation of a physical computer that runs an operating system and applications');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the role of hypervisor in virtualization?', 7, '{"Hypervisor is a physical server in a data center", "Hypervisor is a cloud computing service", "Hypervisor is a software that enables multiple operating systems to share a single hardware host", "Hypervisor is a storage device"}', 'Hypervisor is a software that enables multiple operating systems to share a single hardware host');


INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is meant by the term "multi-tenancy" in cloud computing?', 7, '{"Multi-tenancy refers to the use of multiple data centers by a single organization", "Multi-tenancy refers to the use of multiple cloud service providers by a single organization", "Multi-tenancy refers to the ability of a single application or instance of software to serve multiple customers or tenants", "Multi-tenancy refers to the use of multiple hypervisors on a single physical server"}', 'Multi-tenancy refers to the ability of a single application or instance of software to serve multiple customers or tenants');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a container in cloud computing?', 7, '{"A container is a physical storage device", "A container is a lightweight, portable, and self-sufficient software package that includes everything needed to run an application", "A container is a type of virtual machine", "A container is a cloud service provider"}', 'A container is a lightweight, portable, and self-sufficient software package that includes everything needed to run an application');


INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is Kubernetes?', 7, '{"Kubernetes is a cloud computing service", "Kubernetes is a type of hypervisor", "Kubernetes is a virtualization technology" , "Kubernetes is an open-source container orchestration platform for automating deployment, scaling, and management of containerized applications"}', 'Kubernetes is an open-source container orchestration platform for automating deployment, scaling, and management of containerized applications');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of a load balancer in cloud computing?', 7, '{"A load balancer is used to store data in a cloud environment","A load balancer distributes incoming network traffic across multiple servers to ensure high availability and reliability of applications",  "A load balancer is a virtual machine", "A load balancer is a software for managing containers"}', 'A load balancer distributes incoming network traffic across multiple servers to ensure high availability and reliability of applications');


INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is Infrastructure as Code (IaC)?', 7, '{ "Infrastructure as Code is a physical server in a data center", "Infrastructure as Code is a cloud computing service", "Infrastructure as Code is a virtual machine" , "Infrastructure as Code is the practice of managing and provisioning computing infrastructure through machine-readable definition files, rather than physical hardware configuration or interactive configuration tools"}', 'Infrastructure as Code is the practice of managing and provisioning computing infrastructure through machine-readable definition files, rather than physical hardware configuration or interactive configuration tools');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a serverless architecture?', 7, '{"Serverless architecture is a cloud computing model where cloud providers manage the infrastructure and automatically allocate resources as needed, allowing developers to focus on writing code without worrying about server management", "Serverless architecture is a physical server in a data center", "Serverless architecture is a virtual machine", "Serverless architecture is a type of hypervisor"}', 'Serverless architecture is a cloud computing model where cloud providers manage the infrastructure and automatically allocate resources as needed, allowing developers to focus on writing code without worrying about server management');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What are the benefits of serverless computing?', 7, '{"Limited scalability, increased operational overhead, fixed pricing model","Scalability, reduced operational overhead, pay-per-use pricing model", "Reduced security, increased operational overhead, pay-per-use pricing model", "Limited scalability, reduced operational overhead, pay-per-use pricing model"}', 'Scalability, reduced operational overhead, pay-per-use pricing model');


INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is auto-scaling in cloud computing?', 7, '{"Auto-scaling is a feature that automatically adjusts the number of compute resources based on traffic load", "Auto-scaling is a cloud computing service", "Auto-scaling is a type of virtual machine", "Auto-scaling is a storage device"}', 'Auto-scaling is a feature that automatically adjusts the number of compute resources based on traffic load');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is serverless computing?', 7, '{"Serverless computing is a physical server in a data center", "Serverless computing is a virtual machine", "Serverless computing is a type of hypervisor" , "Serverless computing is a cloud computing model where cloud providers manage the infrastructure and automatically allocate resources as needed"}', 'Serverless computing is a cloud computing model where cloud providers manage the infrastructure and automatically allocate resources as needed');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What are the advantages of cloud computing over traditional on-premises solutions?', 7, '{"Reduced security, increased downtime, and higher maintenance costs", "Scalability, flexibility, cost-effectiveness, and reduced maintenance", "Higher upfront costs, limited scalability, and slower provisioning","Limited storage, slower performance, and higher resource consumption"}', 'Scalability, flexibility, cost-effectiveness, and reduced maintenance');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a cloud service provider?', 7, '{"A physical server in a data center", "A company that offers cloud computing services to individuals, businesses, and organizations", "A type of virtual machine", "A storage device"}', 'A company that offers cloud computing services to individuals, businesses, and organizations');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the role of DevOps in cloud computing?', 7, '{"DevOps is a culture and practice that emphasizes collaboration and communication between development and operations teams to automate the software delivery process and improve the reliability and scalability of applications in the cloud", "DevOps is a cloud computing service", "DevOps is a type of virtual machine", "DevOps is a storage device"}', 'DevOps is a culture and practice that emphasizes collaboration and communication between development and operations teams to automate the software delivery process and improve the reliability and scalability of applications in the cloud');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a public cloud?', 7, '{"A physical server located in a data center", "A type of virtual machine", "A type of cloud computing where cloud services are provided over the public Internet and shared among multiple users and organizations","A storage device"}', 'A type of cloud computing where cloud services are provided over the public Internet and shared among multiple users and organizations');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a private cloud?', 7, '{"A type of cloud computing where cloud services are provided over a private network and dedicated to a single organization or user", "A physical server located in a data center", "A type of virtual machine", "A storage device"}', 'A type of cloud computing where cloud services are provided over a private network and dedicated to a single organization or user');






INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is market segmentation?', 8, '{"Market segmentation is the process of dividing a market into distinct groups of buyers who have different needs, characteristics, or behaviors", "Market segmentation is the process of selling products to different countries", "Market segmentation is the process of setting prices for products", "Market segmentation is the process of advertising products on social media"}', 'Market segmentation is the process of dividing a market into distinct groups of buyers who have different needs, characteristics, or behaviors');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the marketing mix?', 8, '{"The marketing mix refers to the process of creating brand awareness", "The marketing mix refers to the process of identifying customer needs", "The marketing mix refers to the set of tactical marketing tools that a company uses to achieve its objectives in the target market", "The marketing mix refers to the process of analyzing competitors"}', 'The marketing mix refers to the set of tactical marketing tools that a company uses to achieve its objectives in the target market');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is brand positioning?', 8, '{"Brand positioning refers to the process of creating a logo for a brand", "Brand positioning refers to the process of setting prices for products", "Brand positioning refers to the place a brand occupies in the minds of customers and how it is distinguished from competitors", "Brand positioning refers to the process of advertising products on social media"}', 'Brand positioning refers to the place a brand occupies in the minds of customers and how it is distinguished from competitors');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a SWOT analysis?', 8, '{"SWOT analysis is a tool for tracking sales performance", "SWOT analysis is a tool for setting advertising budgets", "SWOT analysis is a tool for creating marketing messages", "SWOT analysis is a strategic planning tool that identifies the strengths, weaknesses, opportunities, and threats related to a business or project"}', 'SWOT analysis is a strategic planning tool that identifies the strengths, weaknesses, opportunities, and threats related to a business or project');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the difference between marketing and advertising?', 8, '{"Marketing is the broader process of promoting, selling, and distributing a product or service, while advertising is one component of marketing that involves creating and delivering messages to a target audience", "Marketing and advertising are the same", "Marketing focuses on product design, while advertising focuses on sales", "Marketing focuses on pricing, while advertising focuses on distribution"}', 'Marketing is the broader process of promoting, selling, and distributing a product or service, while advertising is one component of marketing that involves creating and delivering messages to a target audience');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a Unique Selling Proposition (USP)?', 8, '{"A Unique Selling Proposition (USP) is a distinctive aspect of a product or service that sets it apart from competitors in the minds of customers", "A Unique Selling Proposition (USP) is a pricing strategy", "A Unique Selling Proposition (USP) is an advertising campaign", "A Unique Selling Proposition (USP) is a distribution channel"}', 'A Unique Selling Proposition (USP) is a distinctive aspect of a product or service that sets it apart from competitors in the minds of customers');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is market positioning?', 8, '{"Market positioning is the process of setting prices for products", "Market positioning is the process of advertising products on social media", "Market positioning is the process of establishing an image or identity for a brand or product in the minds of customers relative to competitors", "Market positioning is the process of managing distribution channels"}', 'Market positioning is the process of establishing an image or identity for a brand or product in the minds of customers relative to competitors');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What are the components of a marketing plan?', 8, '{ "The components of a marketing plan typically include product design, pricing strategy, and distribution channels","The components of a marketing plan typically include an executive summary, situation analysis, marketing strategy, marketing tactics, implementation, and budget", "The components of a marketing plan typically include customer service, employee training, and financial projections", "The components of a marketing plan typically include advertising campaigns, sales promotions, and public relations efforts"}', 'The components of a marketing plan typically include an executive summary, situation analysis, marketing strategy, marketing tactics, implementation, and budget');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a product launch?', 8, '{ "A product launch is an advertising campaign", "A product launch is a distribution channel", "A product launch is the introduction of a new product or service to the market", "A product launch is a pricing strategy"}', 'A product launch is the introduction of a new product or service to the market');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is market research?', 8, '{ "Market research is the process of setting prices for products", "Market research is the process of creating advertising campaigns", "Market research is the process of managing distribution channels" , "Market research is the process of gathering, analyzing, and interpreting information about a market, including potential customers and competitors, to make informed business decisions"}', 'Market research is the process of gathering, analyzing, and interpreting information about a market, including potential customers and competitors, to make informed business decisions');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the difference between marketing and sales?', 8, '{ "Marketing and sales are the same", "Marketing focuses on product design, while sales focuses on advertising", "Marketing focuses on pricing, while sales focuses on distribution", "Marketing is the broader process of promoting, selling, and distributing a product or service, while sales specifically refers to the exchange of goods or services for money or other valuable consideration"}', 'Marketing is the broader process of promoting, selling, and distributing a product or service, while sales specifically refers to the exchange of goods or services for money or other valuable consideration');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a brand?', 8, '{"A brand is a unique name, term, design, symbol, or combination thereof that identifies a seller''s products or services and differentiates them from competitors'' offerings", "A brand is a pricing strategy", "A brand is an advertising campaign", "A brand is a distribution channel"}', 'A brand is a unique name, term, design, symbol, or combination thereof that identifies a seller''s products or services and differentiates them from competitors'' offerings');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is market segmentation?', 8, '{"Market segmentation is the process of setting prices for products", "Market segmentation is the process of creating advertising campaigns","Market segmentation is the process of dividing a market into distinct groups of buyers who have different needs, characteristics, or behaviors", "Market segmentation is the process of managing distribution channels"}', 'Market segmentation is the process of dividing a market into distinct groups of buyers who have different needs, characteristics, or behaviors');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a marketing plan?', 8, '{"A marketing plan is a comprehensive document or blueprint that outlines a company''s advertising and marketing efforts for the coming year", "A marketing plan is a pricing strategy", "A marketing plan is an advertising campaign", "A marketing plan is a distribution channel"}', 'A marketing plan is a comprehensive document or blueprint that outlines a company''s advertising and marketing efforts for the coming year');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a target market?', 8, '{ "A target market is a pricing strategy", "A target market is an advertising campaign","A target market is a specific group of consumers at which a product or service is aimed", "A target market is a distribution channel"}', 'A target market is a specific group of consumers at which a product or service is aimed');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is customer relationship management (CRM)?', 8, '{ "Customer relationship management (CRM) is a pricing strategy", "Customer relationship management (CRM) is an advertising campaign","Customer relationship management (CRM) is a strategy for managing a company''s interactions with current and potential customers", "Customer relationship management (CRM) is a distribution channel"}', 'Customer relationship management (CRM) is a strategy for managing a company''s interactions with current and potential customers');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a SWOT analysis?', 8, '{ "SWOT analysis is a pricing strategy", "SWOT analysis is an advertising campaign", "SWOT analysis is a distribution channel", "SWOT analysis is a strategic planning tool that identifies the strengths, weaknesses, opportunities, and threats related to a business or project"}', 'SWOT analysis is a strategic planning tool that identifies the strengths, weaknesses, opportunities, and threats related to a business or project');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a marketing mix?', 8, '{"The marketing mix refers to the set of tactical marketing tools that a company uses to achieve its objectives in the target market", "The marketing mix refers to a pricing strategy", "The marketing mix refers to an advertising campaign", "The marketing mix refers to a distribution channel"}', 'The marketing mix refers to the set of tactical marketing tools that a company uses to achieve its objectives in the target market');





INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a backend developer responsible for?', 9, '{ "Creating the user interface of a website", "Optimizing website performance", "Testing and debugging frontend code", "Managing server-side logic, databases, and APIs"}', 'Managing server-side logic, databases, and APIs');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What programming languages are commonly used in backend development?', 9, '{"Python, Java, Ruby, PHP", "HTML, CSS, JavaScript", "Swift, Kotlin, Objective-C", "C++, C#, TypeScript"}', 'Python, Java, Ruby, PHP');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a RESTful API?', 9, '{ "A programming language for frontend development", "An architectural style for designing networked applications, typically using HTTP", "A tool for styling web pages", "A version control system"}', 'An architectural style for designing networked applications, typically using HTTP');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of middleware in backend development?', 9, '{"To design the user interface of a website", "To optimize website performance", "To manage databases" , "To handle tasks such as authentication, logging, and error handling between the client and server"}', 'To handle tasks such as authentication, logging, and error handling between the client and server');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the role of a backend framework?', 9, '{ "To manage client-side logic in web development", "To provide tools and libraries for building backend applications more efficiently", "To create the visual design of a website", "To optimize website performance"}', 'To provide tools and libraries for building backend applications more efficiently');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is database normalization?', 9, '{"The process of optimizing database performance", "The process of adding new data to a database","The process of organizing data to minimize redundancy and dependency", "The process of securing a database"}', 'The process of organizing data to minimize redundancy and dependency');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is SQL injection?', 9, '{ "A method for optimizing SQL queries", "A type of database backup", "A technique for securing a database", "A security vulnerability that occurs when an attacker inserts malicious SQL code into a query"}', 'A security vulnerability that occurs when an attacker inserts malicious SQL code into a query');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of an ORM (Object-Relational Mapping) tool?', 9, '{ "To design the user interface of a website", "To optimize website performance", "To manage client-side logic in web development", "To simplify database interactions by abstracting the database structure into objects"}', 'To simplify database interactions by abstracting the database structure into objects');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the role of a web server in backend development?', 9, '{"To manage client-side logic in web development","To handle client requests and serve web pages or other resources", "To create the visual design of a website", "To optimize website performance"}', 'To handle client requests and serve web pages or other resources');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the difference between synchronous and asynchronous programming?', 9, '{"Synchronous programming executes code sequentially, while asynchronous programming allows code to run concurrently", "Synchronous programming executes code concurrently, while asynchronous programming allows code to run sequentially", "Synchronous and asynchronous programming are the same", "Synchronous programming is used for frontend development, while asynchronous programming is used for backend development"}', 'Synchronous programming executes code sequentially, while asynchronous programming allows code to run concurrently');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a microservice architecture?', 9, '{"A programming language for backend development", "A tool for version control", "A method for optimizing website performance", "An architectural style that structures an application as a collection of loosely coupled services"}', 'An architectural style that structures an application as a collection of loosely coupled services');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of caching in backend development?', 9, '{"To create the visual design of a website", "To manage client-side logic in web development","To store frequently accessed data in memory for faster retrieval", "To optimize website performance"}', 'To store frequently accessed data in memory for faster retrieval');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the role of a reverse proxy?', 9, '{"To receive requests from clients and forward them to backend servers", "To manage client-side logic in web development", "To optimize website performance", "To create the visual design of a website"}', 'To receive requests from clients and forward them to backend servers');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is JWT (JSON Web Token) and how is it used in backend development?', 9, '{"A programming language for backend development", "A compact, URL-safe token format used for securely transmitting information between parties","A database management system", "A tool for optimizing website performance"}', 'A compact, URL-safe token format used for securely transmitting information between parties');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of load balancing in backend development?', 9, '{ "To design the user interface of a website", "To manage client-side logic in web development","To distribute incoming network traffic across multiple servers to ensure high availability and reliability", "To optimize website performance"}', 'To distribute incoming network traffic across multiple servers to ensure high availability and reliability');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is a NoSQL database?', 9, '{"A non-relational database that provides a flexible schema design and horizontal scalability", "A relational database management system", "A programming language for backend development", "A tool for version control"}', 'A non-relational database that provides a flexible schema design and horizontal scalability');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the purpose of unit testing in backend development?', 9, '{"To design the user interface of a website", "To optimize website performance", "To test individual units or components of code in isolation to ensure they function correctly", "To manage client-side logic in web development"}', 'To test individual units or components of code in isolation to ensure they function correctly');

INSERT INTO questions(question, id_category, options, correct_answer) 
VALUES ('What is the difference between stateful and stateless communication?', 9, '{"Stateful communication maintains session state between requests, while stateless communication does not", "Stateful communication does not maintain session state between requests, while stateless communication does", "Stateful and stateless communication are the same", "Stateful communication is used for frontend development, while stateless communication is used for backend development"}', 'Stateful communication maintains session state between requests, while stateless communication does not');

