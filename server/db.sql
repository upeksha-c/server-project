create database quizzify;
use quizzify;

CREATE TABLE questions (
    id_question SERIAL PRIMARY KEY,
    category VARCHAR(255) NOT NULL,
    question VARCHAR(255) NOT NULL,
    options TEXT[] NOT NULL,
    correct_answer VARCHAR(255) NOT NULL
);

create table users(
	id_user SMALLINT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(255)NOT NULL,
    lastname VARCHAR(255)NOT NULL,
    age SMALLINT,
    email VARCHAR(255)NOT NULL,
    paasword VARCHAR(100)NOT NULL
)Engine=InnoDB;

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What does ICT stand for?', 'ICT', '{"International Computer Technology", "Internet Connection Terminal", "Information Communication Technology", "Integrated Circuit Technology"}', 'Information Communication Technology');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which device is used to input data into a computer?', 'ICT', '{"Monitor", "Keyboard", "Printer", "Speaker"}', 'Keyboard');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the main function of a mouse?', 'ICT', '{"Displays images", "Plays music", "Inputs data", "Outputs data"}', 'Inputs data');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which of the following is a type of computer?', 'ICT', '{"Table", "Chair", "Desktop", "Bookshelf"}', 'Desktop');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the purpose of a CPU in a computer?', 'ICT', '{"To display images", "To store data", "To process data", "To print documents"}', 'To process data');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What does RAM stand for?', 'ICT', '{"Random Access Memory", "Read-Only Memory", "Remote Access Module", "Redundant Array of Memory"}', 'Random Access Memory');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which type of software allows you to create documents?', 'ICT', '{"Operating System", "Spreadsheet", "Word Processor", "Database"}', 'Word Processor');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the purpose of a browser?', 'ICT', '{"To play games", "To write letters", "To browse the internet", "To make phone calls"}', 'To browse the internet');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which of the following is an example of an input device?', 'ICT', '{"Printer", "Scanner", "Speaker", "Monitor"}', 'Scanner');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What does URL stand for?', 'ICT', '{"Uniform Resource Locator", "Universal Resource Language", "Unified Resource Limitation", "Understandable Request Language"}', 'Uniform Resource Locator');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which key is used to capitalize letters?', 'ICT', '{"Shift", "Tab", "Enter", "Ctrl"}', 'Shift');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is a computer virus?', 'ICT', '{"A type of food", "A type of animal", "A program that can harm a computer", "A game"}', 'A program that can harm a computer');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the function of a firewall?', 'ICT', '{"To keep the computer cool", "To protect against viruses and hackers", "To create documents", "To play music"}', 'To protect against viruses and hackers');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the purpose of a search engine?', 'ICT', '{"To cook food", "To play games", "To browse the internet", "To find information on the web"}', 'To find information on the web');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which of the following is an example of an output device?', 'ICT', '{"Keyboard", "Mouse", "Monitor", "Scanner"}', 'Monitor');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the purpose of an email?', 'ICT', '{"To make phone calls", "To send messages over the internet", "To watch movies", "To listen to music"}', 'To send messages over the internet');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is a website?', 'ICT', '{"A type of animal", "A place where you can play games", "A collection of web pages", "A type of food"}', 'A collection of web pages');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the purpose of a password?', 'ICT', '{"To keep your computer warm", "To protect your personal information", "To make phone calls", "To play games"}', 'To protect your personal information');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the function of a webcam?', 'ICT', '{"To send emails", "To take pictures and record videos", "To listen to music", "To play games"}', 'To take pictures and record videos');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What does the "WWW" in a website URL stand for?', 'ICT', '{"World Wild Web", "World Wide Web", "World Weird Web", "World Wonderful Web"}', 'World Wide Web');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the primary function of management?', 'Management', ARRAY['Planning', 'Organizing', 'Leading', 'Controlling'], 'Planning');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which of the following is not a management function?', 'Management', ARRAY['Decision Making', 'Staffing', 'Marketing', 'Monitoring'], 'Marketing');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What does SWOT analysis stand for in management?', 'Management', ARRAY['Strengths, Weaknesses, Opportunities, Threats', 'Strategies, Weaknesses, Opportunities, Tactics', 'Strengths, Weaknesses, Objectives, Targets', 'Solutions, Weaknesses, Opportunities, Tactics'], 'Strengths, Weaknesses, Opportunities, Threats');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which of the following is a characteristic of effective leadership?', 'Management', ARRAY['Micromanaging', 'Authoritarianism', 'Empowerment', 'Dictatorship'], 'Empowerment');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the purpose of performance appraisal in management?', 'Management', ARRAY['To punish employees for poor performance', 'To identify training needs', 'To assign blame for failures', 'To micromanage employees'], 'To identify training needs');

-- Questions 6-10
INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the difference between leadership and management?', 'Management', ARRAY['Leadership focuses on people, while management focuses on systems and processes', 'Leadership focuses on systems and processes, while management focuses on people', 'Leadership is hierarchical, while management is collaborative', 'Leadership is about micromanagement, while management is about empowerment'], 'Leadership focuses on people, while management focuses on systems and processes');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which of the following is a component of the P-O-L-C framework in management?', 'Management', ARRAY['Promotion', 'Persuasion', 'Procrastination', 'Control'], 'Control');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the purpose of organizational culture?', 'Management', ARRAY['To standardize employee behavior', 'To encourage diversity', 'To create conflict', 'To discourage innovation'], 'To standardize employee behavior');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which management theory emphasizes the importance of employee involvement in decision-making?', 'Management', ARRAY['Classical management theory', 'Scientific management theory', 'Administrative management theory', 'Human relations management theory'], 'Human relations management theory');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is a key characteristic of a matrix organizational structure?', 'Management', ARRAY['Hierarchical', 'Functional departments', 'Project-based teams', 'Centralized decision-making'], 'Project-based teams');

-- Management
INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the purpose of a mission statement in an organization?', 'Management', ARRAY['To provide financial projections', 'To outline the company''s goals and values', 'To assign tasks to employees', 'To measure employee performance'], 'To outline the company''s goals and values');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the key role of human resource management?', 'Management', ARRAY['To maximize profits', 'To develop marketing strategies', 'To manage employee performance', 'To handle financial transactions'], 'To manage employee performance');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is a common method used for employee training and development?', 'Management', ARRAY['Discipline', 'Demotion', 'Promotion', 'Job rotation'], 'Job rotation');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which of the following is an example of extrinsic motivation?', 'Management', ARRAY['Job satisfaction', 'Recognition', 'Salary increase', 'Self-fulfillment'], 'Salary increase');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the purpose of strategic management?', 'Management', ARRAY['To react to changes in the market', 'To achieve organizational goals and objectives', 'To manage day-to-day operations', 'To control employee behavior'], 'To achieve organizational goals and objectives');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the primary purpose of risk management?', 'Management', ARRAY['To avoid all risks', 'To minimize the impact of risks', 'To maximize profits from risks', 'To ignore risks'], 'To minimize the impact of risks');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is a common communication barrier in organizations?', 'Management', ARRAY['Feedback', 'Active listening', 'Clarity', 'Language barriers'], 'Language barriers');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What does SMART stand for in goal setting?', 'Management', ARRAY['Simple, Measurable, Achievable, Realistic, Timely', 'Specific, Measurable, Accurate, Relevant, Time-bound', 'Strategic, Measurable, Analytical, Reliable, Transparent', 'Strong, Motivated, Ambitious, Responsible, Tenacious'], 'Specific, Measurable, Achievable, Realistic, Timely');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the key purpose of supply chain management?', 'Management', ARRAY['To minimize costs', 'To maximize sales', 'To increase competition', 'To decrease efficiency'], 'To minimize costs');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the role of organizational behavior in management?', 'Management', '{"To ignore employee behavior", "To study and understand employee behavior", "To punish employees for behavior", "To micromanage employees"}', 'To study and understand employee behavior');



-- Nursing

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the primary responsibility of a nurse?', 'Nursing', '{"Administering medication", "Assessing patient condition", "Cleaning equipment", "Answering phone calls"}', 'Assessing patient condition');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the purpose of a nursing care plan?', 'Nursing', '{"To outline patient preferences", "To document patient diagnosis", "To guide patient care", "To bill insurance"}', 'To guide patient care');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which organization sets standards for nursing practice in the United States?', 'Nursing', '{"WHO", "CDC", "ANA", "FDA"}', 'ANA');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the role of a Certified Nursing Assistant (CNA)?', 'Nursing', '{"Performing surgery", "Providing direct patient care", "Prescribing medication", "Conducting research"}', 'Providing direct patient care');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the purpose of the nursing process?', 'Nursing', '{"To ensure proper documentation", "To streamline hospital operations", "To provide a framework for patient care", "To maximize profits"}', 'To provide a framework for patient care');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is a common nursing intervention for pain management?', 'Nursing', '{"Therapeutic touch", "Psychological manipulation", "Prescription drugs", "Ignoring the patient"}', 'Therapeutic touch');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which nursing intervention is effective for promoting patient mobility?', 'Nursing', '{"Encouraging bed rest", "Limiting fluid intake", "Ambulation assistance", "Heavy sedation"}', 'Ambulation assistance');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the purpose of a nursing assessment?', 'Nursing', '{"To create a care plan", "To gather patient data", "To bill insurance", "To assign patient rooms"}', 'To gather patient data');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the purpose of therapeutic communication in nursing?', 'Nursing', '{"To entertain patients", "To build trust and rapport", "To increase patient wait times", "To ignore patient concerns"}', 'To build trust and rapport');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which type of nursing documentation focuses on immediate patient needs?', 'Nursing', '{"Progress notes", "Nursing care plan", "Discharge summary", "Admission forms"}', 'Progress notes');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the priority action for a nurse when a patient shows signs of respiratory distress?', 'Nursing', '{"Call the family", "Administer pain medication", "Notify the physician", "Complete paperwork"}', 'Notify the physician');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which nursing intervention is appropriate for preventing pressure ulcers?', 'Nursing', '{"Regular repositioning", "Avoiding hydration", "Keeping linens unchanged", "Administering strong painkillers"}', 'Regular repositioning');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the role of a nurse during a code blue emergency?', 'Nursing', '{"Continue with normal duties", "Assist with resuscitation efforts", "Leave the area", "Complete paperwork"}', 'Assist with resuscitation efforts');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which nursing action promotes infection control in a hospital setting?', 'Nursing', '{"Washing hands regularly", "Using equipment without cleaning", "Ignoring isolation precautions", "Reusing gloves"}', 'Washing hands regularly');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the purpose of the SBAR communication tool in nursing?', 'Nursing', '{"To document medication", "To organize patient rooms", "To facilitate handoffs", "To order supplies"}', 'To facilitate handoffs');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the significance of evidence-based practice in nursing?', 'Nursing', '{"To increase workload", "To provide care based on research", "To ignore patient preferences", "To reduce efficiency"}', 'To provide care based on research');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the primary goal of nursing education?', 'Nursing', '{"To memorize textbooks", "To pass exams", "To provide quality patient care", "To become wealthy"}', 'To provide quality patient care');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which nursing action is appropriate when caring for a patient with a communicable disease?', 'Nursing', '{"Avoid using protective equipment", "Limit handwashing", "Isolate the patient", "Share utensils"}', 'Isolate the patient');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the purpose of a nursing handoff report?', 'Nursing', '{"To document medication errors", "To provide patient history", "To discourage communication", "To increase errors"}', 'To provide patient history');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which nursing action demonstrates cultural competence?', 'Nursing', '{"Ignoring patient beliefs", "Respecting patient preferences", "Refusing interpreter services", "Promoting stereotypes"}', 'Respecting patient preferences');


-- Physics

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the SI unit of electric current?', 'Physics', '{"Watt", "Volt", "Ohm", "Ampere"}', 'Ampere');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the SI unit of force?', 'Physics', '{"Joule", "Newton", "Watt", "Volt"}', 'Newton');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the SI unit of energy?', 'Physics', '{"Newton", "Watt", "Joule", "Ohm"}', 'Joule');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which scientist formulated the laws of motion?', 'Physics', '{"Albert Einstein", "Isaac Newton", "Galileo Galilei", "Nikola Tesla"}', 'Isaac Newton');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the formula for acceleration?', 'Physics', '{"a = (vf - vi) / t", "a = (vf + vi) * t", "a = (vf / vi) * t", "a = vf / (vi * t)"}', 'a = (vf - vi) / t');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the SI unit of frequency?', 'Physics', '{"Hertz", "Watt", "Joule", "Newton"}', 'Hertz');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the law of conservation of energy?', 'Physics', '{"Energy can neither be created nor destroyed, only transformed or transferred from one form to another", "Energy increases with time", "Energy decreases with time", "Energy remains constant in a closed system"}', 'Energy can neither be created nor destroyed, only transformed or transferred from one form to another');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the formula for kinetic energy?', 'Physics', '{"KE = 1/2 * mv^2", "KE = mgh", "KE = Fd", "KE = W/t"}', 'KE = 1/2 * mv^2');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the SI unit of pressure?', 'Physics', '{"Pascal", "Newton", "Watt", "Joule"}', 'Pascal');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the force exerted per unit area called?', 'Physics', '{"Volume", "Density", "Pressure", "Weight"}', 'Pressure');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the law of universal gravitation?', 'Physics', '{"Every particle in the universe attracts every other particle with a force directly proportional to the product of their masses and inversely proportional to the square of the distance between their centers", "Gravity increases with altitude", "Gravity decreases with altitude", "Gravity remains constant at all altitudes"}', 'Every particle in the universe attracts every other particle with a force directly proportional to the product of their masses and inversely proportional to the square of the distance between their centers');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the formula for gravitational force?', 'Physics', '{"F = G * (m1 * m2) / r^2", "F = G * (m1 / m2) / r^2", "F = G * (m1 * m2) / r", "F = G * (m1 / m2) / r"}', 'F = G * (m1 * m2) / r^2');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the SI unit of power?', 'Physics', '{"Pascal", "Watt", "Joule", "Newton"}', 'Watt');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the formula for work done?', 'Physics', '{"W = Fd cosθ", "W = Fd sinθ", "W = F / d", "W = F + d"}', 'W = Fd cosθ');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the law of reflection?', 'Physics', '{"The angle of incidence is equal to the angle of reflection", "The angle of incidence is greater than the angle of reflection", "The angle of incidence is less than the angle of reflection", "The angle of reflection is 90 degrees"}', 'The angle of incidence is equal to the angle of reflection');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the formula for Ohm''s Law?', 'Physics', '{"V = IR", "V = I/R", "V = R/I", "V = I + R"}', 'V = IR');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the SI unit of electric charge?', 'Physics', '{"Ampere", "Volt", "Ohm", "Coulomb"}', 'Coulomb');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the law of inertia?', 'Physics', '{"An object at rest stays at rest and an object in motion stays in motion with the same speed and in the same direction unless acted upon by an unbalanced force", "An object at rest will start moving on its own", "An object in motion will come to rest on its own", "An object at rest will come into motion on its own"}', 'An object at rest stays at rest and an object in motion stays in motion with the same speed and in the same direction unless acted upon by an unbalanced force');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the formula for density?', 'Physics', '{"ρ = m/V", "ρ = V/m", "ρ = m + V", "ρ = m - V"}', 'ρ = m/V');


-- Chemestry

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the chemical symbol for gold?', 'Chemistry', '{"Au", "Ag", "G", "Gl"}', 'Au');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the atomic number of carbon?', 'Chemistry', '{"6", "12", "14", "22"}', '6');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the chemical formula for water?', 'Chemistry', '{"H2O", "CO2", "NH3", "CH4"}', 'H2O');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which gas makes up the majority of the Earth''s atmosphere?', 'Chemistry', '{"Nitrogen", "Oxygen", "Carbon dioxide", "Argon"}', 'Nitrogen');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the pH value of a neutral substance?', 'Chemistry', '{"7", "0", "14", "1"}', '7');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which element is essential for human respiration?', 'Chemistry', '{"Oxygen", "Carbon", "Nitrogen", "Hydrogen"}', 'Oxygen');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What type of bond involves the sharing of electrons between atoms?', 'Chemistry', '{"Covalent bond", "Ionic bond", "Hydrogen bond", "Metallic bond"}', 'Covalent bond');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the chemical symbol for iron?', 'Chemistry', '{"Fe", "Ir", "In", "I"}', 'Fe');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which gas has the chemical formula CO2?', 'Chemistry', '{"Carbon dioxide", "Carbon monoxide", "Oxygen", "Nitrogen"}', 'Carbon dioxide');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the process of converting a solid directly to a gas called?', 'Chemistry', '{"Sublimation", "Evaporation", "Condensation", "Melting"}', 'Sublimation');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the SI unit of measurement for amount of substance?', 'Chemistry', '{"Mole", "Gram", "Liter", "Newton"}', 'Mole');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which element has the atomic number 1?', 'Chemistry', '{"Hydrogen", "Oxygen", "Carbon", "Nitrogen"}', 'Hydrogen');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the chemical symbol for sodium?', 'Chemistry', '{"Na", "So", "Sn", "S"}', 'Na');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the chemical formula for table salt?', 'Chemistry', '{"NaCl", "HCl", "KCl", "H2SO4"}', 'NaCl');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the process of a liquid turning into a gas called?', 'Chemistry', '{"Evaporation", "Sublimation", "Condensation", "Freezing"}', 'Evaporation');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the chemical symbol for potassium?', 'Chemistry', '{"K", "P", "Ka", "Po"}', 'K');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the most abundant element in the universe?', 'Chemistry', '{"Hydrogen", "Oxygen", "Carbon", "Helium"}', 'Hydrogen');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the chemical formula for ammonia?', 'Chemistry', '{"NH3", "H2O", "CO2", "CH4"}', 'NH3');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('What is the process of a gas turning into a liquid called?', 'Chemistry', '{"Condensation", "Evaporation", "Sublimation", "Deposition"}', 'Condensation');

INSERT INTO questions(question, category, options, correct_answer) 
VALUES ('Which element is present in all organic compounds?', 'Chemistry', '{"Carbon", "Oxygen", "Hydrogen", "Nitrogen"}', 'Carbon');


