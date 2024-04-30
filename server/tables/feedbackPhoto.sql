CREATE TABLE feedbackPhoto (
    id_img SERIAL PRIMARY KEY,
    image  VARCHAR(1000) NOT NULL
);
INSERT INTO feedbackPhoto(image)VALUES('photos/boy_avatar.png');
INSERT INTO feedbackPhoto(image)VALUES('photos/girl avatar.png');
INSERT INTO feedbackPhoto(image)VALUES('photos/bb avatar.jpg');