CREATE TABLE feedback (
    id_feedback SERIAL PRIMARY KEY,
    id_user SMALLINT NOT NULL,
    feedback_text TEXT,
    satisfaction_rating INT,
    FOREIGN KEY(id_user)
        REFERENCES userinfo(id)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

