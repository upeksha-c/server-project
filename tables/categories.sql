CREATE TABLE categories (
    id_category SERIAL PRIMARY KEY,
    cate_name VARCHAR(255) NOT NULL,
    cate_description TEXT NOT NULL,
    cate_img VARCHAR(1000) NOT NULL
);
INSERT INTO categories(cate_name,cate_description,cate_img)VALUES('Accounting','From the fundamental principles of accounting to advanced financial analysis techniques, our quizzes cover a wide range of topics to suit learners of all levels.','photos/accounting.webp');

INSERT INTO categories(cate_name,cate_description,cate_img)VALUES('Web Development','Explore a variety of topics, including HTML, CSS, JavaScript, frameworks, and more, as you navigate through our carefully crafted quizzes. From basic syntax to advanced techniques, our questions cover the spectrum of web development, providing something for developers at every stage of their journey.','photos/web developer.avif');

INSERT INTO categories(cate_name,cate_description,cate_img)VALUES('AI Development','Embark on a journey through the realms of machine learning, neural networks, natural language processing, and more, as you tackle our thoughtfully curated quizzes. From foundational principles to advanced algorithms, our questions cover a diverse array of topics to cater to learners of all backgrounds and interests.','photos/img_148719_replicability.jpg');

INSERT INTO categories(cate_name,cate_description,cate_img)VALUES('Nursing','Explore a wide range of topics, including anatomy and physiology, pharmacology, patient care, nursing ethics, and more, as you navigate through our carefully crafted quizzes. From fundamental principles to advanced clinical scenarios, our questions are designed to challenge and inspire learners at every stage of their nursing journey.','photos/nursing.jpg');

INSERT INTO categories(cate_name,cate_description,cate_img)VALUES('Arts and Literature','Explore a diverse array of topics, from iconic literary works and famous artists to artistic movements and literary genres, as you navigate through our engaging quizzes. From classic literature to modern masterpieces, and from Renaissance art to contemporary creations, our questions are designed to inspire curiosity and spark imagination.','photos/Arts and Literature.jpg');

INSERT INTO categories(cate_name,cate_description,cate_img)VALUES('Tourism and management','Are you ready to explore the exciting and dynamic world of tourism and management? Whether you''re an aspiring professional in the hospitality industry, a seasoned tourism expert, or simply someone with a passion for travel and hospitality, our quizzes offer an engaging opportunity to test your knowledge and expertise in this vibrant field.','photos/Tourism and management.jpg');

INSERT INTO categories(cate_name,cate_description,cate_img)VALUES('Cloud engineering','Journey through the realms of cloud computing, infrastructure as code, containerization, and more as you tackle our thoughtfully curated quizzes. From fundamental concepts to advanced cloud-native architectures, our questions cover a diverse array of topics to challenge and inspire learners at every level.','photos/IT.jpg');

INSERT INTO categories(cate_name,cate_description,cate_img)VALUES('Marketing','Our quizzes offer an engaging opportunity to test your knowledge and explore key concepts in marketing.From traditional marketing principles to the latest trends in social media and content marketing, our questions cover a diverse array of topics to challenge and inspire learners at every stage of their marketing journey.','photos/marketing.jpg');

INSERT INTO categories(cate_name,cate_description,cate_img)VALUES('Backend Developer','Embark on a journey through the realms of server-side programming, databases, APIs, and more as you tackle our thoughtfully curated quizzes. From fundamental principles to advanced techniques in backend architecture and optimization, our questions cover a diverse array of topics to challenge and inspire learners at every level.','photos/Backend Developer.jpg');
