create database quizzify;
use quizzify;

CREATE TABLE questions (
    id_question SERIAL PRIMARY KEY,
    category VARCHAR(255) NOT NULL,
    question VARCHAR(255) NOT NULL,
    options TEXT[] NOT NULL,
    correct_answer VARCHAR(255) NOT NULL
);


INSERT INTO questions(question, category, options, correct_answer) VALUES ('What does ICT stand for?','ICT','{'International Computer Technology', 'Internet Connection Terminal', 'Information Communication Technology', 'Integrated Circuit Technology'}', 'Information Communication Technology');
INSERT INTO questions(question, category, options, correct_answer) VALUES ('Which device is used to input data into a computer?', 'ICT','{'Monitor', 'Keyboard', 'Printer', 'Speaker'}', 'Keyboard');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('What is the main function of a mouse?', 'ICT','{'Displays images', 'Plays music', 'Inputs data', 'Outputs data'}', 'Inputs data');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('Which of the following is a type of computer?', 'ICT','{'Table', 'Chair', 'Desktop', 'Bookshelf'}', 'Desktop');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('What is the purpose of a CPU in a computer?', 'ICT','{'To display images', 'To store data', 'To process data', 'To print documents'}', 'To process data');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('What does RAM stand for?', 'ICT','{'Random Access Memory', 'Read-Only Memory', 'Remote Access Module', 'Redundant Array of Memory'}', 'Random Access Memory');
INSERT INTO questions(question, category, options, correct_answer)VALUES('Which type of software allows you to create documents?', 'ICT','{'Operating System', 'Spreadsheet', 'Word Processor', 'Database'}', 'Word Processor');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('What is the purpose of a browser?', 'ICT','{'To play games', 'To write letters', 'To browse the internet', 'To make phone calls'}', 'To browse the internet');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('Which of the following is an example of an input device?', 'ICT','{'Printer', 'Scanner', 'Speaker', 'Monitor'}', 'Scanner');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('What does URL stand for?', 'ICT','{'Uniform Resource Locator', 'Universal Resource Language', 'Unified Resource Limitation', 'Understandable Request Language'}', 'Uniform Resource Locator');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('Which key is used to capitalize letters?', 'ICT','{'Shift', 'Tab', 'Enter', 'Ctrl'}', 'Shift');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('What is a computer virus?', 'ICT','{'A type of food', 'A type of animal', 'A program that can harm a computer', 'A game'}', 'A program that can harm a computer');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('What is the function of a firewall?', 'ICT','{'To keep the computer cool', 'To protect against viruses and hackers', 'To create documents', 'To play music'}', 'To protect against viruses and hackers');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('What is the purpose of a search engine?', 'ICT','{'To cook food', 'To play games', 'To browse the internet', 'To find information on the web'}', 'To find information on the web');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('Which of the following is an example of an output device?', 'ICT','{'Keyboard', 'Mouse', 'Monitor', 'Scanner'}', 'Monitor');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('What is the purpose of an email?', 'ICT','{'To make phone calls', 'To send messages over the internet', 'To watch movies', 'To listen to music'}', 'To send messages over the internet');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('What is a website?', 'ICT','{'A type of animal', 'A place where you can play games', 'A collection of web pages', 'A type of food'}', 'A collection of web pages');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('What is the purpose of a password?', 'ICT','{'To keep your computer warm', 'To protect your personal information', 'To make phone calls', 'To play games'}', 'To protect your personal information');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('What is the function of a webcam?', 'ICT','{'To send emails', 'To take pictures and record videos', 'To listen to music', 'To play games'}', 'To take pictures and record videos');
INSERT INTO questions(question, category, options, correct_answer)VALUES ('What does the "WWW" in a website URL stand for?', 'ICT','{'World Wild Web', 'World Wide Web', 'World Weird Web', 'World Wonderful Web'}', 'World Wide Web');
