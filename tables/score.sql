CREATE TABLE score (
    id_quiz SERIAL PRIMARY KEY,
    id_user SMALLINT NOT NULL,
    id_category SMALLINT NOT NULL,
    score SMALLINT NOT NULL,
    FOREIGN KEY(id_category)
        REFERENCES categories(id_category)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY(id_user)
        REFERENCES userinfo(id)
        ON DELETE RESTRICT ON UPDATE CASCADE
);